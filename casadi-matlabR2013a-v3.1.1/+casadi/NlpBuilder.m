classdef NlpBuilder < casadi.PrintNlpBuilder
    %NLPBUILDER A symbolic NLP representation.
    %
    %
    %
    %Joel Andersson
    %
    %C++ includes: nlp_builder.hpp 
    %
  methods
    function v = x(self)
      v = casadiMEX(976, self);
    end
    function v = f(self)
      v = casadiMEX(977, self);
    end
    function v = g(self)
      v = casadiMEX(978, self);
    end
    function v = x_lb(self)
      v = casadiMEX(979, self);
    end
    function v = x_ub(self)
      v = casadiMEX(980, self);
    end
    function v = g_lb(self)
      v = casadiMEX(981, self);
    end
    function v = g_ub(self)
      v = casadiMEX(982, self);
    end
    function v = x_init(self)
      v = casadiMEX(983, self);
    end
    function v = lambda_init(self)
      v = casadiMEX(984, self);
    end
    function varargout = import_nl(self,varargin)
    %IMPORT_NL Import an .nl file.
    %
    %  IMPORT_NL(self, char filename, struct opts)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(985, self, varargin{:});
    end
    function varargout = print(self,varargin)
    %PRINT Print a description of the object.
    %
    %  PRINT(self, bool trailing_newline)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(986, self, varargin{:});
    end
    function varargout = disp(self,varargin)
    %DISP Print a representation of the object.
    %
    %  DISP(self, bool trailing_newline)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(987, self, varargin{:});
    end
    function self = NlpBuilder(varargin)
    %NLPBUILDER 
    %
    %  new_obj = NLPBUILDER()
    %
    %
      self@casadi.PrintNlpBuilder(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = casadiMEX(988, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        casadiMEX(989, self);
        self.swigPtr=[];
      end
    end
  end
  methods(Static)
  end
end
