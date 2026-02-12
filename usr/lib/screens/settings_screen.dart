import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  const SettingsScreen({
    super.key,
    required this.onThemeChanged,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("الإعدادات"),
      ),
      body: ListView(
        children: [
          _buildSectionHeader(context, "عام"),
          SwitchListTile(
            title: const Text("الوضع الليلي"),
            subtitle: const Text("تغيير مظهر التطبيق"),
            secondary: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            value: isDarkMode,
            onChanged: onThemeChanged,
            activeColor: Theme.of(context).colorScheme.secondary,
          ),
          ListTile(
            title: const Text("اللغة / Language"),
            subtitle: const Text("العربية"),
            leading: const Icon(Icons.language),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          
          _buildSectionHeader(context, "الملاحة"),
          ListTile(
            title: const Text("تطبيق الخرائط المفضل"),
            subtitle: const Text("خرائط جوجل"),
            leading: const Icon(Icons.map),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          SwitchListTile(
            title: const Text("تنبيهات السرعة"),
            value: true,
            onChanged: (val) {},
            secondary: const Icon(Icons.speed),
          ),

          _buildSectionHeader(context, "واتساب"),
          ListTile(
            title: const Text("رسالة التنبيه التلقائي"),
            subtitle: const Text("تعديل نص الرسالة المرسلة للزبون"),
            leading: const Icon(Icons.message),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
