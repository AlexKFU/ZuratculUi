const QUESTIONS = [
	{
		type: 'select',
		name: 'folder',
		message: 'Pick a component folder',
		choices: ['atoms', 'molecules', 'organisms'],
	},
	{
		type: 'input',
		name: 'component',
		message: 'Type a component name',
	},
];

module.exports = {
	prompt: ({ inquirer, h }) => {
		return inquirer.prompt(QUESTIONS).then(({ folder, component }) => {
			return {
				folder,
				component: `Zu${h.changeCase.pascalCase(component)}`,
			};
		});
	},
};
