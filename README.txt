/*------------------------------------------------------------------------------
----------------------------------Xinchao Liu-----------------------------------
------------------------------Discount Calculator-------------------------------
------------------------------------------------------------------------------*/

/*  What is it?
      This is an iPhone application that allows a user to enter a dollar amount,
      discount rate, additional discount rate, and sales tax rate to calculate 
      and visualize the cost fo an item. The application will also make use of
      a gesture to change from one view to another.                           */

/*  How to use it?
      - To use the Discount Calculator, user need to enter several data to start
        the compute.
            * (Required) Price: This is the original price for the product.
            * (Optional) Dollar Off: This is the amount that will be take off 
                                    after compute all the discount.
            * (Optional) Discount: The initial discount for the product. For 
                                    example, 20% Off, enter: <20>.
            * (Optional) Additional Discount: The additional discount that apply
                                                after the discount.
            * (Optional) Tax: The percentage of the tax rate to be applied. 
                                For 8.75% tax, enter: <8.75>.
      - Tap the <Calculate> button to see the results.
      - If user didn't enter the price, a message will show. If user only enter
        the price but didn't enter the other value, the original price and the
        discount price will be the same.
      - Use swipe gesture to see the graphical representation of the results.
            * Swipe from left to right to the graphical view.
            * Swipe from right to left in the graphical view to change back.
      - In the graph view:
            There will be three rectangles in the graph view. The blue one is 
            the original price. The red one the amount that has been take off 
            from the original price. The orange one is the discount price that
            you will need to pay for the product.                             */
         
/*  Features Completed:
      - Touch background to disappear keyboard
      - Warning when not input price
      - Calculate the original & discount price and show result
      - Use swipe gesture to change between views
      - A graph to show the results drawn by Quartz 2D         
      - Explain the price and percentage directly shown on the graph          */
      
/*  Features not Completed:
      - Add a UItoolbar on the keyboard to switch between textFields
      - The numbers get from textFields is not limited.
      - In the graph view, the text shown on the rectangles has a limited size.
        If the price amount become large, then the text shall shown outside the
        box. Maybe an automatic change font size function is needed to solve 
        this problem.                                                         */
      
/*  Bugs:
      - No known bugs yet.                                                    */
      
/*  External Dependancies:
      - No external dependancies.                                             */
      
/*  About the Author:
      Xinchao Liu
      Leo_Liu@csu.fullerton.edu                                               */
