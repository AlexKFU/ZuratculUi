---
to: src/components/<%= folder %>/<%= component %>/index.stories.ts
---

import <%= component %> from './index.vue';

export default {
    title: '<%= folder %>/<%= component %>',
    component: <%= component %>,
    argTypes: {},
};

const Template = (args: any) => ({
    components: { <%= component %> },
    setup() {
        return { args };
    },
    template: '<<%= h.changeCase.paramCase(component) %> v-bind="args" />',
});

export const Example = Template.bind({});

Example.args = {};



