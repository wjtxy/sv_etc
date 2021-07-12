-- source provider function
local colors = require('galaxyline.theme').default
local diagnostic = require('galaxyline.provider_diagnostic')

require('galaxyline').section.left[1]= {
  FileName = {
    provider = function()
		return vim.api.nvim_eval('substitute(expand("%:p"),$HOME,"~","g")')
	end,
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
      end,
    icon = '',
    highlight = {colors.red},
    separator = ' ',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.left[2]= {
  FileSize = {
    provider = 'FileSize',
    condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
      end,
    icon = '',
    highlight = {colors.blue},
    separator = '',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.left[3]= {
  FileTypeName = {
    provider = 'FileTypeName',
    condition = function()
        return true
      end,
    icon = '',
    highlight = {colors.yellow},
    separator = ' ',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.left[4]= {
  FileFormat = {
    provider = 'FileFormat',
    condition = function()
        return true
      end,
    icon = '',
    highlight = {colors.red},
    separator = ' ',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.left[5]= {
  GitBranch = {
    provider = 'GitBranch',
    condition = function()
        return true
      end,
    icon = '[',
    highlight = {colors.white},
    separator = ']',
    separator_highlight = {colors.white},
  }
}

-- right ********************************
require('galaxyline').section.left[6]= {
  GetLspClient = {
    provider = 'GetLspClient',
    condition = function()
        return true
      end,
    icon = ' ',
    highlight = {colors.cyan},
    separator = '',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.right[2]= {
  DiagnosticError = {
    provider = 'DiagnosticError',
    condition = function()
		if diagnostic.get_diagnostic_error ~= 1 then
			return true
		end
		return false
      end,
    icon = ' ',
    highlight = {colors.red},
    separator = '',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.right[3]= {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    condition = function()
		if diagnostic.get_diagnostic_warn ~= 1 then
			return true
		end
		return false
      end,
    icon = ' ',
    highlight = {colors.yellow},
    separator = '',
    separator_highlight = {colors.darkblue},
  }
}

require('galaxyline').section.right[4]= {
  LinePercent = {
    provider = 'LinePercent',
    condition = function()
        return true
      end,
    icon = '',
    highlight = {colors.violet},
    separator = '',
    separator_highlight = {colors.darkblue},
  }
}


