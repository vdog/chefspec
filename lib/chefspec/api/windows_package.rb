module ChefSpec::API
  # @since 0.0.1
  module PackageMatchers
    ChefSpec::Runner.define_runner_method :windows_package

    #
    # Assert that an +windows_package+ resource exists in the Chef run with the
    # action +:install+. Given a Chef Recipe that installs "Notepad++" as an
    # +windows_package+:
    #
    #     windows_package 'Notepad++' do
    #       action :install
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +windows_package+ resource with ChefSpec.
    #
    # @example Assert that an +windows_package+ was installed
    #   expect(chef_run).to install_windows_package('Notepad++')
    #
    # @example Assert that an +windows_package+ was installed with predicate matchers
    #   expect(chef_run).to install_windows_package('Notepad++').with_version('1.2.3')
    #
    # @example Assert that an +windows_package+ was installed with attributes
    #   expect(chef_run).to install_windows_package('Notepad++').with(version: '1.2.3')
    #
    # @example Assert that an +windows_package+ was installed using a regex
    #   expect(chef_run).to install_windows_package('Notepad++').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +windows_package+ was _not_ installed
    #   expect(chef_run).to_not install_windows_package('Notepad++')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def install_windows_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:windows_package, :install, resource_name)
    end

    #
    # Assert that an +windows_package+ resource exists in the Chef run with the
    # action +:purge+. Given a Chef Recipe that purges "Notepad++" as an
    # +windows_package+:
    #
    #     windows_package 'Notepad++' do
    #       action :purge
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +windows_package+ resource with ChefSpec.
    #
    # @example Assert that an +windows_package+ was purged
    #   expect(chef_run).to purge_windows_package('Notepad++')
    #
    # @example Assert that an +windows_package+ was purged with predicate matchers
    #   expect(chef_run).to purge_windows_package('Notepad++').with_version('1.2.3')
    #
    # @example Assert that an +windows_package+ was purged with attributes
    #   expect(chef_run).to purge_windows_package('Notepad++').with(version: '1.2.3')
    #
    # @example Assert that an +windows_package+ was purged using a regex
    #   expect(chef_run).to purge_windows_package('Notepad++').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +windows_package+ was _not_ purged
    #   expect(chef_run).to_not purge_windows_package('Notepad++')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def purge_windows_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:windows_package, :purge, resource_name)
    end

    #
    # Assert that an +windows_package+ resource exists in the Chef run with the
    # action +:reconfig+. Given a Chef Recipe that reconfigures "Notepad++" as an
    # +windows_package+:
    #
    #     windows_package 'Notepad++' do
    #       action :reconfig
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +windows_package+ resource with ChefSpec.
    #
    # @example Assert that an +windows_package+ was reconfigured
    #   expect(chef_run).to reconfig_windows_package('Notepad++')
    #
    # @example Assert that an +windows_package+ was reconfigured with predicate matchers
    #   expect(chef_run).to reconfig_windows_package('Notepad++').with_version('1.2.3')
    #
    # @example Assert that an +windows_package+ was reconfigured with attributes
    #   expect(chef_run).to reconfig_windows_package('Notepad++').with(version: '1.2.3')
    #
    # @example Assert that an +windows_package+ was reconfigured using a regex
    #   expect(chef_run).to reconfig_windows_package('Notepad++').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +windows_package+ was _not_ reconfigured
    #   expect(chef_run).to_not reconfig_windows_package('Notepad++')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def reconfig_windows_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:windows_package, :reconfig, resource_name)
    end

    #
    # Assert that an +windows_package+ resource exists in the Chef run with the
    # action +:remove+. Given a Chef Recipe that removes "Notepad++" as an
    # +windows_package+:
    #
    #     windows_package 'Notepad++' do
    #       action :remove
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +windows_package+ resource with ChefSpec.
    #
    # @example Assert that an +windows_package+ was removed
    #   expect(chef_run).to remove_windows_package('Notepad++')
    #
    # @example Assert that an +windows_package+ was removed with predicate matchers
    #   expect(chef_run).to remove_windows_package('Notepad++').with_version('1.2.3')
    #
    # @example Assert that an +windows_package+ was removed with attributes
    #   expect(chef_run).to remove_windows_package('Notepad++').with(version: '1.2.3')
    #
    # @example Assert that an +windows_package+ was removed using a regex
    #   expect(chef_run).to remove_windows_package('Notepad++').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +windows_package+ was _not_ removed
    #   expect(chef_run).to_not remove_windows_package('Notepad++')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def remove_windows_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:windows_package, :remove, resource_name)
    end

    #
    # Assert that an +windows_package+ resource exists in the Chef run with the
    # action +:upgrade+. Given a Chef Recipe that upgrades "Notepad++" as an
    # +windows_package+:
    #
    #     windows_package 'Notepad++' do
    #       action :upgrade
    #     end
    #
    # The Examples section demonstrates the different ways to test an
    # +windows_package+ resource with ChefSpec.
    #
    # @example Assert that an +windows_package+ was upgraded
    #   expect(chef_run).to upgrade_windows_package('Notepad++')
    #
    # @example Assert that an +windows_package+ was upgraded with predicate matchers
    #   expect(chef_run).to upgrade_windows_package('Notepad++').with_version('1.2.3')
    #
    # @example Assert that an +windows_package+ was upgraded with attributes
    #   expect(chef_run).to upgrade_windows_package('Notepad++').with(version: '1.2.3')
    #
    # @example Assert that an +windows_package+ was upgraded using a regex
    #   expect(chef_run).to upgrade_windows_package('Notepad++').with(version: /(\d+\.){2}\.\d+/)
    #
    # @example Assert that an +windows_package+ was _not_ upgraded
    #   expect(chef_run).to_not upgrade_windows_package('Notepad++')
    #
    #
    # @param [String, Regex] resource_name
    #   the name of the resource to match
    #
    # @return [ChefSpec::Matchers::ResourceMatcher]
    #
    def upgrade_windows_package(resource_name)
      ChefSpec::Matchers::ResourceMatcher.new(:windows_package, :upgrade, resource_name)
    end

  end
end

