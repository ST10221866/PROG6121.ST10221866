   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��513��6   $	��775��6)   .��5	      � 4  .System.Windows.Automation.AutomationProperties   Name$ txtcode��6    J� RenderTransformOrigin$ 0.5,0.5&�6/   $��	0,0,-7,-5q�6O   z�5
   
   V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0.179Q�6"   T� 5      5      ��5   
   �� 5       �� ImageSource$% /pexels-lisa-fotios-1266302.jpg��6   .+�5   
   �� $��Module name��6   $
��Left=�6&   $��
60,137,0,0q�6A   $	��Top=�6U   $ 0.424,1.853&�6m   $��Global Monospace)�6�   �� 5   
   $��Module code��6   $
��Left=�6&   $��	60,89,0,0q�6A   $	��Top=�6T   $��Global Monospace)�6l   �� 5   
   $��Hours per week��6   $
��Left=�6)   $��
60,184,0,0q�6D   $	��Top=�6X   $ 0.5,0&�6p   $��Global Monospace)�6�   �� 5   
   -   5         ��Name$ txt_code��5      $
��Left=�6$   $��
231,94,0,0q�6?    �� TextWrapping$
 Wrap=�6S   $	��Top=�6g   $	��120��6   $��22��6�   $ txtcode��6�   �� 5   
   -   5        $ txt_hours_week��5      $
��Left=�6*   $��231,187,0,0q�6E   $
 Wrap=�6Z   $	��Top=�6n   $	��120��6�   $��26��6�   $ Numweeks��6�   �� 5   
   $��Credit for the Module��6   $
��Left=�60   $��
60,233,0,0q�6K   $	��Top=�6_   $	��165��6w   $��Global Monospace)�6�   �� 5   
   -   5        $ 
txt_credit��5      $
��Left=�6&   $��233,233,0,0q�6A   $
 Wrap=�6V   $	��Top=�6j   $	��120��6�   $��26��6�   $ 
txt_credit��6�   �� 5   
   -   5        $ txt_name��5      $
��Left=�6$   $��231,139,0,0q�6?   $
 Wrap=�6T   $	��Top=�6h   $	��120��6�   $��22��6�   $ txtname��6�      IsRequiredForForm$
 True��6�   �� 5   
   -   5         ��Name$ Savebtn��5      $
��Save��6"   $
��Left=�61   $��270,424,0,0q�6L   $	��Top=�6a   $��36��6y   $��72��6�   $ Savebtn��6�   $��Global Monospace)�6�   ���	#FF93D66E6�   �� 5   
   $
��Left=�6   $��
235,29,0,0q�6/   $
��Wrap=�6C   $#��Module management application��6W   $	��Top=�6|   $��32��6�   $	��302��6�   $��16(�6�   $��Broadway)�6�   $ 0.5,0.5&�6�   z�5      V� 5       .~�5!      �� �� 5"      �� 5#      $ 0.057Q�6&   T� 5$      5%      ��5'      �� 5(      	 �� EndPoint$	 0.5,1&�6&   
 �� 
StartPoint$
 0.5,0&�67   .��5)      �  � Color$ Black��6#    � Offset$ 1Q�61   � 5*      $ White��6#   � 5+      $ 	#FFADADAD��6#   $ 0.319Q�65   � 5,      $ 	#FFADADAD��6#   $
 0.18Q�65   � 5-      $ 	#FFADADAD��6#   $ 0.936Q�65   � 5.      $ 	#FFADADAD��6#   $ 0.108Q�65   � 5/      $ 	#FFADADAD��6#   $ 0.641Q�65   50      52      �� 53   
   $��
Start date��6   $
��Left=�6%   $��
60,278,0,0q�6@   $	��Top=�6T   $��90��6l   $��Global Monospace)�6w   �� 54   
   $��Number of weeks ��6   $
��Left=�6+   $��
60,327,0,0q�6F   $	��Top=�6Z   $��Global Monospace)�6r   (  "System.Windows.Controls.DatePicker  55   
   -   5          Name$ txt_start_date��55      $
��Left=�6-   $��231,286,0,0q�6H   $	��Top=�6]   $	��120��6u   $��31��6�   $ txtdate��6�   �� 56   
   -   5        $ txt_number_of_weeks��56      $
��Left=�6/   $��231,334,0,0q�6J   $
 Wrap=�6_   $	��Top=�6s   $	��120��6�   $��23��6�   $ txtweeks��6�   �� 57   
   -   5        $ exitbtn��57      $
��Exit��6"   $
��Left=�61   $��385,422,0,0q�6L   $	��Top=�6a   $
 exit��6y   $��39��6�   $��52��6�   $��Global Monospace)�6�   ���	#FFE048486�   �� 58   
   $.��(Your information will be displayed below��6   $
��Left=�6C   $��
393,89,0,0q�6^   $	��Top=�6r   $	��324��6�   $��Global Monospace)�6�   �� 59   
   $��Hours spent on Module��6   $
��Left=�60   $��
60,371,0,0q�6K   $	��Top=�6_   $��Global Monospace)�6w   �� 5:   
   -	   5        $ txt_hours_spent��5:      $
��Left=�6+   $��231,378,0,0q�6F   $
 Wrap=�6[   $	��Top=�6o   $	��120��6�   $��25��6�   �� 5;   
   -
   5         ��Name$ displayinfor��5;      $��388,112,42,163q�6)   5>      5?      