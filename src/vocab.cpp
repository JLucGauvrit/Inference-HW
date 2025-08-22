#include "vocab.hpp"

#include <iostream>
#include <sstream>

const int UNK_ID = 0;  

namespace inference_fpga {

  // ResizeVocab resizes the vocab to the given size.
  void ResizeVocab(Vocab& vocab, int vocab_size) {
    vocab.dict.resize(vocab_size);
  }

  // LoadVocab loads the vocab from the given file.
  void LoadVocab(Vocab& vocab, std::ifstream& fs) {
  for (size_t i = 0; i < vocab.dict.size(); i++) {
    int len;
    vocab.dict[i].clear();
    fs.read(reinterpret_cast<char*>(&len), sizeof(int));
    for (int j = 0; j < len; ++j) {
      char c;
      fs.read(&c, sizeof(char));
      vocab.dict[i].push_back(c);
    }
    // vocab.dict[i].push_back('\0'); REmoved this line because it creates a null token at last spot of each token

    // -------- NEW : remplir rev --------
    vocab.rev[vocab.dict[i]] = static_cast<int>(i);
  }
  }

/*
  bool Encode(const Vocab& vocab,
              const std::string& text,
              std::vector<int>& out_ids) {
    out_ids.clear();

    // 1) découpe très simple : espaces
    std::istringstream iss(text);
    std::string tok;
    while (iss >> tok) {
      // 2) lookup
      auto it = vocab.rev.find(tok);
      if (it == vocab.rev.end()) {
        //std::cerr << "[Encode] unknown token: '" << tok << "'\n";
        //return false;                       // échoue si token absent
        out_ids.push_back(UNK_ID);   // au lieu de retourner false
        continue;  
        //    ou: out_ids.push_back(UNK_ID); continue;
      }
      out_ids.push_back(it->second);
    }
    return true;
  }
*/
  bool Encode(const Vocab& vocab,
              const std::string& text,
              std::vector<int>& out_ids) {
    out_ids.clear();

    // 1) découpe très simple : espaces
    std::istringstream iss(text);
    std::string tok;
    /*
    bool first = true;
    while (iss >> tok) {
      if (!first) tok = " " + tok;
      first = false;
    */ 
    while (iss >> tok) {
      tok = " " + tok;

      // 2) lookup
      //debug 
      // Print current token
      std::cerr << "Token: '" << tok << "'\nBytes: ";
      for (unsigned char c : tok) {
          std::cerr << std::hex << static_cast<int>(c) << " ";
      }
      std::cerr << std::dec << "\n";

      // Print vocab[471]
      auto &v471 = vocab.dict[471];
      std::cerr << "Vocab[471]: '" << v471 << "'\nBytes: ";
      for (unsigned char c : v471) {
          std::cerr << std::hex << static_cast<int>(c) << " ";
      }
      std::cerr << std::dec << "\n";
      //end debug 

      auto it = vocab.rev.find(tok);
      if (it == vocab.rev.end()) {
        //std::cerr << "[Encode] unknown token: '" << tok << "'\n";
        //return false;                       // échoue si token absent
        out_ids.push_back(UNK_ID);   // au lieu de retourner false
        continue;  
        //    ou: out_ids.push_back(UNK_ID); continue;
      }
      out_ids.push_back(it->second);
    }
    return true;
  }

} // namespace inference_fpga
