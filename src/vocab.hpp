#ifndef VOCAB_HPP_
#define VOCAB_HPP_

#include <fstream>
#include <string>
#include <unordered_map>
#include <vector>

namespace inference_fpga {

struct Vocab {
  std::vector<std::string> dict;              // id -> string
  std::unordered_map<std::string,int> rev;    // string -> id (NEW)
};

void ResizeVocab(Vocab& vocab, int vocab_size);
void LoadVocab(Vocab& vocab, std::ifstream& fs);

/** Encodage minimaliste : split ' ' et recherche exacte. 
 *  Retourne false si un token du prompt est inconnu.         */
bool Encode(const Vocab& vocab,
            const std::string& text,
            std::vector<int>& out_ids);

}  // namespace inference_fpga
#endif  // VOCAB_HPP_
