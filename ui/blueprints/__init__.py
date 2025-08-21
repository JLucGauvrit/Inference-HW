# blueprints/__init__.py
"""
Package des blueprints pour l'application Inference FPGA
"""

from .fpga import fpga_bp
from .cpu import cpu_bp
from .docs import docs_bp
from .session_manager import session_manager

__all__ = ['fpga_bp','cpu_bp','docs_bp', 'session_manager']
