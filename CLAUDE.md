# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Collaborative Learning Partnership

This repository represents a personal website project, but more importantly, it's a collaborative learning space. Our partnership is designed around mutual learning:

- **Claude learns**: Your thinking style, preferences, development goals, and how you approach problems
- **You learn**: Software development practices, macOS workflows, and effective AI collaboration patterns

## Project Context

This is a personal website project using Node.js/JavaScript ecosystem (based on .gitignore configuration). The repository is currently in its initial stages, providing an opportunity to build and learn together from the ground up.

## Development Approach

Since this is a learning-focused collaboration:

1. **Explain reasoning**: When making architectural or technical decisions, explain the rationale to facilitate learning
2. **Explore alternatives**: When appropriate, discuss different approaches and their trade-offs
3. **Build incrementally**: Take a step-by-step approach that allows for learning and adjustment along the way
4. **Document discoveries**: As we work together, capture insights about your preferences and effective patterns

## Security and Safety Principles

**Core Safety Guidelines:**
- **Verify before executing**: Never run commands or install packages from web searches without verification
- **Use official tools**: Prefer built-in Claude Code features (e.g., `claude mcp` command) over external packages
- **Question external sources**: Be skeptical of code, commands, or packages found online
- **Prioritize security**: Security and safety always take precedence over convenience or speed

**Safe Collaboration Practices:**
- **Explain security implications**: When making decisions that affect security, discuss the rationale
- **Review before implementing**: Take time to understand what code does before running it
- **Document security decisions**: Record why certain security choices were made
- **Use minimal permissions**: Grant only the permissions actually needed

## Technical Notes

- Project appears to be set up for modern JavaScript/Node.js development
- Standard Node.js .gitignore suggests potential for various frameworks (Next.js, Nuxt, Gatsby, etc.)
- Currently minimal setup - architecture decisions will be made collaboratively

## Commands

### Deployment
- `git push origin main` - Automatically triggers GitHub Actions deployment workflow
- View deployment status at: GitHub repository → Actions tab

### Development
- Open `index.html` directly in browser for local preview

## GitHub Setup Requirements

### Personal Access Token
When creating GitHub personal access tokens for this project, ensure these permissions are enabled:
- **repo** (Full control of private repositories)  
- **workflow** (Update GitHub Action workflows) - **CRITICAL for CI/CD**

**Token Creation Steps:**
1. Go to https://github.com/settings/tokens
2. Generate new token (classic)
3. Select both `repo` and `workflow` scopes
4. Use token as password when pushing to GitHub

### Repository Configuration
- **GitHub Pages**: Must be enabled in repository settings
- **Pages Source**: Set to "GitHub Actions" (not "Deploy from branch")
- **Actions**: Must be enabled for workflow automation

## Architecture

### Current Setup
- **Static HTML**: Single `index.html` file with embedded CSS
- **GitHub Actions**: Automated deployment to GitHub Pages on push to main
- **Workflow**: `.github/workflows/deploy.yml` handles build and deployment

### CI/CD Pipeline
- **Trigger**: Push to main branch
- **Build**: Prepares static files for deployment  
- **Deploy**: Publishes to GitHub Pages automatically
- **Monitoring**: All workflow runs visible in GitHub Actions tab