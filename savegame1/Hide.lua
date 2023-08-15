local function GuiShowInfoDialog_inj(self, args)
	local dialog = self.guis["InfoDialog"]
	if dialog ~= nil and args ~= nil then
		if args.text == g_i18n:getText("dialog_getFullVersion") then
			self:closeDialog(dialog);
		end
	end
end

function init()
	Gui.showInfoDialog = Utils.appendedFunction(Gui.showInfoDialog, GuiShowInfoDialog_inj)
end

init()