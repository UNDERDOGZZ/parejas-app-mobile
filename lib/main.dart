import 'package:flutter/material.dart';

void main() {
  runApp(const ParejasApp());
}

class ParejasApp extends StatelessWidget {
  const ParejasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parejas App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8E5AF7),
        ),
        fontFamily: 'Roboto',
      ),
      home: const ParejasHomePage(),
    );
  }
}

class ParejasHomePage extends StatelessWidget {
  const ParejasHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Parejas en Perú y el mundo'),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Iniciar sesión'),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: LinearGradient(
                colors: [
                  colorScheme.primary,
                  colorScheme.secondary,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Crea momentos inolvidables',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Planifica citas, guarda recuerdos y comparte historias con tu pareja en Perú o cualquier lugar del mundo.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: colorScheme.primary,
                      ),
                      child: const Text('Crear una cuenta'),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white),
                      ),
                      child: const Text('Explorar planes'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          const Text(
            'Funciones destacadas',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const FeatureGrid(),
          const SizedBox(height: 28),
          Text(
            'Experiencias para parejas reales',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 16),
          const ExperienceCard(
            title: 'Citas personalizadas',
            description:
                'Arma planes con mapas, presupuesto y checklist de actividades para Lima, Cusco, Medellín o cualquier ciudad.',
          ),
          const SizedBox(height: 12),
          const ExperienceCard(
            title: 'Recuerdos seguros',
            description:
                'Tus fotos, audios y cartas viven en un diario privado con backup automático y control de privacidad.',
          ),
          const SizedBox(height: 12),
          const ExperienceCard(
            title: 'Historias para redes',
            description:
                'Combina fotos, stickers y música para crear historias listas para Instagram, TikTok y WhatsApp.',
          ),
          const SizedBox(height: 28),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '¿Listos para empezar?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Invita a tu pareja, elige su estilo de relación y desbloqueen metas en pareja cada semana.',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 16),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: const Text('Enviar invitación'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            selectedIcon: Icon(Icons.calendar_month),
            label: 'Citas',
          ),
          NavigationDestination(
            icon: Icon(Icons.photo_album_outlined),
            selectedIcon: Icon(Icons.photo_album),
            label: 'Recuerdos',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            selectedIcon: Icon(Icons.auto_awesome),
            label: 'Historias',
          ),
        ],
      ),
    );
  }
}

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
        return GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            FeatureCard(
              icon: Icons.event,
              title: 'Planificación de citas',
              description: 'Agenda con recordatorios, mapas y recomendaciones locales.',
            ),
            FeatureCard(
              icon: Icons.notifications_active,
              title: 'Recordatorios inteligentes',
              description: 'Alertas de aniversarios, promesas y metas compartidas.',
            ),
            FeatureCard(
              icon: Icons.cake,
              title: 'Fechas importantes',
              description: 'Calendario con hitos personales y familiares.',
            ),
            FeatureCard(
              icon: Icons.photo_library,
              title: 'Subir fotos',
              description: 'Galerías privadas con notas y reacciones.',
            ),
            FeatureCard(
              icon: Icons.auto_awesome,
              title: 'Historias automáticas',
              description: 'Plantillas animadas listas para redes sociales.',
            ),
            FeatureCard(
              icon: Icons.lock,
              title: 'Privacidad total',
              description: 'Control de permisos y almacenamiento seguro.',
            ),
          ],
        );
      },
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.outlineVariant),
        color: colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 22,
            backgroundColor: colorScheme.primaryContainer,
            child: Icon(icon, color: colorScheme.onPrimaryContainer),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            description,
            style: TextStyle(
              fontSize: 13,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
