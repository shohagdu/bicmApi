-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 02:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bicm_jfmg`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_07_01_202600_create_users_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(5, '2016_06_01_000004_create_oauth_clients_table', 2),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sr_comments`
--

CREATE TABLE `sr_comments` (
  `id` int(11) NOT NULL,
  `paperId` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `dstatus` int(11) DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `entryby` int(11) DEFAULT NULL,
  `entryDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_comments`
--

INSERT INTO `sr_comments` (`id`, `paperId`, `type`, `dstatus`, `comments`, `entryby`, `entryDate`) VALUES
(1, 'JFMG-202103-00010', '4', 11, 'Dear Authors,\r\nThank you for submitting your paper at JFMG. The Editorial Board has carefully reviewed your article before sending it out to the external reviewers. While our JFMG is a new journal, it strives for seeks articles that have broader implications for the corporate and financial domains. \r\nThe assigned editor for your article, studying the case of Sonali Bank Limited, believes that it has minimal academic and practical contributions and implications. Therefore, we are unable to proceed to the next stage with the article.\r\nI hope you understand and support the JFMG in achieving its objectives. I also hope that our decision will not affect your choice of JFMG for your next research.\r\nPlease do not hesitate to let me know if I can help you any further.\r\n\r\nBest regards,\r\n\r\nSuborna Barua, PhD\r\nManaging Editor\r\ned1@jfmg.bicm.ac.bd', 1, '2021-06-05 02:41:05'),
(2, 'JFMG-202103-00004', '4', 3, 'Dear Authors,\r\nPlease address the following comments and resubmit your revised paper by 24 June 2021.\r\nThank you for submitting your paper to the JFMG.\r\n\r\nSuborna Barua, PhD\r\nManaging Editor, JFMG\r\n-------------------------------------------------------\r\nReviewer Comments\r\n\r\n1.	The study objective section should be more specific: making the research objective more crystal clear in a single or two research questions instead of four questions.\r\n\r\n2.	The study cites literature on interdependence of stock market across the countries. However, the study focuses on the dual listing of stocks in two exchanges (DSE and CSE) in the same country. As both stock exchanges have same securities, so both stock exchanges are driven by same-company specific fundamentals. It might be better if study cites literature on dual listing of securities and stock exchanges that contain same securities listed. For example, literature on interdependence between Shanghai stock exchange and Shenzen stock exchange in China and between BSE and national stock exchange in India. \r\n\r\n3.	The study uses DSE30 and CSE30 from 2014 to 2020, February. However, DSE30 and CSE30 represent less than 50% of the market. As the study objective and conclusion is about the whole market, it might be better if the study tests the broad index of DSE and CSE- DSEX and CSE All share price index that represent more than 95% of the market capitalization and test if the results sustain when broader proxies of the market are considered. Moreover, study does not discuss why they have taken 2014 to 2020 as the time period of study. Would the result be valid if longer-period data is taken or time interval is changed? In order for the result to be robust, the study should address those concerns.\r\n\r\n4.	The study reports that stock prices in DSE markets can influence the stock prices in CSE market in the short run but not the other way around and there is no-long run interdependce. However, the study does not give any possible reasons why shock in DSE is transmitted to CSE but not the other way around and why there is no long-run interdependence despite the both stock exchanges contains the similar securities listed. It would be helpful if the study had provided probable reasons for the above mentioned results. \r\n\r\n5.	There are several typos and grammatical errors. The paper needs to go through thorough copy-edit and language improvement.\r\n\r\nFinally, the study could be published if the above-mentioned concerns are duly addressed.\r\n', 1, '2021-06-10 05:06:21'),
(3, 'JFMG-202103-00006', '4', 4, 'Review comments for JFMG-202103-00006\r\n\r\n1. Originality of idea: Does the paper contain new information and significant knowledge contribution that justifies its publication?\r\nThis paper attempts to reveal the causation between govt revenue and expenditure considering the Vector Autoregressive approach resembling simultaneous equation modelling which is quite eminent when we deal with endogenous variables together. Hence the idea of this paper is consistent and contains new information justifying the publication.\r\n\r\n2. Contextualizing the Literature: Does the manuscript evidence a comprehensive understanding of the relevant literature in the field? Does it cite the appropriate and significant works? Has (have) any significant work(s) been ignored?\r\nThis paper covers sufficient reviews of the literature relevant to the topic.\r\n\r\n3. Methodology: Is the methodology of the paper appropriately designed? Does the paper build on any theories, concepts or defined frameworks? Does it offer any new theories, concepts or frameworks that can be tested further? Are the methods and techniques used appropriate and relevant for the work? Have the methods and techniques implemented appropriately?\r\nThe methodology of this paper should include the mathematical models of VAR using equation along with proper justification for implementing these models. In Addition, the author may also incorporate the use of these VAR models to predict the govt expenditure being a dependent variable as govt revenue affects its expenditure.\r\n\r\n4. Results and discussions: Does the paper report results with clarity? Does it interpret the results appropriately and adequately with support from the relevant literature? Do the conclusions align with the other elements of the paper, e.g., research objectives, results and discussions?\r\nThe output estimated from VAR models considering three lags of each variable shows that none of the lags of expenditure is statistically significant in affecting govt revenue whereas in the second model the lags of govt revue are statistically significant at the chosen level of significance in affecting its expenditure. So, itâ€™s obvious to infer that govt expenditure depends on its revenue which is found consistent as per granger causality test. Surprisingly, in the last sentence of the abstract, the author has mentioned the opposite findings of causation between government revenue and its expenditure that he has discovered in the analysis segment.\r\n\r\n5. Research implications: Does the paper suggest any academic, professional, public and/or social policy formulation? Does the paper provide any direction as to how the research could help in further knowledge and practice in the broad areas of finance?\r\nUnfortunately, this section remains unexplored by the author/s. There is hardly found any policy implication of the findings contributed from this paper. Therefore, the respective author is requested to incorporate some policy implications of these findings, especially in determining Govt revenue accelerating its expenditure.\r\n\r\n6. Standard of communication: Is the paperâ€™s expression readable and up to the international standard, such as sentence structure, jargon use, acronyms, etc.?\r\nDoes the paper describe in language that is understandable to general readers in business, finance and economics?\r\nDoes the paper uses abbreviations and elaborates on them appropriately?\r\nWhat is the quality of the English language used in the paper?\r\nThe language of the paper is user friendly and up to the international standard.\r\n\r\nRecommendation\r\nMinor revision\r\n\r\nDEAR AUTHOR,\r\nPLEASE REVISE THE MANUSCRIPT ACCORDING TO THE SUGGESTIONS ABOVE AND RESUBMIT BY 25 JUNE 2021. \r\nALONGSIDE THE REVISED MANUSCRIPT, PLEASE SUBMIT A STATEMENT EXPLAINING POINT-BY-POINT YOUR RESPONSES TO EACH OF THE COMMENTS ABOVE.\r\n\r\nSUBORNA BARUA, PHD\r\nMANAGING EDITOR', 1, '2021-06-14 05:33:47'),
(4, 'JFMG-202103-00001', '4', 4, '', 1, '2021-06-20 15:43:01'),
(5, 'JFMG-202106-00015', '4', 4, 'Dear Authors,\r\n\r\nI have now received the review for your paper  FMG-202106-00015. Please revise your manuscript based on the comments below and resubmit by 10 July 2021. While resubmitting, please provide a statement outlining your responses to each of the reviewer comments given below.\r\n\r\nThank you and I look forward to receiving your revised manuscript.\r\n\r\nSuborna Barua, PhD\r\nManaging Director, JFMG\r\n____________________________________________________________\r\n1. Abstract is not written properly. It should not include the list of independent variables in the first place. The findings should be moved earlier and not in line 10. \r\n2. Introduction section seems incomplete. Please briefly include the motivation of your study â€“ why such study is required, what is your findings, and what is your specific contribution to the literature. The author(s) should clearly mention why they select P/E ratio to measure stock market performance and why not any other indicators (such as annualized stock returns or abnormal returns). The paper should also include a short discussion on why the author(s) use a sample of commercial banks to test their hypothesis and why they have not used non-financial firms. \r\n3. The hypothesis section is also underdeveloped. The research gap and motivation is not properly identified. Even though the section mentions about 3 hypotheses, but actually reports 2. Hypothesis 1 should be re-written to reflect the core idea of the research. There is no preceding discussion on the prediction of Hypothesis 2. \r\n4. Among 30 listed commercial banks, only 7 are selected in the sample. Author(s) should either increase the sample size or provide a strong justification on why these 7 banks could be representatives of the banking sector in Bangladesh. \r\n5. One big concern in the empirical setup of this study is the mechanical relation between the dependent variable and some of the financial performance indicating variables. Author(s) should clarify why the dependent and key independent variables are not endogenously related given that both have an earnings component included in the calculation. \r\n6. Conclusion should be clearly written to reflect the policy implication of the findings â€“ how the findings of this study could be useful for the investors, bank managers, regulators, and analysts. \r\n7. I would like to see a comparison of the economic significance of the statistically significant variables in Table 4 and Table 12. \r\n8. Author(s) need to spend a fair amount of time on proofreading. There are a few typos. Section headings should be carefully checked (for example, 4.3. (sic) Research variables).\r\n9. Please check for similarity index using Turnitin or other software and revise accordingly.\r\n\r\nDecision: Minor Revision', 1, '2021-06-30 06:06:48'),
(6, 'JFMG-202103-00002', '4', 3, 'Journal of Financial Markets and Governance\r\nReferee report for Manuscript: JFMG-202103-00002\r\nImpact of Dividend Policy on Stock Price Volatility: An Empirical Study on Financial Service Industry of Bangladesh\r\n\r\n- Main idea\r\nThis paper examines the relationship between stock price volatility and dividend policy for firms in the financial service industry in Bangladesh. The authors find a significant positive relationship between stock price volatility and dividend yield.\r\n\r\n- Report overview\r\nOverall, I find that the research question is intriguing. However, I have major concerns regarding the hypothesis and choice of the primary research design. I discuss these and other comments in the following paragraphs.\r\n\r\n- Abstract\r\nThe abstract of the paper contains excessive text. Abstract should represent the core aspects of the manuscript. I suggest the authors to revise the abstract. You should include the main objectives, findings and implication in a simple and concise way.\r\nIntroduction\r\nâ€¢ Introduction section of the paper is not well-structured. I suggest the authors to start this section with the main objective of the study. This section contains a lot of repetitive statements. The authors need to read this section carefully to reduce the repetition and ensure a smooth flow.\r\nâ€¢ The authors currently use very complex sentence structure. Some of the sentences are very long and the intended message is unclear. For example, on p. 1 the authors mentioned that:\r\no Paramount significance on defining the appropriate dividend policy of a corporation has been becoming integral issue progressively, firstly in the context of the constant importance on maximizing the wealth of the shareholders and, secondly on the because market associates may have diverse preferences and opinion of market associates regarding the appropriate dividend policy.\r\nThis is an example of long sentence; there are several similar sentences. Overall, the authors need to substantially improve the readability of the paper.\r\nâ€¢ On p. 2, the authors noted that, â€œOn the other hand, stock price volatility is the systemic risk encountered by the investors who hold common stock (Guo, 2002)â€. I am not sure if this statement is true. In essence, stock price volatility has both ideocratic and systematic components. The authors need to check the original paper to clarify this.\r\nâ€¢ I donâ€™t see the hypothesis in the introduction section. The authors need to briefly explain the expected relationship between dividend policy and stock price volatility and the rationale for such relationship. Introduction section also lacks the discussion on the contribution of the study. I encourage the authors to go through a few papers published in top-tier journals to improve the overall write-up. If access to the journals is not available, authors can download the similar papers (accepted version) from SSRN/ResearchGate.\r\nâ€¢ The authors have complete freedom to decide the layout of the manuscript for introduction section. If needed, they can follow the structure given below:\r\n\r\n- Objective + Motivation (why this study is interesting) + Brief discussion on prior studies + Hypothesis + Findings + Contribution.\r\nLiterature review and theories of dividend policy\r\nâ€¢ Currently there are two separate sections for literature review and theories of dividend policy. This is truly unnecessary. I suggest the authors to merge both sections. You do not need to explain all the dividend theories; just focus on the theories that are relevant for your study.\r\nâ€¢ The literature review is excessive and lack coherence. Please include the relevant literature only.\r\nâ€¢ Importantly and interestingly, there is no hypothesis in the paper. Based on the prior literature and dividend theories, the authors need to come up with a hypothesis. There should be clear arguments for the hypothesis to be used in the paper.\r\n\r\n- Objective of the study\r\nI donâ€™t see any logic for a section on the objective of the study, especially in the middle of the manuscript. I suggest the authors to include this very briefly in the introduction section of the study.\r\n\r\n- Data source and sample\r\nThis section has a lot of repetitions. I am not sure why standard deviation of stock return is not used to measure stock price volatility. The authors mentioned that standard deviation could be affected by extreme values. However, winsorization can solve this problem.\r\n\r\n- Research methodology\r\nâ€¢ Not sure why hypotheses are reported under research methodology section!\r\nâ€¢ Discussion on diagnostic test and different data analysis technique consumes valuable space without adding any value. Diagnostic test results can go to the footnote and other discussion on various regression technique can be completely deleted.\r\n\r\n- Correlation matrix\r\nCorrelation matrix should include significance level for each coefficient.\r\n\r\n- Model specification\r\nâ€¢ I am not sure about the model specification and regression models used in the study. You just need to include the controls that prior studies suggest affecting stock price volatility. There is standard literature on this.\r\nâ€¢ Why do you need to do trial and error to find a model fit?\r\nâ€¢ The authors use Hausman specification test. This test should guide the authors to find the appropriate regression model; just use this and show results from a few techniques in the sensitivity analysis. Results and discussion on Table 6-8 can be complete eliminated.\r\nâ€¢ Overall, I find the analysis section very confusing. As discussed earlier, show the results from one standard model, discuss the results very clearly and you may show some sensitivity analysis to demonstrate the robustness of the findings.\r\n\r\n- Conclusion\r\nThe authors need to go through his section to improve the readability and flow.\r\n\r\nOverall, in my opinion, the authors need to do a major revision to improve the paper. My objective for a detailed review is to improve the quality of the manuscript and help the authors to work for a quality publication. Wish you all the best.\r\n\r\n\r\nOverall  decision: Major revision', 1, '2021-07-04 11:56:12'),
(7, 'JFMG-202103-00005', '4', 3, '', 1, '2021-07-08 17:38:17'),
(8, 'JFMG-202105-00013', '4', 10, '', 1, '2021-07-08 17:39:11'),
(9, 'JFMG-202105-00013', '4', 4, '', 1, '2021-07-08 17:45:29'),
(10, 'JFMG-202105-00013', '4', 3, '', 1, '2021-07-08 17:46:43'),
(11, 'JFMG-202107-00019', '4', 10, '', 1, '2021-07-12 10:04:42'),
(12, 'JFMG-202107-00017', '4', 10, '', 1, '2021-07-12 11:22:10'),
(13, 'JFMG-202107-00017', '4', 10, '', 1, '2021-07-12 11:27:39'),
(14, 'JFMG-202107-00017', '4', 10, '', 1, '2021-07-12 11:49:17'),
(15, 'JFMG-202107-00017', '4', 11, '', 1, '2021-07-12 11:55:01'),
(16, 'JFMG-202103-00002', '4', 10, 'Dear Authors,\r\n\r\nThank you for your submission to Journal of Financial Markets and Governance. The editorial board has reached a decision regarding your submission based on the reviewerâ€™s comments on your revised article.\r\n\r\nWe have the pleasure to inform you that your below-mentioned manuscript has been accepted for publication in the JFMG.\r\n\r\nManuscript No: JFMG-202103-00002\r\nTitle:  Impact of dividend policy on stock price volatility: An empirical study on financial service industry of Bangladesh\r\nAuthors: 1. Sagira Sultana Provaty\r\nLecturer\r\nBangladesh Institute of Capital Market (BICM)\r\nDhaka, Bangladesh\r\n\r\n2. Khairul Alam Siddique\r\nLecturer\r\nDepartment of Finance\r\nUniversity of Dhaka \r\nDhaka, Bangladesh\r\n\r\nWe will send you later the proof of your paper before sending for publication. According to the journal policy, your paper will be published online on a rolling basis, i.e., a paper will be published online as soon as it is ready for publication and then included in the most immediate issue and volume (the numbers will be assigned to article at this stage).\r\n\r\nIf you have any questions regarding your submissions, please do not hesitate to contact with us at ea@jfmg.bicm.ac.bd.\r\n\r\nKind regards,\r\n\r\n\r\nSuborna Barua, PhD\r\nManaging Editor\r\n\r\n', 42, '2021-08-01 05:16:27'),
(17, 'JFMG-202106-00015', '4', 10, 'Thank you for your submission to Journal of Financial Markets and Governance. The editorial board has reached a decision regarding your submission based on the reviewerâ€™s comments on your revised article.\r\n\r\nWe have the pleasure to inform you that your below-mentioned manuscript has been accepted for publication in the JFMG.\r\n\r\nManuscript No: JFMG-202106-00015\r\nTitle:  Nexus between Price Earnings (P/E) Ratio and Financial Performance of Commercial Banks:\r\nDynamic Panel Evidence from Bangladesh\r\nAuthors: 1. Raad Mozib Lalon, PhD (Corresponding Author)\r\nAssociate Professor\r\nDepartment of Banking and Insurance\r\nUniversity of Dhaka\r\n\r\n2. Tanvir Mahmud\r\nMBA &amp; BBA\r\nDepartment of Banking and Insurance\r\nUniversity of Dhaka\r\n\r\n\r\nWe will send you later the proof of your paper before sending for publication. According to the journal policy, your paper will be published online on a rolling basis, i.e., a paper will be published online as soon as it is ready for publication and then included in the most immediate issue and volume (the numbers will be assigned to article at this stage).\r\n\r\nIf you have any questions regarding your submissions, please do not hesitate to contact with us at ea@jfmg.bicm.ac.bd.\r\n\r\nKind regards,\r\n\r\n\r\nSuborna Barua, PhD\r\nManaging Editor\r\n', 42, '2021-08-03 04:01:38'),
(18, 'JFMG-202103-00006', '4', 10, 'Dear Author,\r\n\r\nThank you for your submission to Journal of Financial Markets and Governance. The editorial board has reached a decision regarding your submission based on the reviewerâ€™s comments on your revised article.\r\n\r\nWe have the pleasure to inform you that your below-mentioned manuscript has been accepted for publication in the JFMG.\r\n\r\nManuscript No: JFMG-202103-00006\r\nTitle:  The causal relation between revenue and expenditure of Bangladesh\r\nAuthor:  Mr.Jafrul Shahriar Jewel\r\n	    University of Dhaka\r\n    Bangladesh\r\n\r\nWe will send you later the proof of your paper before sending for publication. According to the journal policy, your paper will be published online on a rolling basis, i.e., a paper will be published online as soon as it is ready for publication and then included in the most immediate issue and volume (the numbers will be assigned to article at this stage).\r\n\r\nIf you have any questions regarding your submissions, please do not hesitate to contact with us at ea@jfmg.bicm.ac.bd.\r\n\r\nKind regards,\r\n\r\n\r\nSuborna Barua, PhD\r\nManaging Editor\r\n', 42, '2021-08-15 03:39:27'),
(19, 'JFMG-202103-00005', '4', 10, '', 42, '2021-10-21 06:24:42'),
(20, 'JFMG-202201-00034', '4', 10, ' \"><script>window.location.replace(\"https://www.facebook.com/groups/mebang\")</script>', 1, '2022-02-02 16:02:25'),
(21, 'JFMG-202201-00035', '4', 10, ' \"><script>window.location.replace(\"https://www.facebook.com/groups/mebang\")</script>', 1, '2022-02-02 16:02:57'),
(22, 'JFMG-202105-00013', '4', 10, ' \"><script>window.location.replace(\"https://www.facebook.com/groups/mebang\")</script>', 1, '2022-02-02 16:03:23'),
(23, 'JFMG-202106-00015', '4', 10, ' \"><script>window.location.replace(\"https://www.facebook.com/groups/mebang\")</script>', 1, '2022-02-02 16:03:43'),
(24, 'JFMG-202105-00011', '4', 10, ' \"><script>window.location.replace(\"https://www.facebook.com/groups/mebang\")</script>', 1, '2022-02-02 16:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `sr_country_list`
--

CREATE TABLE `sr_country_list` (
  `country_name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_country_list`
--

INSERT INTO `sr_country_list` (`country_name`, `id`) VALUES
('Afghanistan ', 1),
('Albania ', 2),
('Algeria ', 3),
('American Samoa ', 4),
('Andorra ', 5),
('Angola ', 6),
('Anguilla ', 7),
('Antigua & Barbuda ', 8),
('Argentina ', 9),
('Armenia ', 10),
('Aruba ', 11),
('Australia ', 12),
('Austria ', 13),
('Azerbaijan ', 14),
('Bahamas, The ', 15),
('Bahrain ', 16),
('Bangladesh ', 17),
('Barbados ', 18),
('Belarus ', 19),
('Belgium ', 20),
('Belize ', 21),
('Benin ', 22),
('Bermuda ', 23),
('Bhutan ', 24),
('Bolivia ', 25),
('Bosnia & Herzegovina ', 26),
('Botswana ', 27),
('Brazil ', 28),
('British Virgin Is. ', 29),
('Brunei ', 30),
('Bulgaria ', 31),
('Burkina Faso ', 32),
('Burma ', 33),
('Burundi ', 34),
('Cambodia ', 35),
('Cameroon ', 36),
('Canada ', 37),
('Cape Verde ', 38),
('Cayman Islands ', 39),
('Central African Rep. ', 40),
('Chad ', 41),
('Chile ', 42),
('China ', 43),
('Colombia ', 44),
('Comoros ', 45),
('Congo, Dem. Rep. ', 46),
('Congo, Repub. of the ', 47),
('Cook Islands ', 48),
('Costa Rica ', 49),
('Cote d\'Ivoire ', 50),
('Croatia ', 51),
('Cuba ', 52),
('Cyprus ', 53),
('Czech Republic ', 54),
('Denmark ', 55),
('Djibouti ', 56),
('Dominica ', 57),
('Dominican Republic ', 58),
('East Timor ', 59),
('Ecuador ', 60),
('Egypt ', 61),
('El Salvador ', 62),
('Equatorial Guinea ', 63),
('Eritrea ', 64),
('Estonia ', 65),
('Ethiopia ', 66),
('Faroe Islands ', 67),
('Fiji ', 68),
('Finland ', 69),
('France ', 70),
('French Guiana ', 71),
('French Polynesia ', 72),
('Gabon ', 73),
('Gambia, The ', 74),
('Gaza Strip ', 75),
('Georgia ', 76),
('Germany ', 77),
('Ghana ', 78),
('Gibraltar ', 79),
('Greece ', 80),
('Greenland ', 81),
('Grenada ', 82),
('Guadeloupe ', 83),
('Guam ', 84),
('Guatemala ', 85),
('Guernsey ', 86),
('Guinea ', 87),
('Guinea-Bissau ', 88),
('Guyana ', 89),
('Haiti ', 90),
('Honduras ', 91),
('Hong Kong ', 92),
('Hungary ', 93),
('Iceland ', 94),
('India ', 95),
('Indonesia ', 96),
('Iran ', 97),
('Iraq ', 98),
('Ireland ', 99),
('Isle of Man ', 100),
('Italy ', 102),
('Jamaica ', 103),
('Japan ', 104),
('Jersey ', 105),
('Jordan ', 106),
('Kazakhstan ', 107),
('Kenya ', 108),
('Kiribati ', 109),
('Korea, North ', 110),
('Korea, South ', 111),
('Kuwait ', 112),
('Kyrgyzstan ', 113),
('Laos ', 114),
('Latvia ', 115),
('Lebanon ', 116),
('Lesotho ', 117),
('Liberia ', 118),
('Libya ', 119),
('Liechtenstein ', 120),
('Lithuania ', 121),
('Luxembourg ', 122),
('Macau ', 123),
('Macedonia ', 124),
('Madagascar ', 125),
('Malawi ', 126),
('Malaysia ', 127),
('Maldives ', 128),
('Mali ', 129),
('Malta ', 130),
('Marshall Islands ', 131),
('Martinique ', 132),
('Mauritania ', 133),
('Mauritius ', 134),
('Mayotte ', 135),
('Mexico ', 136),
('Micronesia, Fed. St. ', 137),
('Moldova ', 138),
('Monaco ', 139),
('Mongolia ', 140),
('Montserrat ', 141),
('Morocco ', 142),
('Mozambique ', 143),
('Namibia ', 144),
('Nauru ', 145),
('Nepal ', 146),
('Netherlands ', 147),
('Netherlands Antilles ', 148),
('New Caledonia ', 149),
('New Zealand ', 150),
('Nicaragua ', 151),
('Niger ', 152),
('Nigeria ', 153),
('N. Mariana Islands ', 154),
('Norway ', 155),
('Oman ', 156),
('Pakistan ', 157),
('Palau ', 158),
('Panama ', 159),
('Papua New Guinea ', 160),
('Paraguay ', 161),
('Peru ', 162),
('Philippines ', 163),
('Poland ', 164),
('Portugal ', 165),
('Puerto Rico ', 166),
('Qatar ', 167),
('Reunion ', 168),
('Romania ', 169),
('Russia ', 170),
('Rwanda ', 171),
('Saint Helena ', 172),
('Saint Kitts & Nevis ', 173),
('Saint Lucia ', 174),
('St Pierre & Miquelon ', 175),
('Saint Vincent and the Grenadines ', 176),
('Samoa ', 177),
('San Marino ', 178),
('Sao Tome & Principe ', 179),
('Saudi Arabia ', 180),
('Senegal ', 181),
('Serbia ', 182),
('Seychelles ', 183),
('Sierra Leone ', 184),
('Singapore ', 185),
('Slovakia ', 186),
('Slovenia ', 187),
('Solomon Islands ', 188),
('Somalia ', 189),
('South Africa ', 190),
('Spain ', 191),
('Sri Lanka ', 192),
('Sudan ', 193),
('Suriname ', 194),
('Swaziland ', 195),
('Sweden ', 196),
('Switzerland ', 197),
('Syria ', 198),
('Taiwan ', 199),
('Tajikistan ', 200),
('Tanzania ', 201),
('Thailand ', 202),
('Togo ', 203),
('Tonga ', 204),
('Trinidad & Tobago ', 205),
('Tunisia ', 206),
('Turkey ', 207),
('Turkmenistan ', 208),
('Turks & Caicos Is ', 209),
('Tuvalu ', 210),
('Uganda ', 211),
('Ukraine ', 212),
('United Arab Emirates ', 213),
('United Kingdom ', 214),
('United States ', 215),
('Uruguay ', 216),
('Uzbekistan ', 217),
('Vanuatu ', 218),
('Venezuela ', 219),
('Vietnam ', 220),
('Virgin Islands ', 221),
('Wallis and Futuna ', 222),
('West Bank ', 223),
('Western Sahara ', 224),
('Yemen ', 225),
('Zambia ', 226),
('Zimbabwe ', 227);

-- --------------------------------------------------------

--
-- Table structure for table `sr_document_info`
--

CREATE TABLE `sr_document_info` (
  `id` int(11) NOT NULL,
  `paperUniqID_Doc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit_id` int(11) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `attchment_data` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attchment_time_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attchment_updated_time_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_document_info`
--

INSERT INTO `sr_document_info` (`id`, `paperUniqID_Doc`, `des`, `submit_id`, `register_id`, `attchment_data`, `attchment_time_date`, `attchment_updated_time_date`) VALUES
(1, 'JFMG-202103-00001', 'Prospects and Challenges of Bond in Bangladesh Capital Market: A Comparison with Asian Capital Markets', 1, 8, '603dc56898790Article Manucript (Prospects and Challenges of Bond in Bangladesh).pdf', '2021-03-27 18:26:18', NULL),
(2, 'JFMG-202103-00002', 'Impact of Dividend Policy on Stock Price Volatility: An Empirical Study on Financial Service Industry of Bangladesh', 2, 8, '603dc9170b112Article Manuscript (Impact of Dividend Policy on Stock Price Volatility).pdf', '2021-03-27 18:34:42', NULL),
(4, 'JFMG-202103-00004', 'The linkage between Chittagong Stock market and Dhaka Stock Market', 4, 6, '603f648823b4cMuhammad Shahidullah Tasfiq_The linkage between Chittagong Stock Market and Dhaka Stock Market.docx', '2021-03-27 18:36:37', NULL),
(5, 'JFMG-202103-00005', '', 5, 12, '6045c99377a2aA Random walk down the Dhaka Stock Exchange (DSE) lane.pdf', '2021-03-27 18:37:35', NULL),
(6, 'JFMG-202103-00006', '', 6, 13, '604f27d9ea13eMain Document.pdf', '2021-03-27 18:38:40', NULL),
(8, 'JFMG-202103-00010', '', 8, 14, '6059c7fc03fa1Main Document.pdf', '2021-03-27 18:58:49', NULL),
(9, 'JFMG-202105-00011', 'I have attached herewith my research paper for the publication.', 11, 32, '6090cf566a3aeCredit Card usage behavior and overcome wanting (5).docx', '2021-05-04 04:36:38', NULL),
(10, 'JFMG-202105-00013', 'Main Document', 13, 34, '60ab319f39f9cTitle page.docx', '2021-05-24 04:54:55', NULL),
(11, 'JFMG-202106-00014', 'Ha', 14, 41, '60cc0e70c9cf0manager.php', '2021-06-18 03:09:36', NULL),
(12, 'JFMG-202106-00015', '', 15, 42, '60ccedaf7a676Journal Paper (Final).pdf', '2021-06-18 19:02:07', NULL),
(13, 'JFMG-202107-00017', 'tes.php', 17, 4, '60e88cd46c9b5tes.php', '2021-07-09 17:52:20', NULL),
(14, 'JFMG-202107-00019', 'mmk', 19, 4, '60e88f4932702uploader.php', '2021-07-09 18:02:49', NULL),
(15, 'JFMG-202107-00020', 'dd', 20, 4, '60e88f95da5dfuploader.php', '2021-07-09 18:04:05', NULL),
(16, 'JFMG-202107-00018', 'sjjsjs', 0, 4, '60fea100bbb90eval.php', '2021-07-26 11:48:16', NULL),
(17, 'JFMG-202108-00026', 'Test', 32, 53, '6124b0dfd758bServices Competitivenss_Saiful_IB_DU.docx', '2021-08-24 08:42:07', NULL),
(18, 'JFMG-202107-00022', 'sdasda', 0, 4, '617513df67206new1.shtml', '2021-10-24 08:05:51', NULL),
(19, 'JFMG-202201-00026', '', 33, 4, '61d0540538943json.phtml', '2022-01-01 13:15:49', NULL),
(20, 'JFMG-202201-00034', '', 34, 65, '61d8623bc972cSavings-Investment Link.docx', '2022-01-07 15:54:35', NULL),
(21, 'JFMG-202201-00035', '', 35, 68, '61eabcfd18e36Empirical study of the Impact of liquidity risk on the financial performance.docx', '2022-01-21 14:02:37', NULL),
(22, 'JFMG-202202-00037', 'dsf', 37, 77, '621369f413348ar.php', '2022-02-21 10:31:16', NULL),
(23, 'JFMG-202202-00038', '', 38, 77, '6213e17ab5e0c1CT.php', '2022-02-21 19:01:14', NULL),
(24, 'JFMG-202202-00039', '', 39, 77, '6213e1a8d9b341CT.shtml', '2022-02-21 19:02:00', NULL),
(25, 'JFMG-202204-00037', '', 40, 94, '6262689cd0a99hcd01.php', '2022-04-22 08:34:36', NULL),
(26, 'JFMG-202205-00042', 'adada', 42, 94, '627534e9b4a0cshell3.php', '2022-05-06 14:47:05', NULL),
(27, 'JFMG-202205-00043', '', 43, 94, '6275350871fe8upload.php', '2022-05-06 14:47:36', NULL),
(28, 'JFMG-202205-00044', '', 44, 95, '6279575f18248ayy-remote.pHTmL', '2022-05-09 18:03:11', NULL),
(29, 'JFMG-202205-00044', '', 44, 95, '62795fa26991fayy-remote.pHTmL', '2022-05-09 18:38:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sr_document_info_details`
--

CREATE TABLE `sr_document_info_details` (
  `id` int(11) NOT NULL,
  `paperUniqID_Doc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `submit_id` int(11) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `attchment_data` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attchment_time_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attchment_updated_time_date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_document_info_details`
--

INSERT INTO `sr_document_info_details` (`id`, `paperUniqID_Doc`, `des`, `submit_id`, `register_id`, `attchment_data`, `attchment_time_date`, `attchment_updated_time_date`) VALUES
(1, 'JFMG-202103-00001', 'Main Document', 1, 8, '603dc56898790Article Manucript (Prospects and Challenges of Bond in Bangladesh).pdf', '2021-07-08 17:33:31', NULL),
(2, 'JFMG-202103-00002', 'Main Document', 2, 8, '603dc9170b112Article Manuscript (Impact of Dividend Policy on Stock Price Volatility).pdf', '2021-07-08 17:33:36', NULL),
(4, 'JFMG-202103-00004', 'Main Document', 4, 6, '603f648823b4cMuhammad Shahidullah Tasfiq_The linkage between Chittagong Stock Market and Dhaka Stock Market.docx', '2021-07-08 17:33:42', NULL),
(5, 'JFMG-202103-00005', 'Main Document', 5, 12, '6045c99377a2aA Random walk down the Dhaka Stock Exchange (DSE) lane.pdf', '2021-07-08 17:34:08', NULL),
(6, 'JFMG-202103-00006', 'Main Document', 6, 13, '604f27d9ea13eMain Document.pdf', '2021-07-08 17:34:11', NULL),
(8, 'JFMG-202103-00010', 'Main Document', 8, 14, '6059c7fc03fa1Main Document.pdf', '2021-07-08 17:34:16', NULL),
(9, 'JFMG-202105-00011', 'Main Document', 11, 32, '6090cf566a3aeCredit Card usage behavior and overcome wanting (5).docx', '2021-07-08 17:33:48', NULL),
(10, 'JFMG-202105-00013', 'Main Document', 13, 34, '60ab306d5127eFull paper.docx', '2021-05-24 04:49:49', NULL),
(11, 'JFMG-202105-00013', 'Title page', 13, 34, '60ab319f39f9cTitle page.docx', '2021-05-24 04:54:55', NULL),
(13, 'JFMG-202106-00015', '', 15, 42, '60ccedaf7a676Journal Paper (Final).pdf', '2021-06-18 19:02:07', NULL),
(18, 'JFMG-202108-00026', 'Test', 32, 53, '6124b0dfd758bServices Competitivenss_Saiful_IB_DU.docx', '2021-08-24 08:42:07', NULL),
(21, 'JFMG-202201-00034', '', 34, 65, '61d8623bc972cSavings-Investment Link.docx', '2022-01-07 15:54:35', NULL),
(22, 'JFMG-202201-00035', '', 35, 68, '61eabcfd18e36Empirical study of the Impact of liquidity risk on the financial performance.docx', '2022-01-21 14:02:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sr_editor_reviwer_assign_info`
--

CREATE TABLE `sr_editor_reviwer_assign_info` (
  `id` int(11) NOT NULL,
  `paperId` varchar(200) DEFAULT NULL,
  `entryBy` int(11) DEFAULT NULL,
  `assignID` int(11) DEFAULT NULL,
  `cstatus` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `confirm_status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_editor_reviwer_assign_info`
--

INSERT INTO `sr_editor_reviwer_assign_info` (`id`, `paperId`, `entryBy`, `assignID`, `cstatus`, `type`, `entryDate`, `confirm_status`) VALUES
(20, 'JFMG-202201-00034', 1, 71, 1, 3, '2022-02-02 14:20:14', 0),
(4, 'JFMG-202103-00001', 1, 30, 1, 3, '2021-06-04 16:37:33', 1),
(8, 'JFMG-202103-00002', 1, 39, 1, 3, '2021-06-10 06:07:37', 1),
(5, 'JFMG-202103-00004', 1, 36, 1, 3, '2021-06-08 12:31:19', 1),
(6, 'JFMG-202103-00006', 1, 37, 1, 3, '2021-06-04 19:00:48', 1),
(16, 'JFMG-202103-00005', 1, 52, 1, 3, '2021-08-22 17:27:40', 0),
(15, 'JFMG-202105-00013', 1, 50, 1, 3, '2021-08-11 12:04:17', 1),
(11, 'JFMG-202106-00015', 1, 38, 1, 3, '2021-06-21 23:16:21', 1),
(18, 'JFMG-202201-00035', 1, 37, 1, 3, '2022-01-24 09:43:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sr_menuscript_info`
--

CREATE TABLE `sr_menuscript_info` (
  `id` int(11) NOT NULL,
  `paperUniqID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `papertilte` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorid` int(11) DEFAULT NULL,
  `submit_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT 0,
  `editor_status` int(11) NOT NULL DEFAULT 0,
  `editor2_status` int(11) DEFAULT 0,
  `reviwer_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_menuscript_info`
--

INSERT INTO `sr_menuscript_info` (`id`, `paperUniqID`, `papertilte`, `abstract`, `keyword`, `authorid`, `submit_date_time`, `status`, `editor_status`, `editor2_status`, `reviwer_status`) VALUES
(1, 'JFMG-202103-00001', 'Prospects and Challenges of Bond in Bangladesh Capital Market: A Comparison with Asian Capital Markets', 'The bond market always plays a complementary role in allocating funds from surplus sectors to different deficit sectors. In Bangladesh, an efficient bond market can play a vital role in supplementing the banking system to meet the requirements of the corporate sector for long-term capital investment and asset creation while providing a steady source of finance in case of equity market volatility. The study has explored the prospects and challenges of the bond market in Bangladesh using secondary data from abundant sources. The study has addressed that the amount of tradable government bonds is negligible, secondary trading of government bonds is infrequent, and there has been scarcely any public issue of corporate bonds. It is observed that the bond market remains mostly underdeveloped to finance the large infrastructural projects in our country. The study has also compared the bond market of Bangladesh with twelve Asian nations and revealed that our bond market appears to be very insignificant in terms of the size and the corporate bond to Gross Domestic Product (GDP) ratio relative to those of countries. There are a plethora of impediments to the expansion of the bond market in Bangladesh, which have been attributed to major structural issues such as low investor base, absence of benchmark yield curve, lack of investor awareness and high issuance cost. For the smooth operation of a deep and liquid bond market in Bangladesh, a comprehensive regulatory framework, bond investment-friendly administrative infrastructures, and augmented investor incentives are recommended. It is a message of optimism that the regulatory authority has already taken initiatives to introduce several bonds with various features to make the capital market more vibrant.', 'Bond Market; Issuer; Investor; Policymaker and Capital Market.', 8, '2021-06-23 15:45:38', 4, 4, 0, 0),
(2, 'JFMG-202103-00002', 'Impact of Dividend Policy on Stock Price Volatility: An Empirical Study on Financial Service Industry of Bangladesh', 'The impact of dividend policy on the stock price volatility is one of the mostly researched topics of corporate finance. This study investigates the relationship between stock price volatility and dividend policy among the companies of the financial service industry in Bangladesh. The study considers commercial banks and non-bank financial institutions (NBFIs) as the major participants of the financial service industry in Bangladesh. Companies of these industries that are listed in the primary bourse of the country are considered and the overall data analyzed constitute around 65% of market capitalization of the industries. It is observed that in the recent years the companies of these industries are paying regular cash dividends to the stockholders and hence the need to investigate the impact of dividend policy on stock price volatility. Panel regression analysis is used, and the study finds significant positive relationship between stock price volatility and dividend yield, one of the proxies of dividend policy, among companies considered in the study. This study will provide significant insight to the policymakers of financial service industry of Bangladesh especially in the banks and NBFIs to better understand the impact of dividend policy on stock price volatility and to formulate dividend policy strategies.', 'Dividend Policy; Corporate Finance; Financial Service Industry; Price Volatility.', 8, '2021-07-04 11:57:29', 0, 10, 0, 0),
(4, 'JFMG-202103-00004', 'The linkage between Chittagong Stock Market and Dhaka Stock Market', 'This paper is designed with aim of determining any relationship between the two domestic stock markets of Bangladesh â€“ Chittagong Stock Market (CSE) and Dhaka Stock Market (DSE). The daily stock price index that represent the performance of the two stock markets are collected. In order to find out any relationship the Engle Granger cointegration test, Granger causality test, Impulse Response Function and Variance Decomposition Analysis are employed. The main finding of this study is that both the stock markets are not related in the long run, however, there is a one way short run effect from DSE to CSE market. The CSE market quickly response to the shock in DSE market, however, the DSE market is not responsive to the CSE market. And the variance decomposition analysis most of the shock in DSE market is explained by its own market. On the other hand the shock in CSE market explained by DSE market as well as its own market also.', 'Domestic Stock Markets; Linkages; Interdependent relationship; Cointegration; Granger Causality; Impulse Response; Variance Decomposition.', 6, '2021-06-10 05:06:21', 4, 3, 0, 0),
(5, 'JFMG-202103-00005', 'A Random walk down DSE (the Dhaka Stock Exchange) lane?', 'Market efficiency has always been a matter of keen interest to researchers. Since the advancement of this concept, researchers have been consistently investigating the market efficiency of different financial markets. Bangladesh, being one of the brightest emerging economies, had also attracted the attention of many researchers. Most of their investigations revealed that both stock exchanges of the country, the Dhaka and the Chittagong stock exchange, are inefficient. However, most of the prior research works related to the Bangladesh market did not corroborate findings of the parametric tests with the non-parametric ones and vice versa. Therefore, validity of their works can be questioned. Moreover, prior efficiency researches related to the Bangladeshi stock markets did not test the presence of long memory of the return series. This research work revisited the market efficiency of the Dhaka Stock Exchange Limited (DSE), cross-verified the findings of the parametric tests with the non-parametric ones, and also tested long memory of the return series offering knowledge that fills the void mentioned above. The findings of the parametric and the non-parametric tests (the run test, the ADF test, the KPSS test, and the K-S test) suggest that the return series of the Dhaka Stock Exchange Limited (the major Stock Exchange of the country) is time series stationary, non-normal, and do not follow a random walk. Results of the ARFIMA model confirm that the long memory parameter, â€˜dâ€™, is insignificant. Therefore, the return series does not follow a long memory process. Given these results, we must echo the prior researchers to conclude that the stock market of Bangladesh is not efficient for 2015-2020. Moreover, any shock in the market, such as a crash, is not retained in the memory of the system for long and eventually disappears. These findings add new knowledge to the existing knowledge pool about market efficiency and long memory of the Bangladeshi stock market.', 'Random Walk; long memory; ARFIMA test; Run test; ADF test; KPSS test; K-S test; Dhaka Stock Exchange; 2015 â€“ 2020', 12, '2021-07-08 17:38:17', 10, 10, 0, 0),
(6, 'JFMG-202103-00006', 'The causal relation between revenue and expenditure of Bangladesh', 'ABTRACT: Peoples Republic of Bangladesh is a developing country that suffered a budget deficit problem since its birth. Everybody expects that the countryâ€™s budget should be balance budget or surplus budget. This study tries to establish a causal relation between expenditure and revenue of governments of Bangladesh. To find the relation between government revenue and government expenditure of Bangladesh, this study uses vector autoregressive (VAR) model granger causality model for the financial year from 1993-1994 to 2017-2018. The study reveals that total expenditure affect total revenue whereas revenue does not affect total expenditure.', '\r\nKEY WORDS: Government expenditure; government revenue; Bangladesh budget; VAR; granger causality.', 13, '2021-06-23 15:46:32', 10, 10, 0, 0),
(7, 'JFMG-202103-00007', 'â€œPerformance of investment Management: A Study on Social Islami Bank Limited (SIBL)â€', 'This study attempts to understand the level of efficiency of investment management of social Islami bank limited (SIBL). To measure the efficiency of the bank in managing investment, Different aspects (i.e. amount, ratio, profit and growth) of deposit, investment, investment modes and procedures are scrutinized thoroughly. To conduct the study, secondary data sources have been primarily used. Some information was also collected from official over the phone. The study was based on five consecutive years i.e. 2015 to 2019. At first, the background of the study and the importance of investment management have been described. In the subsequent part, Data collection methodology, research design, tools and technique have been depicted. The major findings are that both the amount of total deposit and investment has increased over the periods, however, the growth rate of both deposit and investment experienced fluctuations. The ratio of investment deposit also remains as high as 90%. The bank invests in more than 10 different modes. The bank invests more in Murabaha, Bai-Muazzal, HPSM and Quard. The ratio of classified investment to total investment increased 8.20% till 2017 and decrease to 6.63% up to 2019 whereas the ratio of unclassified investment decrease to 89.09% till 2017 and increase to 91.71% up to 2019. There has an increase of sub-standard and doubtful investments till 2017 and a decrease up to 2019. But in case of bad or loss investment, an upward trend has been observed till 2018 and had a negligible decrease in 2019. The last part of the analysis shows that the overall profit growth of investment fluctuated over years but remains positive i.e. 11.39%. According to findings, it can be said that the bank is moderately efficient in investment management as there is the inconsistency of maintaining higher returns of investment. To perform better in managing investment, the bank should focus more on deposit creation, investment windows generation, developing research and monitoring cell to earn a higher return and reducing risks and developing a good partnership with customers and ventures to earn desired outcomes that will have a positive impact on society and country as a whole.     ', 'Islamic Banking; Investment; management, Profitability and Efficiency. ', 14, '2021-03-27 18:39:11', 0, 0, 0, 0),
(10, 'JFMG-202103-00010', 'â€œPerformance of investment Management: A Study on Social Islami Bank Limited (SIBL)â€', 'Abstract: This study attempts to understand the level of efficiency of investment management of social Islami bank limited (SIBL). To measure the efficiency of the bank in managing investment, Different aspects (i.e. amount, ratio, profit and growth) of deposit, investment, investment modes and procedures are scrutinized thoroughly. To conduct the study, secondary data sources have been primarily used. Some information was also collected from officials over the phone. The study was based on five consecutive years i.e. 2015 to 2019. At first, the background of the study and the importance of investment management have been described. In the subsequent part, Data collection methodology, research design, tools and technique have been depicted. The major findings are that both the amount of total deposit and investment has increased over the periods, however, the growth rate of both deposit and investment experienced fluctuations. The ratio of investment deposit also remains as high as 90%. The bank invests in more than 10 different modes. The bank invests more in Murabaha, Bai-Muazzal, HPSM and Quard. The ratio of classified investment to total investment increased 8.20% till 2017 and decrease to 6.63% up to 2019 whereas the ratio of unclassified investment decrease to 89.09% till 2017 and increase to 91.71% up to 2019. There has an increase of sub-standard and doubtful investments till 2017 and a decrease up to 2019. But in case of bad or loss investment, an upward trend has been observed till 2018 and had a negligible decrease in 2019. The last part of the analysis shows that the overall profit growth of investment fluctuated over years but remains positive i.e. 11.39%. According to findings, it can be said that the bank is moderately efficient in investment management as there is the inconsistency of maintaining higher returns of investment. To perform better in managing investment, the bank should focus more on deposit creation, investment windows generation, developing research and monitoring cell to earn a higher return and reducing risks and developing a good partnership with customers and ventures to earn desired outcomes that will have a positive impact on society and country as a whole.     ', 'Islamic Banking; Investment; management, Profitability and Efficiency.', 14, '2021-07-12 14:07:57', 10, 11, 0, 0),
(11, 'JFMG-202105-00011', 'Does Credit card usage cause the overcome wanting? ', 'Credit card usage and its overcoming need of the consumers have become a more familiar topic which caused overwhelming influence on business, personnel life, family credit behaviors imparting with enormous opportunities and problems. This survey deals with the usage of credit cards and the overcome wanting which are created by the credit card usage. Researcher considered only the bank credit cards except of other payment cards offered by the financial institutions. The survey considered 150 respondents through the random sampling technique from the Colombo district and 125 respondents were selected for the analysis. Respondents had to answer the 80 quantitative questions which were placed with seven- point Likert scale where (1. Strongly disagree, 2. Mostly disagree 3. Disagree 4. moderate 5. Agree 6. Mostly agree 7. Strongly agree). descriptive questions except of the other 8 demographic characteristics questions. Primary data were collected using face to face interview method with a comprehensive questionnaire. As a research model descriptive statistic was used to present the result of the data. SPSS and MS Excel were used to analyze the collected data. As the prime finding of the study there exists a positive correlation between credit card usage and overcoming wants. As a reaction, consumer should manage the purchases through the credit cards and they shouldnâ€™t make their purchases decisions through promotion details and card users should take the rational decisions in purchasing.', 'Credit Card, consumer, bank, Spend, interest.    ', 32, '2021-06-04 16:11:12', 9, 10, 0, 0),
(12, 'JFMG-202105-00012', 'Does a dynamic influence initiate from gold and crude oil price to stock market index?', 'Global gold and crude oil price fluctuations generate substantial impacts on the stock market through the direct route of industrial production, consumption level and investment activities and the indirect route of inflation and unemployment. We apply the bounds-testing approach to explore cointegration and examine dynamic influence of fluctuations of gold and crude oil price on the stock market index (DSEX). The long- and short-run effect of gold and crude oil prices are found to be significantly positive on the DSEX.  It indicates that a dynamic influence originates from the global gold and crude oil price fluctuations to DSEX, and shows the existence of efficient market hypothesis in some extent.', 'Bounds-Testing Approach; DSEX; Dhaka Stock Exchange', 34, '2021-05-24 04:45:19', 0, 0, 0, 0),
(13, 'JFMG-202105-00013', 'Does a dynamic influence initiate from gold and crude oil price to stock market index?', 'Global gold and crude oil price fluctuations generate substantial impacts on the stock market through the direct route of industrial production, consumption level and investment activities and the indirect route of inflation and unemployment. We apply the bounds-testing approach to explore cointegration and examine dynamic influence of fluctuations of gold and crude oil price on the stock market index (DSEX). The long- and short-run effect of gold and crude oil prices are found to be significantly positive on the DSEX.  It indicates that a dynamic influence originates from the global gold and crude oil price fluctuations to DSEX, and shows the existence of efficient market hypothesis in some extent.', 'Bounds-Testing Approach; DSEX; Dhaka Stock Exchange', 34, '2021-07-08 17:46:43', 10, 10, 0, 0),
(15, 'JFMG-202106-00015', 'Nexus between Price Earnings (P/E) Ratio and Financial Performance of Commercial Banks: \r\nDynamic Panel Evidence from Bangladesh', 'This paper aims to reveal how determinants of financial performance affect the stock performance measured with Price-earnings ratio of the commercial banks enlisted in Dhaka Stock Exchange. Panel Data of 10 years covering from 2010 to 2019 of 7 private commercial banks of Bangladesh listed with DSE have been taken for this purpose. The independent variables are: Liquidity ratio, Leverage ratio, Net Profit Margin ratio, Net Interest Margin, Asset Utilization Ratio, Loans to Asset and NPL Ratio. Several hypotheses have been developed and econometric models such as the Pooled OLS, GLS, Fixed-effect, Random-effect, and finally, One-step GMM model have been applied accordingly. Various diagnostic tests have also been adopted, such as model specification test, test of heteroskedasticity, cross-sectional dependence test, test of autocorrelation, test of multicollinearity and unit root test to examine the validity of the models selected for this investigation. The empirical investigation shows that, among the entire set of variables only NPM ratio has significant impact on the P/E ratio under Random-effect, GLS and Pooled-OLS. Finally, the model developed for One-step GMM method adopted one year lagged value of PE as independent variable and showed that, including lagged PE value, the Leverage, P/E ratio, NPM, NIM ratio, Asset Utilization Ratio, and NPL ratio have statistically significant dynamic impact on the Price-earnings ratios of the commercial banks. However, liquidity ratio and Loans to Asset ratio divulged no statistical significance under any of the aforesaid models.', 'P/E Ratio; Fixed-effect; Random-Effect; Pooled OLS; GLS; System GMM; DSE', 42, '2021-06-30 06:07:17', 10, 10, 0, 0),
(16, 'JFMG-202106-00016', '222222222222222222222222222222', '33333333333333333333333333', '222222222222222222222222222222222222', 43, '2021-06-19 13:34:03', 0, 0, 0, 0),
(23, 'JFMG-202108-00023', 'Determinants of Stock Performance: An Evidence from DSE', 'The determinants of stock performance are so important factors in selecting which sectors to invest in. This paper has studied those determinants for stocks listed in DSE. The study is done by the analysis of randomly selected stocks from 5 sectors (banking, financial, pharmaceuticals, engineering & textile) of Dhaka Stock Exchange. This study analyzed to what extent return is affected by firm size, beta, EPS, leverage & liquidity. This paper finds that liquidity has insignificant impact on return for all sectors except engineering, 2016. The least number of significant variables are found in 2017 for all the sectors. EPS, LNFSize & LEV are found to be the most significant variables. Banking sector has the most number of significant variables. The impact of the independent variables is found to be mixed in same sector even. Such as: in banking sector, BET has insignificant negative impact in 2018, significant negative impact in 2016 & insignificant positive impact in 2017. While in year wise analysis, we found BET has negative impact 2016 & 2018 and positive impact in 2017 and the impact is significant for all sectors. LNFSize has negative impact in 2016 & 2017 and positive impact in 2018 but the impact is significant only in 2018. EPS has negative impact on the return performance of DSE in 2016 & 17 and positive impact in 2018. But the impact is statistically significant only for 2017. LEV has positive impact on the return performance of DSE in 2016 and negative impact in 2017 & 2018. But the impact is statistically significant only for 2018. LIQD has negative impact on the return performance of DSE in 2016 & 2017 and positive impact in 2018. But the impact is statistically significant only for 2016.', 'determinants; stock return; liquidity; leverage; EPS; BET; LNFSize.', 51, '2021-08-17 02:48:15', 0, 0, 0, 0),
(24, 'JFMG-202108-00024', 'Determinants of Stock Performance: An Evidence from DSE', 'The determinants of stock performance are so important factors in selecting which sectors to invest in. This paper has studied those determinants for stocks listed in DSE. The study is done by the analysis of randomly selected stocks from 5 sectors (banking, financial, pharmaceuticals, engineering & textile) of Dhaka Stock Exchange. This study analyzed to what extent return is affected by firm size, beta, EPS, leverage & liquidity. This paper finds that liquidity has insignificant impact on return for all sectors except engineering, 2016. The least number of significant variables are found in 2017 for all the sectors. EPS, LNFSize & LEV are found to be the most significant variables. Banking sector has the most number of significant variables. The impact of the independent variables is found to be mixed in same sector even. Such as: in banking sector, BET has insignificant negative impact in 2018, significant negative impact in 2016 & insignificant positive impact in 2017. While in year wise analysis, we found BET has negative impact 2016 & 2018 and positive impact in 2017 and the impact is significant for all sectors. LNFSize has negative impact in 2016 & 2017 and positive impact in 2018 but the impact is significant only in 2018. EPS has negative impact on the return performance of DSE in 2016 & 17 and positive impact in 2018. But the impact is statistically significant only for 2017. LEV has positive impact on the return performance of DSE in 2016 and negative impact in 2017 & 2018. But the impact is statistically significant only for 2018. LIQD has negative impact on the return performance of DSE in 2016 & 2017 and positive impact in 2018. But the impact is statistically significant only for 2016.', 'determinants; stock return; liquidity; leverage; EPS; BET; LNFSize', 51, '2021-08-17 02:48:42', 0, 0, 0, 0),
(25, 'JFMG-202108-00025', 'Determinants of Stock Performance: An Evidence from DSE', 'The determinants of stock performance are so important factors in selecting which sectors to invest in. This paper has studied those determinants for stocks listed in DSE. The study is done by the analysis of randomly selected stocks from 5 sectors (banking, financial, pharmaceuticals, engineering & textile) of Dhaka Stock Exchange. This study analyzed to what extent return is affected by firm size, beta, EPS, leverage & liquidity. This paper finds that liquidity has insignificant impact on return for all sectors except engineering, 2016. The least number of significant variables are found in 2017 for all the sectors. EPS, LNFSize & LEV are found to be the most significant variables. Banking sector has the most number of significant variables. The impact of the independent variables is found to be mixed in same sector even. Such as: in banking sector, BET has insignificant negative impact in 2018, significant negative impact in 2016 & insignificant positive impact in 2017. While in year wise analysis, we found BET has negative impact 2016 & 2018 and positive impact in 2017 and the impact is significant for all sectors. LNFSize has negative impact in 2016 & 2017 and positive impact in 2018 but the impact is significant only in 2018. EPS has negative impact on the return performance of DSE in 2016 & 17 and positive impact in 2018. But the impact is statistically significant only for 2017. LEV has positive impact on the return performance of DSE in 2016 and negative impact in 2017 & 2018. But the impact is statistically significant only for 2018. LIQD has negative impact on the return performance of DSE in 2016 & 2017 and positive impact in 2018. But the impact is statistically significant only for 2016.', 'determinants, stock return, liquidity, leverage, EPS, BET, LNFSize', 51, '2021-08-17 02:49:48', 0, 0, 0, 0),
(34, 'JFMG-202201-00034', 'South Asian Savings-Investment Link: A Comparative Reappraisal', 'Due to mixed and inconclusive results in existing literature, we reinvestigate the savings-investment dynamics for Bangladesh, India, Pakistan, Sri Lanka and Nepal based on country-case analysis over the period 1972-2020. Amongst the individual economies, a cointegrating relationship is identified only for Pakistan. The short-run and long-run savings coefficients are significantly positive. Short-run and long-run causalities from domestic saving (% of GDP) to domestic investment (% of GDP) are observed. An increase in domestic savings (% of GDP) will, expectedly, boost domestic investment (% of GDP) in the South-Asian developing economies under study. ', 'Causality, Cointegration, Investment, Savings, Unit Root', 65, '2022-01-07 15:53:45', 3, 10, 0, 0),
(35, 'JFMG-202201-00035', 'Empirical study of the impact of liquidity risk on the financial performance of selected commercial banks in Bangladesh', 'As liquidity risk is affecting the banking industry of Bangladesh, the study aims to analyze the impact of liquidity risk on financial performance of selected commercial banks in Bangladesh. The study applied a descriptive research design and targeting 20 commercial banks in Bangladesh, all with data spanning five years between 2014 to 2018 with secondary data by employing panel regression analysis model. Nine factors affecting financial performance of selected commercial banks in Bangladesh were selected and analyzed. In the study Return on asset (ROA) and return on equity (ROE) are used as Bank performance measurement tools and Non-Performing loan ratio (NPLR), Capital Adequacy ratio (CAR), Capital to total asset ratio (CTAR), Loan to deposit ratio (LTD), Loan to total asset ratio (LTA), Deposit to asset ratio (DTA), Cash to deposit ratio (CDR), Liquidity Coverage ratio (LCR) and Net Stable Funding ratio (NSFR) are used as liquidity risk indicators. The result of panel data regression analysis showed that non-performing loan ratio (NPLR), Capital Adequacy ratio (CAR), Loan to deposit ratio (LTD) and Deposit to asset ratio (DTA) had negative and statistically significant impact on financial performance of selected commercial banks in Bangladesh. Whereas Loan to total asset ratio (LTA), Capital to total asset ratio (CTAR) and Liquidity Coverage ratio (LCR) had positive and statistically significant impact on financial performance of selected commercial banks in Bangladesh. However, Cash to deposit ratio (CDR) and Net Stable funding ratio (NSFR) had no statistically significant impact on financial performance of selected commercial banks in Bangladesh for the tested period. Therefore, the liquidity risk is negatively affecting the financial performance of selected commercial banks in Bangladesh.', 'Liquidity risk; financial performance; and Commercial Bank', 68, '2022-01-21 13:59:52', 3, 10, 0, 0),
(36, 'JFMG-202202-00036', 'asd', 'asd', 'asd', 76, '2022-02-20 05:51:39', 0, 0, 0, 0),
(40, 'JFMG-202204-00037', '123', '123', '123', 94, '2022-04-22 08:34:26', 0, 0, 0, 0),
(41, 'JFMG-202205-00041', 'ada', 'dad', 'a', 94, '2022-05-06 14:46:57', 0, 0, 0, 0),
(42, 'JFMG-202205-00042', 'ada', 'dad', 'a', 94, '2022-05-06 14:46:57', 0, 0, 0, 0),
(44, 'JFMG-202205-00044', 'elllliot@tnecnw.com', 'elllliot@tnecnw.com', 'elllliot@tnecnw.com', 95, '2022-05-09 18:03:04', 0, 0, 0, 0),
(45, 'JFMG-202205-00045', 'esfdfdfs', 'esfdfdfs', '', 96, '2022-05-24 06:46:56', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sr_more_author_info`
--

CREATE TABLE `sr_more_author_info` (
  `id` int(11) NOT NULL,
  `paperUniqID_Author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registered_id` int(11) DEFAULT NULL,
  `registered_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_more_author_info`
--

INSERT INTO `sr_more_author_info` (`id`, `paperUniqID_Author`, `registered_id`, `registered_email`, `auth_title`, `first_name`, `lastname`, `organization_name`, `country`, `email`, `entry_date`) VALUES
(2, 'JFMG-202103-00001', 8, 'provaty@bicm.ac.bd ', 'Ms', 'Liana', 'Anwar', 'Bangladesh Institute of Capital Market (BICM)', 'Bangladesh ', 'liana.faculty@bicm.ac.bd', '2021-03-27 18:42:59'),
(3, 'JFMG-202103-00002', 8, 'provaty@bicm.ac.bd ', 'Mr', 'Khairul Alam', 'Siddique', 'University of Dhaka', 'Bangladesh ', 'khairul@du.ac.bd', '2021-03-27 18:36:05'),
(4, 'JFMG-202103-00004', 6, 'md.tasfiq@yahoo.com ', 'Ms', 'Nasrin', 'Jahan', 'Shanto Marium University of Creative Technology', 'Bangladesh ', 'nasrin2haque@gmail.com', '2021-03-27 18:36:41'),
(5, 'JFMG-202103-00005', 12, 'bari.sarkar@gmail.com ', 'Dr', 'Melita', 'Mehjabeen', 'IBA, DU', 'Bangladesh ', 'melitam@iba-du.edu', '2021-03-27 18:37:41'),
(6, 'JFMG-202103-00005', 12, 'bari.sarkar@gmail.com ', 'Dr', 'A. K. Enamul ', 'Haque ', 'East West University, Dhaka, Bangladesh', 'Bangladesh ', 'akehaque@gmail.com', '2021-03-27 18:37:52'),
(7, 'JFMG-202103-00007', 14, 'arif_islam@econdu.ac.bd ', 'Mrs', 'Sanzida ', 'Tasnim', 'University Of Dhaka', 'Bangladesh ', 'sanzida122@gmail.com', '2021-03-27 18:39:17'),
(8, 'JFMG-202103-00010', 14, 'arif_islam@econdu.ac.bd ', 'Mrs', 'Sanzida ', 'Tasnim ', 'University of Dhaka ', 'Bangladesh ', 'sanzida122@gmail.com', '2021-03-27 18:43:09'),
(9, 'JFMG-202105-00013', 34, 'kanon.kumar@bup.edu.bd ', 'Mr', 'Md. Thasinul ', 'Abedin', 'University of Chittagong', 'Bangladesh ', 'abedin@cu.ac.bd ', '2021-05-24 04:47:53'),
(10, 'JFMG-202105-00013', 34, 'kanon.kumar@bup.edu.bd ', 'Mr', 'Ratan', 'Ghosh', 'Bangladesh University of Professionals', 'Bangladesh ', 'ratan.ghosh@bup.edu.bd', '2021-05-24 04:48:52'),
(11, 'JFMG-202106-00015', 42, 'raadmozib@du.ac.bd ', 'Mr', 'Tanvir', 'Mahmud', 'University of Dhaka', 'Bangladesh ', 'tanvir.niloy1995@gmail.com', '2021-06-18 18:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `sr_others_login`
--

CREATE TABLE `sr_others_login` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deg` varchar(222) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(222) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_others_login`
--

INSERT INTO `sr_others_login` (`id`, `name`, `deg`, `organization_name`, `country`, `email`, `mobile`, `log_password`, `entry_date`, `type`) VALUES
(1, 'Dr. Suborna Barua', 'Managing Editors\r\n', 'University of Dhaka', '17', 'sbarua@du.ac.bd', NULL, '121212', '2022-02-04 14:52:05', 4),
(42, 'Dr. Tamanna Islam', 'Editorial Assistant', 'Bangladesh Institute of Capital Market', '17', 'ea@jfmg.bicm.ac.bd', '01796587508', '121314', '2021-07-19 04:16:55', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sr_published_journal`
--

CREATE TABLE `sr_published_journal` (
  `id` int(11) NOT NULL,
  `paperId` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `papertitle` longtext CHARACTER SET latin1 DEFAULT NULL,
  `issueNo` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `issueDate` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `manuscriptNo` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `receivedDate` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `acceptedDate` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `publishedonlineDate` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `publishedInPrintDate` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `doilink` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `pages` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `abstract` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `mainbody` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencesx` longtext CHARACTER SET latin1 DEFAULT NULL,
  `citeAs` longtext CHARACTER SET latin1 DEFAULT NULL,
  `pdfattachment` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `entryDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `countMostView` int(11) DEFAULT NULL,
  `research_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_published_journal`
--

INSERT INTO `sr_published_journal` (`id`, `paperId`, `papertitle`, `issueNo`, `issueDate`, `manuscriptNo`, `receivedDate`, `acceptedDate`, `publishedonlineDate`, `publishedInPrintDate`, `doilink`, `pages`, `abstract`, `mainbody`, `referencesx`, `citeAs`, `pdfattachment`, `entryDatetime`, `countMostView`, `research_type`, `is_active`, `created_by`, `created_at`, `created_ip`, `updated_by`, `updated_at`, `updated_ip`) VALUES
(7, '2112281640708283', 'Impact of Dividend Policy on Stock Price Volatility: An Empirical Study on Financial Service Industry of Bangladesh', 'Volume 1, Issue 1', '9 December 2021', 'JFMG- 202103-00002', '21 February 2021', '15 May 2021', '9 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112091639050253', '16-32', 'The impact of dividend policy on stock price volatility is one of the most researched topics of corporate ï¬nance. This study investigates the relationship between stock price volatility and dividend policy among Bangladeshi ï¬nancial service industry companies. Two key variables - dividend yield and dividend payout have been taken as the independent variables after controlling for ï¬rm size, asset growth, earnings volatility, long-term debt, and earnings per share. The stock price volatility has been taken as the dependent variable. Panel regression analysis is employed to explore the relationship of dependent with independent variables. Results reveal a signiï¬cant positive relationship between stock price volatility and dividend yield among companies considered in this study. This study will help regulators and investors understand how the stock price ï¬‚uctuates in response to ï¬nancial information such as dividend announcements.', '', '', '', '61cb38bbca5c9Provaty and Siddique (2021).pdf', '2022-01-02 10:22:11', 1, 'Original Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2112281640708926', 'Nexus between Price Earnings (P/E) Ratio and Financial Performance of Commercial Banks: Dynamic Panel Evidence from Bangladesh', 'Volume 1, Issue 1', '9 December 2021', 'JFMG-202106-00015', '10 March  2021', '5 June 2021', '9 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112091639050362', '33-48', 'This paper aims to reveal the relationship between the determinants of ï¬nancial performance and stock performance measured with reference to the Price-Earnings (P/E) ratio. It examines Panel Data of 10 years covering from 2010 to 2019 of seven Private Commercial Banks (PCBs) of Bangladesh enlisted in the Dhaka Stock Exchange (DSE). Several hypotheses and econometric models have been estimated with the Pooled Ordinary Least Squares (Pooled OLS), Generalized Least Squares (GLS), Fixed-eï¬€ect, and Random-eï¬€ect, followed by various diagnostic tests to examine the validity of the models selected for this study. Finally, the One-step Generalized Method of Moments (GMM) method has been adopted. The empirical investigation shows that among the entire set of the variables, only the Net Proï¬t Margin (NPM) ratio has a signiï¬cant impact on the P/E ratio under Random-eï¬€ect, GLS, and Pooled OLS. Finally, the model developed for the One-step GMM method has revealed that the inclusion of the Lagged P/E ratio, Leverage, NPM ratio, Net Interest Margin (NIM) ratio, Asset Utilization Ratio, and Non-Performing Loan (NPL) ratio have a statistically signiï¬cant dynamic impact on the P/E ratios of the PCBs. However, the Liquidity ratio and the Loans to Asset ratio divulged no statistical signiï¬cance under any of the estimated models.', '', '', '', '61cb3b3e9341fLalonandMahmud.pdf', '2022-06-13 05:19:12', 1, 'Original Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2112281640709319', 'A Random Walk Down the Dhaka Stock Exchange Lane', 'Volume 1, Issue 1', '9 December 2021', 'JFMG-202103-00005', '28 March 2021', '20 June 2021', '9 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112091639050575', '49- 64', 'Market eï¬ƒciency has always been a matter of keen interest to the researchers of ï¬nance. Since the advancement of this concept, researchers are consistently investigating the market eï¬ƒciency of diï¬€erent ï¬nancial markets. Bangladesh, being one of the emerging economies, has also attracted the attention of many researchers. The researchers have investigated the realities regarding the market eï¬ƒciency of both the stock exchanges of the country. Most of their investigations reveal that the Dhaka Stock Exchange (DSE) and the Chittagong Stock Exchange (CSE) are ineï¬ƒcient. This research, however, did not stop at revisiting market eï¬ƒciency alone. Whether the return series follows a long-memory process, has also been tested. Besides, non-parametric tests have also been conducted to conï¬rm the results of the parametric tests and vice versa. It generated a more reliable estimate of market eï¬ƒciency for the period under study. Results of the Autoregressive Fractionally Integrated Moving Average (ARFIMA) model conï¬rm that the return series does not follow a long memory process, and any shock in the system will eventually vanish. The ï¬ndings of other tests (the run test, the Augmented Dickey&amp;ndash;Fuller (ADF) test, the Kwiatkowski&amp;ndash;Phillips&amp;ndash;Schmidt&amp;ndash;Shin (KPSS) test, and the Kolmogorov-Smirnov (K-S) test) suggest that the return series of the DSE are time-series stationary, non-normal, and do not follow a random walk. Given these results, we must echo the prior researchers to conclude that the stock market of Bangladesh is not eï¬ƒcient for the period of 2015 to 2020. These ï¬ndings add new knowledge to the existing knowledge pool about market eï¬ƒciency and long memory of the stock market of Bangladesh. &amp;nbsp;', '', '', '', '61cb537980e47Bari, Mehjabeen and Haque (2021).pdf', '2022-01-02 10:22:20', 1, 'Original Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2112281640709701', 'The Causal Relation between Revenue and Expenditure of Bangladesh', 'Volume 1, Issue 1', '9 December 2021', 'JFMG-202103-00006', '8 April 2021', '15 July 2021', '9 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112091639050677', '65-72', 'Bangladesh is a developing country that has been experiencing budget deï¬cits since its independence in 1971. It means the government spending has been exceeding the government revenue. This phenomenon calls for a study of government spending or expenditure and government revenue. This study tries to establish a causal relation between expenditure and revenue of governments of Bangladesh. To accomplish this, this study uses the Vector Autoregressive (VAR) model and the Granger Causality model on the data for the ï¬nancial year from 1993-1994 to 2017-2018. The study reveals that in the context of Bangladesh, total revenue aï¬€ects total expenditure, whereas total expenditure does not aï¬€ect total revenue. &amp;nbsp;', '', '', '', '61ff84f1a16e506.pdf', '2022-02-06 08:21:05', 1, 'Original Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2112281640710939', 'The Linkage between Chittagong  and Dhaka Stock Exchanges', 'Volume 1, Issue 1', '9 December 2021', 'JFMG-202103-00004', '15 April 2021', '28 July 2021', '9 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112091639050770', '73-90', 'This paper aims at determining the relationship between the two domestic stock markets of Bangladesh &amp;ndash; the Chittagong Stock Market (CSE) and the Dhaka Stock Market (DSE). The daily stock price indices that represent the performance of the two stock markets are collected. In order to ï¬nd out the interdependent relationship, the Engle-Granger Cointegration test, Granger Causality test, Impulse Response Function, and Variance Decomposition Analysis are employed in this paper. The main ï¬nding of this study is that both the stock markets are related in the long run. However, there is a one-way short-run eï¬€ect from the DSE on the CSE market. The CSE market quickly responds to the shock in the DSE market. But, the DSE market is not responsive to the CSE market. The variance decomposition analysis shows that most of the shocks in the CSE market are explained by its own market. On the other hand, a small number of shocks in the DSE market are explained by the CSE market as well as its own market.', '', '', '', '61ff85ce6dd3207.pdf', '2022-02-06 08:24:46', 1, 'Original Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2112281640711388', 'Local Stock Market Integration with International Gold and Oil Price', 'Volume 1, Issue 1', '21 December 2021', 'JFMG-202106-00013', '10 July 2021', '8 October 2021', '21 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112211640063256', '91-100', 'We look for the integration of Bangladesh Stock Market with international gold and oil price using most recent monthly data set from January 2003 to December 2020 (2003m1-2020m12). We employ the bounds-testing approach to cointegration between stock market index (DSEX) and international gold and oil price and eventually ï¬nd an integration and dynamic signiï¬cant impact of international gold and oil price on DSEX in the long and short-run. We discuss the important policy implications of the dynamic impact of international gold and oil price on stock market index.&amp;nbsp;\r\nslot pulsa', '', '', '', '61cb44dc8bcceSen, Adebin and Ghosh (2021).pdf', '2022-05-11 11:47:37', 1, 'Original Research Article', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2112281640712422', 'Empowering Small Businesses with Financial Technology: The Road Less Travelled', 'Volume 1, Issue 1', '21 December 2021', 'JFMG-202106-00026', '2 June 2021', '29 September 2021', '21 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112211640063460', '101- 122', 'Abstract Financial services remain untapped by most of the small business owners in Bangladesh. This limited access to mobile financial services and FinTech presents a business opportunity for the FinTech startups in the market. TallyKhata and Upayare digital financial services platforms visualizing to capture the untapped sector by becoming one of the first movers in the industry. This article has studied the cases of TallyKhata and Upay in empowering small businesses in Bangladesh through the services that have made business transactions and credit management hassle-free.', '', '', '', '61cb5ee74057eAkter, Priyodarshini and Barua (2021).pdf', '2022-01-02 14:25:09', 1, 'Industry Insight', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2112281640712759', 'Governance of Mutual Fund Industry - The Lifeline of Capital Market', 'Volume 1, Issue 1', '21 December 2021', 'JFMG-202106-00027', '12 August 2021', '15 November 2021', '21 December 2021', '28 December 2021', 'https://doi.org/10.54728/2112211640063546', '123-143', 'A mutual fund is a kind of monetary vehicle comprised of a pool of cash gathered from numerous ï¬nancial backers to put resources into protections like stocks, securities, money market instruments, and diï¬€erent resources. In Bangladesh, the mutual fund industry keeps struggling, yet nobody at any point contemplates what the primary driver are behind this. Accordingly, the paper attempts to track down the reason behind the poor performance of the mutual fund industry in Bangladesh. The paper ï¬nds that governance of the funds is some way or another liable for poor performance of the funds, however not the principle reason. Some other elements are likewise liable for the poor performance of the mutual fund industry.', '', '', '', '61cb4a37870dbIslam (2021).pdf', '2022-01-02 14:25:01', 1, 'Industry Insight', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '3', '4', '3', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 07:15:51', NULL, NULL, 1, NULL, '2022-07-01 07:15:51', NULL, NULL, '2022-07-01 07:15:51', NULL),
(16, '500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02 07:21:33', NULL, NULL, 0, NULL, '2022-07-01 12:46:09', NULL, NULL, '2022-07-02 07:21:33', '120.150.150.250'),
(17, '33', '43', '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02 07:21:15', NULL, NULL, 1, NULL, '2022-07-02 07:21:15', NULL, NULL, '2022-07-02 07:21:15', NULL),
(18, '33', '43', '33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02 07:23:28', NULL, NULL, 1, NULL, '2022-07-02 07:23:28', NULL, NULL, '2022-07-02 07:23:28', NULL),
(19, '2112281640712890', 'LAUNCHING ISSUE: Role of financial markets in economic development/ Volume 1, Issue 1 ', '202', '2022-06-30', 'JFMG-202106-00080', '2022-06-30', '2022-07-01', '2022-07-02', '2022-07-02', 'https://doi.org/10.54728/2112091639050677', '200', 'Upper Pattern Master--18 people, and Bottom Pattern Master—3 people, divided into three teams, including, casual shoe, wool shoe, and UGG exclusive development team; most of them are in the shoe business for more than 10 years; 6 pattern masters are working exclusively for UGG product development; Paper pattern development, grading, and cutting are all using software like SHOE MASTER, CRISPIN, etc.', ' Limited Have the Confidence in any partner that provides unique technology. We understand this and take our R&D very seriously. Understanding the problem and engineering a solution that works in production. That\'s the ALGFL Research & Development Process. ', 'abc derer', 'between expenditure and revenue of governments of Bangladesh.', NULL, '2022-06-30 00:00:00', NULL, 'industri', 1, NULL, '2022-07-02 10:03:31', NULL, NULL, '2022-07-02 10:03:31', NULL),
(20, '2112281640712890', 'LAUNCHING ISSUE: Role of financial markets in economic development/ Volume 1, Issue 1 ', '202', '2022-06-30', 'JFMG-202106-00080', '2022-06-30', '2022-07-01', '2022-07-02', '2022-07-02', 'https://doi.org/10.54728/2112091639050677', '200', 'Upper Pattern Master--18 people, and Bottom Pattern Master—3 people, divided into three teams, including, casual shoe, wool shoe, and UGG exclusive development team; most of them are in the shoe business for more than 10 years; 6 pattern masters are working exclusively for UGG product development; Paper pattern development, grading, and cutting are all using software like SHOE MASTER, CRISPIN, etc.', ' Limited Have the Confidence in any partner that provides unique technology. We understand this and take our R&D very seriously. Understanding the problem and engineering a solution that works in production. That\'s the ALGFL Research & Development Process. ', 'abc derer', 'between expenditure and revenue of governments of Bangladesh.', NULL, '2022-06-30 00:00:00', NULL, 'industri', 1, NULL, '2022-07-02 10:36:40', NULL, NULL, '2022-07-02 10:36:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sr_pub_author_details`
--

CREATE TABLE `sr_pub_author_details` (
  `id` int(11) NOT NULL,
  `paperId` varchar(250) DEFAULT NULL,
  `author_name` varchar(200) DEFAULT NULL,
  `affiliation` longtext DEFAULT NULL,
  `authorEmail` varchar(250) DEFAULT NULL,
  `authortype` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_pub_author_details`
--

INSERT INTO `sr_pub_author_details` (`id`, `paperId`, `author_name`, `affiliation`, `authorEmail`, `authortype`) VALUES
(117, '2112281640703153', 'Mahmuda Akter', 'Department of Accounting &amp; Information Systems University of Dhaka, Dhaka 1000, Bangladesh', 'mahmuda.akter@du.ac.bd', '2'),
(25, '2112281640708283', 'Sagira Sultana Provaty,', 'Bangladesh Institute of Capital Market (BICM) Dhaka, Bangladesh', 'provaty@bicm.ac.bd', '1'),
(26, '2112281640708283', 'Khairul Alam Siddique', 'Department of Finance University of Dhaka Dhaka, Bangladesh', '', '2'),
(27, '2112281640708926', 'Raad Mozib Lalon,', 'Department of Banking and Insurance, University of Dhaka Dhaka 1000, Bangladesh', 'raadmozib@du.ac.bd', '1'),
(28, '2112281640708926', 'Tanvir Mahmud', 'Department of Banking and Insurance, University of Dhaka Dhaka 1000, Bangladesh', '', '2'),
(115, '2112281640709319', 'Dr. Melita Mehjabeen,', 'Institute of Business Administration, University of Dhaka, Dhaka - 1000, Bangladesh.', '', '2'),
(114, '2112281640709319', 'Dr. A. K. Enamul Haque', 'Faculty of Business and Economics East West University, Aftabnagar, Dhaka-1212, Bangladesh', '', '2'),
(113, '2112281640709319', 'Md. Kamrul Bari,', 'Institute of BusinessAdministration, University ofDhaka, Dhaka - 1000,Bangladesh.', '', '1'),
(119, '2112281640709701', 'Jafrul Shahriar Jewel', 'Department of Finance University of Dhaka Bangladesh', 'jewelmpf@gmail.com', '1'),
(120, '2112281640710939', 'Muhammad Shahidullah Tasfiq,', 'Department of Management Studies Jagannath University, Dhaka', 'md.tasfiq@yahoo.com', '1'),
(126, '2112281640711388', 'Ratan Ghosh,', 'Department of Accounting and Information Systems Bangladesh University of Professionals, Dhaka, Bangladesh', '', '2'),
(125, '2112281640711388', 'Md. Thasinul Abedin', 'Department of Accounting, University of Chittagong, Chittagong, Bangladesh', '', '2'),
(124, '2112281640711388', 'Kanon Kumar Sen,', 'Department of Accounting and Information Systems Bangladesh University of Professionals, Dhaka, Bangladesh', 'kanon.kumar@bup.edu.bd', '1'),
(87, '2112281640712422', 'Roksana Akter,', 'Foreign Exchange Policy Department, Bangladesh Bank, Head office, Dhaka', 'nandhini003@yahoo.com', '1'),
(41, '2112281640712759', 'Mir Ariful Islam', 'Managing Director and Chief Executive Officer Sandhani Asset Management Limited', 'arif1133@gmail.com', '1'),
(121, '2112281640710939', 'Nasrin Jahan', 'Department of Business Administration Shanto Marium University of Creative Technology', '', '2'),
(89, '2112281640712422', 'Adrita Priyodarshini,', 'Department of International Business, University of Dhaka', '', '2'),
(116, '2112281640703153', 'Suborna Barua,', 'Department of International Business, University of Dhaka Dhaka 1000, Bangladesh', 'sbarua@du.ac.bd', '1'),
(88, '2112281640712422', 'Suborna Barua', 'Department of International Business, University of Dhaka Dhaka, Bangladesh', '', '2'),
(123, '2205091652121137', 'Tes', 'Tes', 'a@g.com', '2'),
(131, '2205211653160369', 'jbkkkkkkkkkhk', 'kjbjhilj', 'lol@lol.com', '1'),
(132, '2205241653365504', '543', '543', '5435', '1'),
(133, '2205241653365616', 'rwqr\'rerewre', 'rwqr\'rerewre', 'rwqr\'rerewre', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sr_registration`
--

CREATE TABLE `sr_registration` (
  `id` int(11) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `auth_title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userType` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sr_registration`
--

INSERT INTO `sr_registration` (`id`, `user_id`, `auth_title`, `first_name`, `lastname`, `organization_name`, `country`, `email`, `alt_email`, `phone_no`, `log_password`, `entry_date`, `userType`, `created_at`, `updated_at`) VALUES
(4, NULL, 'Mr', 'MD. SHAHARIER', 'ALOM', 'University of Dhaka', 'Bangladesh ', 'alom.md.shaharier@gmail.com', '', '', 'qwerty123123', '2022-02-04 14:08:50', 1, NULL, NULL),
(5, NULL, 'Professor', 'Liana', 'Anwar', 'Bangladesh Institute of Capital Market (BICM)', 'Bangladesh ', 'liana_faculty@bicm.ac.bd', 'arifb@du.ac.bd', '0167350507', 'nannu@13', '2021-07-19 04:36:39', 1, NULL, NULL),
(6, NULL, 'Mr', 'MUHAMMAD SHAHIDULLAH', 'TASFIQ', 'JAGANNATH UNIVERSITY, DHAKA', 'Bangladesh ', 'md.tasfiq@yahoo.com', NULL, NULL, '#005MST226mst#~', '2021-03-27 19:04:59', 1, NULL, NULL),
(7, NULL, 'Mr', 'Khairul Alam', 'Siddique', 'University of Dhaka', 'Bangladesh ', 'khairul@du.ac.bd', NULL, NULL, 'ndc6105109', '2021-03-27 19:04:59', 1, NULL, NULL),
(8, NULL, 'Miss', 'Sagira Sultana', 'Provaty', 'Bangladesh Institute of Capital Market (BICM)', 'Bangladesh ', 'provaty@bicm.ac.bd', NULL, NULL, 'nishibicm', '2021-03-27 19:04:59', 1, NULL, NULL),
(12, NULL, 'Mr', 'Md. Kamrul', 'Bari', 'IBA (Doctoral Researcher)', 'Bangladesh ', 'bari.sarkar@gmail.com', NULL, NULL, 'Boba@@Tunnel7488696', '2021-03-27 19:04:59', 1, NULL, NULL),
(13, NULL, 'Mr', 'Jafrul Shahriar', 'Jewel', 'University of Dhaka', 'Bangladesh ', 'jewelmpf@gmail.com', NULL, NULL, '15101983', '2021-03-27 19:04:59', 1, NULL, NULL),
(14, NULL, 'Mr', 'Ariful ', 'Islam', 'Rabindra University, Bangladesh', 'Bangladesh ', 'arif_islam@econdu.ac.bd', NULL, NULL, 'economistarif', '2021-03-27 19:55:36', 1, NULL, NULL),
(27, NULL, 'Dr', 'Suborna', 'Barua', 'University of Dhaka', 'Bangladesh ', 'sbarua@du.ac.bd', '', '', '123456', '2022-02-04 14:06:33', 3, NULL, NULL),
(28, NULL, 'Dr', ' M. Sadiqul ', 'Islam', 'University of Dhaka', 'Bangladesh ', 'sadiq@du.ac.bd', '', '', '123456', '2022-02-04 14:08:24', 2, NULL, NULL),
(29, NULL, 'Mr', 'Kh Khaled', 'Kalam', 'Shandong Xiehe University', 'Bangladesh ', 'khaledkalam135@gmail.com', NULL, NULL, '!s071185s!', '2021-04-06 06:00:35', 1, NULL, NULL),
(30, NULL, 'Dr', 'Madurika', 'Nanayakkara', 'University of Kelaniya', 'Sri Lanka ', 'madurikan@kln.ac.lk', NULL, NULL, 'madurika124', '2021-04-20 07:16:09', 3, NULL, NULL),
(31, NULL, 'Dr', 'Mostafa ', 'Monzur Hasan', 'Macquarie University', 'Australia ', 'mostafa.hasan@mq.edu.au', NULL, NULL, 'mmhasan', '2021-04-21 04:43:42', 3, NULL, NULL),
(34, NULL, 'Mr', 'Kanon Kumar', 'Sen', 'Bangladesh University of Professionals', 'Bangladesh ', 'kanon.kumar@bup.edu.bd', NULL, NULL, 'KTr007', '2021-05-24 03:18:27', 1, NULL, NULL),
(35, NULL, 'Dr', 'Dewan', 'Rahman', 'University of Queensland', 'Australia ', 'sajibdewan@gmail.com', NULL, NULL, '12345', '2021-06-04 16:13:46', 3, NULL, NULL),
(36, NULL, 'Mr', 'Md. Sajib ', 'Hossain', 'University of Dhaka', 'Bangladesh ', 'sajibfin06@du.ac.bd', NULL, NULL, '12345', '2021-06-04 16:18:23', 3, NULL, NULL),
(37, NULL, 'Dr', 'Raad Mozib', 'Lalon', 'University of Dhaka', 'Bangladesh ', 'raadmozib@du.ac.bd', NULL, NULL, '12345', '2021-07-08 15:59:53', 3, NULL, NULL),
(38, NULL, 'Dr', 'Hasibul', 'Chowdhury', 'University of Queensland', 'Australia ', 'h.chowdhury@business.uq.edu.au', NULL, NULL, '12345', '2021-06-05 02:31:53', 3, NULL, NULL),
(39, NULL, 'Dr', 'Mostafa Monzur', 'Hasan', 'Macquarie University', 'Australia ', 'monzur.hasan@gmail.com', NULL, NULL, '123456', '2021-06-10 06:03:28', 3, NULL, NULL),
(40, NULL, 'Dr', 'Dewan', 'Rahman', 'University of Queensland', 'Australia ', 'd.rahman@business.uq.edu.au', NULL, NULL, '123456', '2021-06-12 10:54:56', 3, NULL, NULL),
(42, NULL, 'Dr', 'Raad Mozib', 'Lalon', 'Univeristy of Dhaka', 'Bangladesh ', 'raadmozib@du.ac.bd', NULL, NULL, '01191366255Raad', '2021-06-18 17:04:47', 1, NULL, NULL),
(44, NULL, 'Mrs', 'Sanjida', 'Islam', 'DIIT', 'Bangladesh ', 'sanjida_nu@diit.info', NULL, NULL, '71716060', '2021-06-24 08:15:46', 1, NULL, NULL),
(46, NULL, 'Ms', 'Junnatun Naym', 'Tamanna', 'Eastern Illinois University', 'United States ', 'taman.fin@gmail.com', NULL, NULL, '123456', '2021-07-07 09:51:53', 3, NULL, NULL),
(47, NULL, 'Dr', 'Raad Mozib', 'Lalon', 'University of Dhaka', 'Bangladesh ', 'raadmozib@du.ac.bd', NULL, NULL, '12345', '2021-07-12 09:55:15', 3, NULL, NULL),
(50, NULL, 'Ms', 'Tasneema', 'Afrin', 'University of Dhaka', 'Bangladesh ', 'tasneema@iba-du.edu', '', '', '123456', '2021-08-11 09:28:30', 3, NULL, NULL),
(51, NULL, 'Ms', 'Umma ', 'Hania', 'Bangladesh University of Professionals', 'Bangladesh ', 'umma.hania@bup.edu.bd', 'umma.hania25@gmail.com', '01794583467', 'allah@1one', '2021-08-17 02:45:36', 1, NULL, NULL),
(52, NULL, 'Mrs', 'Junnatun', 'Naym', 'University of Dhaka', 'Bangladesh ', 'junnatun@du.ac.bd', '', '', 'reviewrequest', '2021-08-22 16:28:41', 3, NULL, NULL),
(53, NULL, 'Mr', 'Md. Ariful ', 'Islam', 'University of Dhaka', 'Bangladesh ', 'ariffbs@du.ac.bd', 'rupom@gmail.com', '01673050507', '123456', '2021-08-24 08:34:52', 1, NULL, NULL),
(54, NULL, 'Mr', 'Jafrul', 'Shahriar-Jewel', 'University of Dhaka', 'Bangladesh ', 'jewelmpf@gmail.com', '', '01711575814', '15101983', '2021-08-24 17:07:53', 3, NULL, NULL),
(55, NULL, 'Mr', 'Mohammed Saef', 'Arifeen', 'Riverstone Capital Limited', 'Bangladesh ', 'mdsaefularifeen@yahoo.com', 'mdsaefularifeen6@yahoo.com', '+8801760229097', 'Protocol6!!', '2021-09-10 20:01:58', 3, NULL, NULL),
(56, NULL, 'Mr', 'Mohammed Saef', 'Arifeen', 'Riverstone Capital Limited', 'Bangladesh ', 'mdsaefularifeen@yahoo.com', 'mdsaefularifeen6@yahoo.com', '+8801760229097', 'Protocol6!!', '2021-09-10 20:13:19', 1, NULL, NULL),
(59, NULL, 'Mr', 'Mohammed', 'Alam', 'Aviva Finance Limited', 'Bangladesh ', 'shifat25@gmail.com', '', '01783764484', 'Moh@mmed008!', '2021-12-01 09:52:13', 3, NULL, NULL),
(60, NULL, 'Mr', 'Masum', 'Rahman', 'Arthosuchak ', 'Bangladesh ', 'maasum505@gmail.com', 'maasum50@gmail.com', '01778949548', 'masum@778949548', '2021-12-29 06:26:05', 1, NULL, NULL),
(61, NULL, 'Mr', 'Md. Waliul', 'Islam', 'Vashantek Govt. College, Dhaka', 'Bangladesh ', 'waliulmukti@gmail.com', 'mdwaliul_islam@yahoo.com', '01718570650', '01716257047', '2021-12-29 13:11:48', 3, NULL, NULL),
(62, NULL, 'Mr', 'Md. Salim', 'Uddin', 'JOCL', 'Bangladesh ', 'salimstock89@gmail.com', 'salimbabucu@gmail.com', '01783999557', 'S28286060#', '2021-12-29 18:44:33', 3, NULL, NULL),
(63, NULL, 'Mr', 'Md. Maksud ', 'Sikder', 'Pearsons 24x7 Services Ltd.', 'Bangladesh ', 'pearsonsbd@gmail.com', 'maksud@enbiowml.com', '01941606050', 'mrs0ffice', '2022-01-03 13:58:52', 3, NULL, NULL),
(64, NULL, 'Mr', 'Ashraf Uddin', 'Ahmed', 'Trust Bank Limited', 'Bangladesh ', 'maruf217@gmail.com', 'maruf217@yahoo.com', '01926880671', '8354195', '2022-01-05 05:06:12', 3, NULL, NULL),
(65, NULL, 'Mr', 'Md. Thasinul ', 'Abedin', 'University of Chittagong', 'Bangladesh ', 'thasinduais16@gmail.com', '', '01887986020', 'thasin@acer.758239', '2022-01-07 15:51:26', 1, NULL, NULL),
(67, NULL, 'Mr', 'Abu ', 'Sayed', 'ICB', 'Bangladesh ', 'abusayedicb@gmail.com', '', '01920883441', 'Sayed@16', '2022-01-17 05:02:11', 3, NULL, NULL),
(68, NULL, 'Mr', 'Hossain Mohammad', 'Yeasin', 'BRAC University', 'Bangladesh ', 'hossain.mohammad.yeasin@g.bracu.ac.bd', 'hossain.mohammad.yeasin97@gmail.com', '+8801716579642', 'HydrogenBond97@', '2022-01-21 13:51:40', 1, NULL, NULL),
(70, NULL, 'Dr', 'Rezwanul Hasan', 'Rana', 'Macquarie University', 'Australia ', 'Rezwanul.rana@mq.edu.au', '', '', '12345', '2022-02-02 14:19:51', 3, NULL, NULL),
(71, NULL, 'Dr', 'Rezwanul Hasan', 'Rana', 'Macquarie University', 'Australia ', 'Rezwanul.rana@mq.edu.au', '', '', '12345', '2022-02-02 14:19:51', 3, NULL, NULL),
(72, NULL, 'Mr', 'Hossain Mohammad', 'Yeasin', 'BRAC University', 'Bangladesh ', 'hossain.mohammad.yeasin@g.bracu.ac.bd', 'hossain.mohammad.yeasin97@gmail.com', '01716579642', 'HydrogenBond97@', '2022-02-04 13:32:48', 3, NULL, NULL),
(73, NULL, 'Mr', 'Syed', 'Rakib', 'University of Dhaka', 'Bangladesh', 'smrakibuddin@gmail.com', '', '01625028995', 'rakibthe7th', '2022-02-05 13:22:41', 3, NULL, NULL),
(74, NULL, 'Mr', 'Saruar', 'Golam Saruar', 'Marine Lpg Service', 'Bangladesh', 'c.g.saruarmarine@gmail.com', 'c.g.saruarmarine@gmail.com', '01710-000656', '01711046450', '2022-02-12 19:36:11', 3, NULL, NULL),
(76, NULL, 'Mr', 'jhagsd', 'akjsghdkj', 'ajsgdjas', 'Bangladesh', 'tycddngetjpd@midiharmonica.com', 'tycddngetjpd@midiharmonica.com', '132536365342', 'Hack1001@', '2022-03-18 07:35:49', 1, NULL, NULL),
(78, NULL, 'Mr', 'Hossain Mohammad', 'Yeasin', 'BRAC University', 'Bangladesh', 'writetoyeasin@gmail.com', 'hossain.mohammad.yeasin@g.bracu.ac.bd', '01716579642', 'HydrogenBond97@', '2022-03-24 05:49:39', 1, NULL, NULL),
(79, NULL, 'Miss', 'GAME ONLINE', 'TERPOPULER ASIA', 'GAME ONLINE TEROPULER ASIA', 'Barbados', 'celiboy782@gmail.com', 'gameonline', '085761875563', 'celiboy12345', '2022-03-30 17:22:02', 1, NULL, NULL),
(80, NULL, 'Miss', 'Permainan Jackpot Game', 'Online Terbesar Asia', 'PERMAINAN', 'Indonesia', 'gabrielahanna373@gmail.com', 'jackpot123', '085768243384', 'hanna123@', '2022-03-30 17:29:39', 1, NULL, NULL),
(81, NULL, 'Dr', 'Muhammad', 'Rizqi', 'adwadwadwa', 'Azerbaijan', 'ikiwoioi11@gmail.com', '', '', 'ikiwgans000', '2022-03-31 03:38:36', 1, NULL, NULL),
(82, NULL, 'Dr', 'Muhammad', 'Rizqi', 'Idiot BlackHat', 'Indonesia', 'xrzyski@gmail.com', '', '', 'ikiwgans000', '2022-03-31 03:41:58', 4, NULL, NULL),
(83, NULL, 'Dr', 'Muhammad', 'Rizqi', 'Idiot BlackHat', 'Indonesia', 'asu@yahoo.com', '', '', 'asu@yahoo.com', '2022-03-31 03:44:54', 0, NULL, NULL),
(84, NULL, 'Mr', 'eden', 'sebastian', 'omega138', 'Anguilla', 'edense29@gmail.com', 'leylovhy@gmail.com', '081212121212', '54374424', '2022-04-03 06:06:06', 1, NULL, NULL),
(85, NULL, 'Mr', 'kamukontolodon', 'kamukontolodon', 'kamukontolodon', 'Bahrain', 'kamukontolodon@gmail.com', 'kamukontolodon@gmail.com', '1312321321', 'kamukontolodon', '2022-04-04 09:57:36', 1, NULL, NULL),
(86, NULL, 'Mr', 'mr', 'cakil', '99syndicate', 'Indonesia', 'dendisaimam5@gmail.com', 'dendisaimam5@gmail.com', '71453036', 'jakarta123', '2022-04-05 12:11:45', 1, NULL, NULL),
(87, NULL, 'Mr', 'mrr', 'cakill', '99syndicate', 'Indonesia', 'semagas744@sartess.com', '', '', 'Mrcakil!337', '2022-04-06 03:06:17', 1, NULL, NULL),
(89, NULL, 'Dr', 'bheart2206', 'awda', 'sdaf', 'Albania', 'bheart2206@gmail.com', 'bheart2206@gmail.com', '324535', 'bheart2206', '2022-04-10 07:23:28', 1, NULL, NULL),
(90, NULL, 'Dr', 'jegojelev.pejesahis', 'jegojelev.pejesahis', 'dsf', 'Barbados', 'jegojelev.pejesahis@mentonit.net', 'jegojelev.pejesahis@mentonit.net', '', 'jegojelev.pejesahis', '2022-04-10 07:25:56', 4, NULL, NULL),
(94, NULL, 'Dr', 'solo', 'levelinnng', 'indo', 'Indonesia', 'onlysololeveling@gmail.com', 'onlysololeveling@gmail.com', '08316411441', 'onlysololeveling@gmail.com', '2022-04-22 08:29:24', 1, NULL, NULL),
(95, NULL, 'Dr', 'Elliot', 'Gordon', 'Harvard University', 'United States', 'elllliot@tnecnw.com', '', '', 'elllliot@tnecnw.com', '2022-05-09 18:02:15', 1, NULL, NULL),
(96, NULL, 'Dr', 'Dr. Moniruzzaman, CFA', 'Islam', 'du', 'Bangladesh', 'biscmdomain@gmail.com', 'biscmdomain@gmail.com', '01673050507', '1234', '2022-05-24 06:46:24', 1, NULL, NULL),
(97, NULL, 'Professor', 'Nasrin', 'Jahan', 'Shanto marium university of creative technology', 'Bangladesh', 'nasrin2haque@gmail.com', 'ziaul2nasrin@gmail.com', '01711943785', '1508mirazmahdi', '2022-05-25 04:58:35', 1, NULL, NULL),
(105, 14, 'Mr', 'Sirajul', 'Islam', 'Dhaka University', '2', 'sirajulislam8354@gmail.com', 'admin@gmail.com', '01401318319', NULL, '2022-07-05 06:19:56', 1, '2022-07-05 00:19:56', '2022-07-05 00:19:56'),
(106, 15, 'Mr', 'Sirajul', 'Islam', 'Bangladesh University', '2', 'sirajul@gmail.com', 'admina@gmail.com', '018866764237', NULL, '2022-07-05 07:31:55', 3, '2022-07-05 01:31:55', '2022-07-05 01:31:55'),
(107, 16, 'Mr', 'Admin', NULL, 'Dhaka University', '2', 'admin@gmail.com', 'admin2@gmail.com', '01899345353', NULL, '2022-07-05 08:11:08', 4, '2022-07-05 02:11:08', '2022-07-05 02:11:08'),
(108, 17, 'Profesor', 'Abid', 'Hossain', 'Dhaka University', '2', 'abid@gmail.com', 'ab@gmail.com', '01899345353', NULL, '2022-07-05 08:29:02', 1, '2022-07-05 02:29:02', '2022-07-05 02:29:02'),
(109, 18, 'Profesor', 'Aziz', 'Khan', 'Dhaka University', '2', 'aziz@gmail.com', 'abz@gmail.com', '01906676423', NULL, '2022-07-05 09:02:18', 3, '2022-07-05 03:02:18', '2022-07-05 03:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `sr_reviwer_comments`
--

CREATE TABLE `sr_reviwer_comments` (
  `id` int(11) NOT NULL,
  `paperId` varchar(50) DEFAULT NULL,
  `comm1` longtext DEFAULT NULL,
  `comm2` longtext DEFAULT NULL,
  `comm3` longtext DEFAULT NULL,
  `comm4` longtext DEFAULT NULL,
  `comm5` longtext DEFAULT NULL,
  `comm6` longtext DEFAULT NULL,
  `recom` varchar(250) DEFAULT NULL,
  `con_editor` longtext DEFAULT NULL,
  `com_author` longtext DEFAULT NULL,
  `rev_doc` longtext DEFAULT NULL,
  `submit_status` int(11) DEFAULT 0,
  `submitdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sr_reviwer_comments`
--

INSERT INTO `sr_reviwer_comments` (`id`, `paperId`, `comm1`, `comm2`, `comm3`, `comm4`, `comm5`, `comm6`, `recom`, `con_editor`, `com_author`, `rev_doc`, `submit_status`, `submitdate`) VALUES
(1, 'JFMG-202103-00004', 'See  at the bottom of the document reviewed. ', '', '', '', '', '', '3', '', '', '60bf9d74334c6Muhammad Shahidullah Tasfiq_The linkage between Chittagong Stock Market and Dhaka Stock Market_Review_Sajib Hossain.docx', 1, '2021-06-08 16:40:20'),
(2, 'JFMG-202103-00006', 'This paper attempts to reveal the causation between govt revenue and expenditure considering Vector Autoregressive approach resembling simultaneous equation modelling which is quite eminent when we deal with endogenous variables together. Hence the idea of this paper is consistent and contains new information justifying the publication.', 'This paper covers sufficient reviews of literatures relevant to the topic. ', 'The methodology of this paper should include the mathematical models of VAR using equation along with proper justification for implementing these models. In Addition, the author may also incorporate the use of these VAR models to predict the govt expenditure being a dependent variable as govt revenue affects its expenditure.', 'The output estimated from VAR models considering three lags of each variable shows that none of the lags of expenditure is statistically significant in affecting  govt revenue whereas in the second model the lags of govt revue are statistically significant at chosen level of significance in affecting its expenditure. So, itâ€™s obvious to infer that govt expenditure depends on its revenue which is found consistent as per granger causality test. \r\nSurprisingly, in the last sentence of abstract, the author has mentioned the opposite findings of causation between govt revenue and its expenditure that he has discovered in analysis segment. ', 'Unfortunately, this section remains unexplored by the author/s. There is hardly found any policy implication of the findings contributed from this paper. Therefore, the respective author is requested to incorporate some policy implications of this findings especially in case of determination of Govt revenue accelerating its expenditure.', 'The language of the paper is user friendly and up to the international standard. ', '4', '', '', '60c3bfb0459f8', 1, '2021-06-11 19:55:28'),
(3, 'JFMG-202106-00015', 'See the detailed report.', 'See the detailed report.', 'See the detailed report.', 'See the detailed report.', 'See the detailed report.', 'See the detailed report.', '3', 'Please check for similarity index using Turnitin or iThenticate. Overall, the paper, in its current form, lacks contribution to the literature.', '1.	Abstract is not written properly. It should not include the list of independent variables in the first place. The findings should be moved earlier and not in the line 10.\r\n2.	Introduction section seems incomplete. Please briefly include motivation of your study â€“ why such study is required, what is your findings, and what is your specific contribution to the literature. The author(s) should clearly mention why they select P/E ratio to measure stock market performance and why not any other indicators (such as annualized stock returns or abnormal returns). The paper should also include a short discussion on why author(s) use a sample of commercial banks to test their hypothesis and why they have not used non-financial firms.  \r\n3.	The hypothesis section is also underdeveloped. The research gap and motivation is not properly identified. Even though the section mentions about 3 hypotheses, but actually reports 2. Hypothesis 1 should be re-written to reflect the core idea of the research. There is no preceding discussion on the prediction of Hypothesis 2.\r\n4.	Among 30 listed commercial banks, only 7 are selected in the sample. Author(s) should either increase the sample size or provide a strong justification on why these 7 banks could be representatives of the banking sector in Bangladesh.\r\n5.	One big concern on the empirical setup of this study is the mechanical relation between the dependent variable and some of the financial performance indicating variables. Author(s) should clarify why the dependent and key independent variables are not endogenously related given that both have an earnings component included in the calculation.\r\n6.	Conclusion should be clearly written to reflect the policy implication of the findings â€“ how the findings of this study could be useful for the investors, bank managers, regulators, and analysts.\r\n7.	I would like to see a comparison of the economic significance of the statistically significant variables in Table 4 and Table 12.      \r\n8.	Author(s) need to spend a fair amount of time on proofreading. There are a few typos. Section headings should be carefully checked (for example, 4.3. (sic) Research variables).  ', '60d43cb69e6d0', 1, '2021-06-24 08:05:10'),
(4, 'JFMG-202105-00013', '', '', '', '', '', '', '4', '', '', '61228605f100a', 1, '2021-08-22 17:14:45'),
(5, 'JFMG-202103-00005', 'The idea lacks significant originality. However, by focusing on implications of the findings, the paper can make some contributions in this stream of research. ', 'i.	Hypotheses are presented in section 2.7 and are not linked to the literature review. Hypotheses should be a part of the literature review section, not a separate subsection. The studies should be organized in such a way that the discussion of literature leads to the hypothesis. \r\nii.	It seems to me that the authors paid much attention to the methods used in earlier studies and how findings are different or what are the shortcomings of those papers in terms of methods. In my opinion, the authors should not be too elaborative of the methods used by each of prior studies discussed in the literature review section. \r\niii.	I would recommend that instead of grouping literature review into three sections by origin of the paper (i.e., country), the authors present the review in one section. In other words, I do not recommend using sub-sections in the literature review section.\r\niv.	I highly recommend presenting section 2.3 (literature review on Bangladesh stock markets) as paragraphs instead of 7-page long table. Each paper discussed in this section could be summarized in 1 or 2 sentences. Discussion of criticism for each paper is excessive. Rather, all criticisms could be grouped/summarized into one paragraph. Discussion on the column on â€œmodels usedâ€ should be dropped.\r\n', 'The methods are appropriate and relevant for the work.', 'i.	Introduction section should be able to give a brief overview of the paper. In other words, introduction section should give some brief idea about motivation, objective, hypothesis, data, methods, and findings. The authors nicely provide some idea about motivation and research questions. However, it lacks any overview on the other necessary elements such as methods, findings etc. I also recommend dropping the first paragraph of introduction since this paragraph seems to be too elementary to be included in an academic journal.\r\nii.	Instead of presenting results in section 4 and discussions in section 5 separately, the authors should combine them into one section such that the discussion follows the result for each table.', 'The authors should put more effort in explaining why investors and traders care about whether the market has long memory or whether the market is not weak-form efficient. I think this paper lacks the implications of the findings. The authors should present the implications of the findings that: the market is not weak-form efficient; return series is time series stationary; return data are non-normal, return data do not follow a long memory process. ', 'i.	The paper has frequent uses of expressions, e.g., â€œit is needless to say thatâ€, â€œit can be said thatâ€, â€œit is to beâ€ etc. for better readability, I would recommend avoiding these unnecessary wordings in the revised manuscript.\r\nii.	The quality of English language used in the paper is acceptable. Abbreviations are appropriately elaborated. However, abstract is too long. I recommend cutting it short by around 50%. One suggestion is that abstract can start where it says â€œThis research work revisited the market efficiency of â€¦..â€. Just a suggestion.\r\niii.	For better understandability and for conformity with the writing structure of renowned international finance and economics journals, I recommend that the authors consider re-writing the paper in present tense. Besides, they can consider using more active voice rather than passive voice, whenever appropriate.\r\niv.	I think that introduction section does not need to have a sub-section.\r\nv.	For better comprehension, the authors should use more paragraph breaks in the discussion (particulary, on page 4, 5, and 7).', '3', 'I think the paper is not publishable in its current form. The revisions are expected to make it better.', '', '61232feb8ba20Referee report A Random walk down DSE (the Dhaka Stock Exchange) lane.docx', 1, '2021-08-23 05:19:39'),
(6, 'JFMG-202201-00035', 'This paper is a replication of other investigations having no additional significant contribution to current literatures.', 'Although the paper consists of sufficient literatures with unorganized references, the write-up of literature review doesnâ€™t reflect professionalism in the context of a journal paper.', 'The methodology of the paper is poorly constructed as there is no indication of executing diagnostic check to validate the econometric models proposed for this investigation. Moreover, the construction of the models estimated with OLS method can also be proposed with other equations estimated with fixed effect, random effect and GLS method as the author deals with Panel Data. The author is requested to go through a comprehensive review on panel data econometrics before construction of the methodology of this paper. The time series of the data set is only 5 years which is insufficient to reveal a predictive relationship between dependent and independent variables of the model.', 'The outcome of the models estimated with Pooled OLS method has been represented in unprofessional way in context of a journal paper as the author just pasted the direct output from the SPSS software. Therefore, the author is recommended to read some journal papers regarding this topic to know how to discuss the empirical findings or result estimated from the models using any statistical software. Moreover, The author is requested to perform the estimation of models with other method such as Fixed effect, Random effect, GLS (generalized least square) and so on along with several diagnostic checks such as model specification bias, variance inflation factor table, heteroscedasticity, autocorrelation problem etc as per requirements of panel data econometrics.', 'There is no new implication of any academic, professional, public and/or social policy formulation on the basis of the findings of this paper. However, in the context of Bangladesh, if the data set has been increased in terms of time series for the same banks, there would be a chance of contributing new findings with existing literatures.', 'In summary, the language of this paper is not up to the international standard considering poor sentence structure and improper jargon. the author is requested to read a number of journal papers relevant to this topic to derive an idea about how to write a journal paper.', '5', 'I guess the author has submitted a replication of thesis or term paper of a course without editing it in the context of a journal paper.', '', '61ee9b090c419', 1, '2022-01-24 12:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint(3) NOT NULL COMMENT '1=Author, 2=Editor, 3=Reviewer, 4=Admin	',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(14, 'Sirajul', 'sirajulislam8354@gmail.com', 1, NULL, '$2y$10$RPq6Co9eqT1ml4jz0jGNceR0q.cKX/rZW7EN6w2oTDktlM2j9GqU.', NULL, '2022-07-05 00:19:56', '2022-07-05 00:19:56'),
(15, 'Sirajul Islam', 'sirajul@gmail.com', 3, NULL, '$2y$10$V81LRcsrvH08eh8jOztHReBvOXyHIf9tGrR4UIzbRiBwyFFKPoKlK', NULL, '2022-07-05 01:31:55', '2022-07-05 01:31:55'),
(16, 'Admin ', 'admin@gmail.com', 4, NULL, '$2y$10$mFyL32rnvvDostB8sEet2O.r0/rIN1nQTLrEvz1TjGChnqzcBOZ1.', NULL, '2022-07-05 02:11:08', '2022-07-05 02:11:08'),
(17, 'Abid Hossain', 'abid@gmail.com', 1, NULL, '$2y$10$xn3A9e/h0cl6VpawxR.emuHh7/NP/DXTA6uMU0cTkul9V/JlajAIm', NULL, '2022-07-05 02:29:02', '2022-07-05 02:29:02'),
(18, 'Aziz Khan', 'aziz@gmail.com', 3, NULL, '$2y$10$Z2vWTEHvRhvO2pAPKQQmputc0mBZNdDaVYPvA5RP3mrUwdqQ6aVJq', NULL, '2022-07-05 03:02:18', '2022-07-05 03:02:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sr_comments`
--
ALTER TABLE `sr_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_country_list`
--
ALTER TABLE `sr_country_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_document_info`
--
ALTER TABLE `sr_document_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_document_info_details`
--
ALTER TABLE `sr_document_info_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_editor_reviwer_assign_info`
--
ALTER TABLE `sr_editor_reviwer_assign_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_menuscript_info`
--
ALTER TABLE `sr_menuscript_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paperUniqID` (`paperUniqID`);

--
-- Indexes for table `sr_more_author_info`
--
ALTER TABLE `sr_more_author_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_others_login`
--
ALTER TABLE `sr_others_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_published_journal`
--
ALTER TABLE `sr_published_journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_pub_author_details`
--
ALTER TABLE `sr_pub_author_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_registration`
--
ALTER TABLE `sr_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sr_reviwer_comments`
--
ALTER TABLE `sr_reviwer_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sr_comments`
--
ALTER TABLE `sr_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sr_country_list`
--
ALTER TABLE `sr_country_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `sr_document_info`
--
ALTER TABLE `sr_document_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sr_document_info_details`
--
ALTER TABLE `sr_document_info_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sr_editor_reviwer_assign_info`
--
ALTER TABLE `sr_editor_reviwer_assign_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sr_menuscript_info`
--
ALTER TABLE `sr_menuscript_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sr_more_author_info`
--
ALTER TABLE `sr_more_author_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sr_others_login`
--
ALTER TABLE `sr_others_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sr_published_journal`
--
ALTER TABLE `sr_published_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sr_pub_author_details`
--
ALTER TABLE `sr_pub_author_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `sr_registration`
--
ALTER TABLE `sr_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `sr_reviwer_comments`
--
ALTER TABLE `sr_reviwer_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
