   M S B A M L   `   `   `  ����D  @WpfApp17B, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:WpfApp17B	WpfApp17B  5   	       WpfApp17B.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:WpfApp17B     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��825��6)    � 	Resources 5	       �� 
TargetType �� Property �� Value��%-  '��       '�� �     �� 5
   
   " ��6   .�5      ��  �@��AcceptsReturn . 6.   �� 5       � ��$ Meiryo)�6+   �� 5       �@��TextWrapping$
 Wrap=�6-   �� 5       � ��$ 5q�6'   5      �� 5   
   " ��6   .�5      ��  � ��$ 5q�6'   5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5      $
��Auto �6   �� 5      .+�5   
   �� -   5         ��Name$ txtIn��5   "   $��0��6   6"   �� 5!   
   $��1��6   .+�5"      �� $��->��6   $��5q�6"   $��Center=�6-   �� 5#      -   5        $��	Uppercase��5#      6)   �� 5$      -   5        $��	Lowercase��5$      6)   �� 5%      -   5        $��Encode as Base64��5%      60   �� 5&      -   5        $��Decode Base64��5&      6-   �� 5'      -   5        $��
Encode URL��5'      6*   �� 5(      -   5        $��
Decode URL��5(      6*   �� 5)      -   5        $��Clear��5)       �� IsCancel . $��5,20,5,5q�65   6G   5*      �� 5,   
   -	   5        $ txtOut��5,   "   $��2��6    �� 
IsReadOnly . 
�������6D   5-      5.      