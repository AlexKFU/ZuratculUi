---
to: src/components/<%= folder %>/<%= component %>/<%= component %>.stories.ts
---

import type { Meta, StoryObj } from '@storybook/vue3';
import <%= component %> from './<%= component %>.vue';

// More on how to set up stories at: https://storybook.js.org/docs/vue/writing-stories/introduction
const meta = {
    title: '<%= folder %>/<%= component %>',
    component: <%= component %>,
    // This component will have an automatically generated docsPage entry: https://storybook.js.org/docs/vue/writing-docs/autodocs
    tags: ['autodocs'],
    argTypes: {
        size: { control: 'select', options: ['small', 'medium', 'large'] },
        backgroundColor: { control: 'color' },
        onClick: { action: 'clicked' },
    },
    args: { primary: false }, // default value
} satisfies Meta<typeof <%= component %>>;

export default meta;
type Story = StoryObj<typeof meta>;
/*
 *👇 Render functions are a framework specific feature to allow you control on how the component renders.
 * See https://storybook.js.org/docs/vue/api/csf
 * to learn how to use render functions.
 */
export const Primary: Story = {
    args: {
        primary: true,
        label: 'Button',
    },
};




