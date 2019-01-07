.class Landroid/support/design/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/support/design/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Landroid/support/design/widget/TabLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 1514
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    .line 1515
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1512
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1516
    iget v0, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    if-eqz v0, :cond_0

    .line 1517
    iget v0, p1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 1518
    invoke-static {p2, v0}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1517
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1520
    :cond_0
    iget v0, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    iget v1, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iget v2, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iget v3, p1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;IIII)V

    .line 1522
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setGravity(I)V

    .line 1523
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setOrientation(I)V

    .line 1524
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->setClickable(Z)V

    .line 1526
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lgm;->a(Landroid/content/Context;I)Lgm;

    move-result-object v0

    .line 1525
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lgm;)V

    .line 1527
    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 2
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "line"    # I
    .param p3, "textSize"    # F

    .prologue
    .line 1780
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "iconView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1728
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1729
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1730
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1732
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    :goto_2
    if-eqz p2, :cond_0

    .line 1733
    if-eqz v3, :cond_7

    .line 1734
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1735
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1736
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1741
    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1744
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v2, 0x1

    .line 1745
    .local v2, "hasText":Z
    :goto_4
    if-eqz p1, :cond_1

    .line 1746
    if-eqz v2, :cond_9

    .line 1747
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1749
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->setVisibility(I)V

    .line 1754
    :goto_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1757
    :cond_1
    if-eqz p2, :cond_3

    .line 1758
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1759
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v0, 0x0

    .line 1760
    .local v0, "bottomMargin":I
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 1762
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v7, v9}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    .line 1764
    :cond_2
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v7, :cond_3

    .line 1765
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1766
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 1769
    .end local v0    # "bottomMargin":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    if-eqz v2, :cond_a

    :goto_6
    invoke-static {p0, v6}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1770
    return-void

    .end local v1    # "contentDesc":Ljava/lang/CharSequence;
    .end local v2    # "hasText":Z
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_4
    move-object v3, v6

    .line 1728
    goto :goto_0

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object v5, v6

    .line 1729
    goto :goto_1

    .restart local v5    # "text":Ljava/lang/CharSequence;
    :cond_6
    move-object v1, v6

    .line 1730
    goto :goto_2

    .line 1738
    .restart local v1    # "contentDesc":Ljava/lang/CharSequence;
    :cond_7
    invoke-virtual {p2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1739
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    move v2, v7

    .line 1744
    goto :goto_4

    .line 1751
    .restart local v2    # "hasText":Z
    :cond_9
    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1752
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    move-object v6, v1

    .line 1769
    goto :goto_6
.end method


# virtual methods
.method public getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1570
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1572
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1573
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1577
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1579
    const-class v0, Landroid/support/v7/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1580
    return-void
.end method

.method public onMeasure(II)V
    .locals 15
    .param p1, "origWidthMeasureSpec"    # I
    .param p2, "origHeightMeasureSpec"    # I

    .prologue
    .line 1584
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1585
    .local v8, "specWidthSize":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1586
    .local v7, "specWidthMode":I
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v12}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v6

    .line 1591
    .local v6, "maxWidth":I
    if-lez v6, :cond_6

    if-eqz v7, :cond_0

    if-le v8, v6, :cond_6

    .line 1595
    :cond_0
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v12, v12, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1602
    .local v11, "widthMeasureSpec":I
    :goto_0
    move/from16 v0, p2

    invoke-super {p0, v11, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1605
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_5

    .line 1606
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    .line 1607
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v9, v12, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 1608
    .local v9, "textSize":F
    iget v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1610
    .local v5, "maxLines":I
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v12, :cond_7

    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_7

    .line 1612
    const/4 v5, 0x1

    .line 1618
    :cond_1
    :goto_1
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    .line 1619
    .local v3, "curTextSize":F
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 1620
    .local v1, "curLineCount":I
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;)I

    move-result v2

    .line 1622
    .local v2, "curMaxLines":I
    cmpl-float v12, v9, v3

    if-nez v12, :cond_2

    if-ltz v2, :cond_5

    if-eq v5, v2, :cond_5

    .line 1624
    :cond_2
    const/4 v10, 0x1

    .line 1626
    .local v10, "updateTextView":Z
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v12, v12, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    cmpl-float v12, v9, v3

    if-lez v12, :cond_4

    const/4 v12, 0x1

    if-ne v1, v12, :cond_4

    .line 1632
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 1633
    .local v4, "layout":Landroid/text/Layout;
    if-eqz v4, :cond_3

    const/4 v12, 0x0

    invoke-direct {p0, v4, v12, v9}, Landroid/support/design/widget/TabLayout$TabView;->approximateLineWidth(Landroid/text/Layout;IF)F

    move-result v12

    .line 1634
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 1635
    :cond_3
    const/4 v10, 0x0

    .line 1639
    .end local v4    # "layout":Landroid/text/Layout;
    :cond_4
    if-eqz v10, :cond_5

    .line 1640
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1641
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1642
    move/from16 v0, p2

    invoke-super {p0, v11, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1646
    .end local v1    # "curLineCount":I
    .end local v2    # "curMaxLines":I
    .end local v3    # "curTextSize":F
    .end local v5    # "maxLines":I
    .end local v9    # "textSize":F
    .end local v10    # "updateTextView":Z
    :cond_5
    return-void

    .line 1598
    .end local v11    # "widthMeasureSpec":I
    :cond_6
    move/from16 v11, p1

    .restart local v11    # "widthMeasureSpec":I
    goto :goto_0

    .line 1613
    .restart local v5    # "maxLines":I
    .restart local v9    # "textSize":F
    :cond_7
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v12, :cond_1

    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getLineCount()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    .line 1615
    iget-object v12, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v9, v12, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    goto :goto_1
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 1531
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1533
    .local v0, "handled":Z
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    .line 1534
    if-nez v0, :cond_0

    .line 1535
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->playSoundEffect(I)V

    .line 1537
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 1538
    const/4 v0, 0x1

    .line 1540
    .end local v0    # "handled":Z
    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    .prologue
    .line 1656
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1658
    return-void
.end method

.method public setSelected(Z)V
    .locals 3
    .param p1, "selected"    # Z

    .prologue
    .line 1546
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_4

    const/4 v0, 0x1

    .line 1548
    .local v0, "changed":Z
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1550
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 1552
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 1557
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1558
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1560
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1561
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1563
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1564
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1566
    :cond_3
    return-void

    .line 1546
    .end local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1649
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1650
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1651
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 1653
    :cond_0
    return-void
.end method

.method final update()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1661
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$TabView;->mTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1662
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1663
    .local v0, "custom":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_a

    .line 1664
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1665
    .local v1, "customParent":Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 1666
    if-eqz v1, :cond_0

    .line 1667
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "customParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1669
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1671
    :cond_1
    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1672
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 1673
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1675
    :cond_2
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 1676
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1677
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    :cond_3
    const v5, 0x1020014

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1681
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 1682
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1684
    :cond_4
    const v5, 0x1020006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    .line 1695
    :goto_1
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v5, :cond_c

    .line 1697
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v5, :cond_5

    .line 1698
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Landroid/support/design/R$layout;->design_layout_tab_icon:I

    .line 1699
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1700
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, v2, v6}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;I)V

    .line 1701
    iput-object v2, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    .line 1703
    .end local v2    # "iconView":Landroid/widget/ImageView;
    :cond_5
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v5, :cond_6

    .line 1704
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v7, Landroid/support/design/R$layout;->design_layout_tab_text:I

    .line 1705
    invoke-virtual {v5, v7, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1706
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 1707
    iput-object v4, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    .line 1708
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mDefaultMaxLines:I

    .line 1710
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_6
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget v7, v7, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    invoke-static {v5, v7}, Landroid/support/v4/widget/TextViewCompat;->a(Landroid/widget/TextView;I)V

    .line 1711
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_7

    .line 1712
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1714
    :cond_7
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 1723
    :cond_8
    :goto_2
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {p0, v5}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 1724
    return-void

    .end local v0    # "custom":Landroid/view/View;
    :cond_9
    move-object v0, v5

    .line 1662
    goto/16 :goto_0

    .line 1687
    .restart local v0    # "custom":Landroid/view/View;
    :cond_a
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v7, :cond_b

    .line 1688
    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 1689
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomView:Landroid/view/View;

    .line 1691
    :cond_b
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    .line 1692
    iput-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    .line 1717
    :cond_c
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v5, :cond_d

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_8

    .line 1718
    :cond_d
    iget-object v5, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v7}, Landroid/support/design/widget/TabLayout$TabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_e
    move v5, v6

    .line 1723
    goto :goto_3
.end method
