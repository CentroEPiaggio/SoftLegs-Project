classdef SharedObject < casadi.PrintSharedObject
    %SHAREDOBJECT SharedObject implements a reference counting framework similar for efficient
    %
    %
    %and easily-maintained memory management.
    %
    %To use the class, both the SharedObject class (the public class), and the
    %SharedObjectNode class (the internal class) must be inherited from. It can
    %be done in two different files and together with memory management, this
    %approach provides a clear distinction of which methods of the class are to
    %be considered "public", i.e. methods for public use that can be considered
    %to remain over time with small changes, and the internal memory.
    %
    %When interfacing a software, which typically includes including some header
    %file, this is best done only in the file where the internal class is
    %defined, to avoid polluting the global namespace and other side effects.
    %
    %The default constructor always means creating a null pointer to an internal
    %class only. To allocate an internal class (this works only when the internal
    %class isn't abstract), use the constructor with arguments.
    %
    %The copy constructor and the assignment operator perform shallow copies
    %only, to make a deep copy you must use the clone method explicitly. This
    %will give a shared pointer instance.
    %
    %In an inheritance hierarchy, you can cast down automatically, e.g. (
    %SXFunction is a child class of Function): SXFunction derived(...); Function
    %base = derived;
    %
    %To cast up, use the shared_cast template function, which works analogously
    %to dynamic_cast, static_cast, const_cast etc, e.g.: SXFunction derived(...);
    %Function base = derived; SXFunction derived_from_base =
    %shared_cast<SXFunction>(base);
    %
    %A failed shared_cast will result in a null pointer (cf. dynamic_cast)
    %
    %Joel Andersson
    %
    %C++ includes: shared_object.hpp 
    %
  methods
    function varargout = disp(self,varargin)
    %DISP Print a representation of the object.
    %
    %  DISP(self, bool trailing_newline)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(49, self, varargin{:});
    end
    function varargout = print(self,varargin)
    %PRINT Print a description of the object.
    %
    %  PRINT(self, bool trailing_newline)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(50, self, varargin{:});
    end
    function varargout = printPtr(self,varargin)
    %PRINTPTR [INTERNAL]  Print the pointer to the internal class
    %
    %  PRINTPTR(self)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(51, self, varargin{:});
    end
    function varargout = is_null(self,varargin)
    %IS_NULL Is a null pointer?
    %
    %  bool = IS_NULL(self)
    %
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(52, self, varargin{:});
    end
    function varargout = hash(self,varargin)
    %HASH Returns a number that is unique for a given Node. If the Object does not
    %
    %  size_t = HASH(self)
    %
    %point to any node, "0" is returned.
    %
    %
    %
      [varargout{1:nargout}] = casadiMEX(53, self, varargin{:});
    end
    function self = SharedObject(varargin)
    %SHAREDOBJECT 
    %
    %  new_obj = SHAREDOBJECT()
    %
    %
      self@casadi.PrintSharedObject(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = casadiMEX(54, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        casadiMEX(55, self);
        self.swigPtr=[];
      end
    end
  end
  methods(Static)
  end
end