class PortfolioAssets {
  final String projectName;
  final List<String> portfolioScreens;
  const PortfolioAssets({required this.projectName, required this.portfolioScreens});
}

const List<PortfolioAssets> portfolioAssets = [
  PortfolioAssets(
    projectName: 'Bitcoin Pulsar',
    portfolioScreens: [
      'assets/portfolio/project_1/bitcoin_pulsar_1.png',
      'assets/portfolio/project_1/bitcoin_pulsar_2.png',
      'assets/portfolio/project_1/bitcoin_pulsar_3.png',
    ],
  ),
  PortfolioAssets(
    projectName: 'TMDB App',
    portfolioScreens: [
      'assets/portfolio/project_2/tmdb_1.png',
      'assets/portfolio/project_2/tmdb_2.png',
      'assets/portfolio/project_2/tmdb_3.png',
    ],
  ),
  PortfolioAssets(
    projectName: 'WoW Gold Buy',
    portfolioScreens: [
      'assets/portfolio/project_3/wow_gold_buy_1.png',
      'assets/portfolio/project_3/wow_gold_buy_2.png',
      'assets/portfolio/project_3/wow_gold_buy_3.png',
    ],
  ),
];


// const portfolioScreens = <List<String>>[
//   [
//     'assets/portfolio/project_1/bitcoin_pulsar_1.png',
//     'assets/portfolio/project_1/bitcoin_pulsar_2.png',
//     'assets/portfolio/project_1/bitcoin_pulsar_3.png',
//   ],
//   [
//     'assets/portfolio/project_2/tmdb_1.png',
//     'assets/portfolio/project_2/tmdb_2.png',
//     'assets/portfolio/project_2/tmdb_3.png',
//   ],
//   [
//     'assets/portfolio/project_3/wow_gold_buy_1.png',
//     'assets/portfolio/project_3/wow_gold_buy_2.png',
//     'assets/portfolio/project_3/wow_gold_buy_3.png',
//   ],
// ];