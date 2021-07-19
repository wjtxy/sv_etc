-- source provider function
local colors = require('galaxyline.theme').default
local diagnostic = require('galaxyline.provider_diagnostic')
local icon_colors = {
   Brown        = '#905532',
   Aqua         = '#3AFFDB',
   Blue         = '#689FB6',
   Darkblue     = '#44788E',
   Purple       = '#834F79',
   Red          = '#AE403F',
   Beige        = '#F5C06F',
   Yellow       = '#F09F17',
   Orange       = '#D4843E',
   Darkorange   = '#F16529',
   Pink         = '#CB6F6F',
   Salmon       = '#EE6E73',
   Green        = '#8FAA54',
   Lightgreen   = '#31B53E',
   White        = '#FFFFFF',
   LightBlue    = '#5fd7ff',
}
local i = 0

i = i + 1
require('galaxyline').section.left[i]= {
  Filename = {
    provider = function()
		return vim.api.nvim_eval('substitute(expand("%:p:h"),$HOME,"~","g")') .. '/'
	end,
	condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    icon = '',
    highlight = {colors.red},
    separator = '',
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.left[i]= {
  FileName = {
    provider = 'FileName',
	condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
      end,
    icon = '',
    highlight = {colors.red},
    separator = '',
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.left[i]= {
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
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.left[i]= {
  FileTypeName = {
    provider = 'FileTypeName',
    condition = function()
        return true
      end,
    icon = '',
    highlight = {colors.yellow},
    separator = ' ',
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.left[i]= {
  FileFormat = {
    provider = 'FileFormat',
    condition = function()
        return true
      end,
    icon = '',
    highlight = {colors.red},
    separator = ' ',
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.left[i]= {
  GitBranch = {
    provider = 'GitBranch',
    condition = function()
		if require('galaxyline.provider_vcs').get_git_branch() then
			return true
		end
		return false
      end,
    icon = '->',
    highlight = {colors.white},
    separator = ' ',
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.left[i]= {
  GetLspClient = {
    provider = 'GetLspClient',
    condition = function()
        return true
      end,
    icon = '',
    highlight = {colors.cyan},
    separator = '',
    separator_highlight = {},
  }
}

-- ********************************************************
i = 0

i = i + 1
require('galaxyline').section.right[i]= {
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
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.right[i]= {
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
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.right[i]= {
  LinePercent = {
    provider = 'LinePercent',
	condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    icon = '',
    highlight = {colors.violet},
    separator = '',
    separator_highlight = {},
  }
}

i = i + 1
require('galaxyline').section.right[i]= {
  linecolumn = {
    provider = function ()
		return vim.fn.line('$') .. " :" .. (vim.fn.col('.') - 1)
	end,
	condition = function()
      if vim.fn.empty(vim.fn.expand('%:t')) ~= 1 then
        return true
      end
      return false
    end,
    icon = '',
    highlight = {icon_colors.Aqua},
    separator = '',
    separator_highlight = {},
  }
}

