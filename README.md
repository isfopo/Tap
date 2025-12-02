# isfopo/homebrew-tap

Homebrew tap for isfopo's projects. This tap contains formulas for multiple applications and can be used across different repositories.

## Installation

```bash
# Add this tap
brew tap isfopo/hoembrew-tap

# Install available packages
brew install soundcheck  # Audio monitoring application
```

## Available Packages

### soundcheck

Terminal-based audio monitoring application that displays real-time audio levels and detects when sound exceeds a specified threshold.

```bash
brew install soundcheck
```

## Workflow Architecture

This tap uses a distributed workflow system:

1. **Main repositories** trigger Homebrew releases via repository dispatch
2. **This tap repository** receives triggers and generates/updates formulas
3. **Automatic publishing** to the tap for easy installation

### Supported Projects

- **soundcheck** - Audio monitoring application

### Adding New Projects

To add a new project to this tap:

1. **Create workflow trigger** in your main repository (see `release-core.yml`)
2. **Add repository secret** `TAP_REPO_TOKEN` for cross-repo communication
3. **Add project formula** to the `Formula/` directory
4. **Update this README** with the new package information

## Updating

Formulas are automatically updated when new releases are published in their respective repositories. The GitHub Actions workflow handles:

- Formula generation with correct SHA256 hashes
- Version bumping and URL updates
- Automated commits to this repository

## Contributing

This tap serves multiple projects. To contribute:

1. Check the main repository of the project you want to update
2. Follow the release process documented there
3. The tap will be automatically updated via CI/CD

## License

See individual project licenses for details.
