classdef Importer < casadi.SharedObject
    %IMPORTER Importer.
    %
    %
    %
    %Just-in-time compilation of code
    %
    %General information
    %===================
    %
    %
    %
    %List of plugins
    %===============
    %
    %
    %
    %- clang
    %
    %- shell
    %
    %Note: some of the plugins in this list might not be available on your
    %system. Also, there might be extra plugins available to you that are not
    %listed here. You can obtain their documentation with
    %Importer.doc("myextraplugin")
    %
    %
    %
    %--------------------------------------------------------------------------------
    %
    %clang
    %-----
    %
    %
    %
    %Interface to the JIT compiler CLANG
    %
    %>List of available options
    %
    %+------------------------+------------------------+------------------------+
    %|           Id           |          Type          |      Description       |
    %+========================+========================+========================+
    %| flags                  | OT_STRINGVECTOR        | Compile flags for the  |
    %|                        |                        | JIT compiler. Default: |
    %|                        |                        | None                   |
    %+------------------------+------------------------+------------------------+
    %| include_path           | OT_STRING              | Include paths for the  |
    %|                        |                        | JIT compiler. The      |
    %|                        |                        | include directory      |
    %|                        |                        | shipped with CasADi    |
    %|                        |                        | will be automatically  |
    %|                        |                        | appended.              |
    %+------------------------+------------------------+------------------------+
    %
    %--------------------------------------------------------------------------------
    %
    %
    %
    %--------------------------------------------------------------------------------
    %
    %shell
    %-----
    %
    %
    %
    %Interface to the JIT compiler SHELL
    %
    %>List of available options
    %
    %+------------------------+------------------------+------------------------+
    %|           Id           |          Type          |      Description       |
    %+========================+========================+========================+
    %| compiler               | OT_STRING              | Compiler command       |
    %+------------------------+------------------------+------------------------+
    %| compiler_setup         | OT_STRING              | Compiler setup         |
    %|                        |                        | command. Intended to   |
    %|                        |                        | be fixed. The 'flag'   |
    %|                        |                        | option is the prefered |
    %|                        |                        | way to set custom      |
    %|                        |                        | flags.                 |
    %+------------------------+------------------------+------------------------+
    %| flags                  | OT_STRINGVECTOR        | Compile flags for the  |
    %|                        |                        | JIT compiler. Default: |
    %|                        |                        | None                   |
    %+------------------------+------------------------+------------------------+
    %
    %--------------------------------------------------------------------------------
    %
    %
    %
    %Joris Gillis
    %
    %C++ includes: importer.hpp 
    %
  methods
    function varargout = plugin_name(self,varargin)
    %PLUGIN_NAME Query plugin name.
    %
    %  char = PLUGIN_NAME(self)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(920, self, varargin{:});
    end
    function varargout = has_function(self,varargin)
    %HAS_FUNCTION 
    %
    %  bool = HAS_FUNCTION(self, char symname)
    %
    %
      [varargout{1:nargout}] = casadiMEX(921, self, varargin{:});
    end
    function varargout = has_meta(self,varargin)
    %HAS_META Does a meta entry exist?
    %
    %  bool = HAS_META(self, char cmd, int ind)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(922, self, varargin{:});
    end
    function varargout = get_meta(self,varargin)
    %GET_META Get entry as a text.
    %
    %  char = GET_META(self, char cmd, int ind)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(923, self, varargin{:});
    end
    function varargout = inlined(self,varargin)
    %INLINED Check if a function is inlined.
    %
    %  bool = INLINED(self, char symname)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(924, self, varargin{:});
    end
    function varargout = body(self,varargin)
    %BODY Get the function body, if inlined.
    %
    %  char = BODY(self, char symname)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(925, self, varargin{:});
    end
    function self = Importer(varargin)
    %IMPORTER 
    %
    %  new_obj = IMPORTER()
    %    Default constructor.
    %  new_obj = IMPORTER(char name, char compiler, struct opts)
    %    Importer factory.
    %
    %> IMPORTER(char name, char compiler, struct opts)
    %------------------------------------------------------------------------
    %
    %
    %Importer factory.
    %
    %
    %> IMPORTER()
    %------------------------------------------------------------------------
    %
    %
    %Default constructor.
    %
    %
    %
      self@casadi.SharedObject(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = casadiMEX(926, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        casadiMEX(927, self);
        self.swigPtr=[];
      end
    end
  end
  methods(Static)
    function varargout = test_cast(varargin)
    %TEST_CAST 
    %
    %  bool = TEST_CAST(casadi::SharedObjectNode const * ptr)
    %
    %
     [varargout{1:nargout}] = casadiMEX(916, varargin{:});
    end
    function varargout = has_plugin(varargin)
    %HAS_PLUGIN 
    %
    %  bool = HAS_PLUGIN(char name)
    %
    %
     [varargout{1:nargout}] = casadiMEX(917, varargin{:});
    end
    function varargout = load_plugin(varargin)
    %LOAD_PLUGIN 
    %
    %  LOAD_PLUGIN(char name)
    %
    %
     [varargout{1:nargout}] = casadiMEX(918, varargin{:});
    end
    function varargout = doc(varargin)
    %DOC 
    %
    %  char = DOC(char name)
    %
    %
     [varargout{1:nargout}] = casadiMEX(919, varargin{:});
    end
  end
end
