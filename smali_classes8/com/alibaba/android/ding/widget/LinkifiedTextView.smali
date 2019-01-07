.class public Lcom/alibaba/android/ding/widget/LinkifiedTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "LinkifiedTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 25
    .line 26
    move-object v7, p0

    .local v7, "widget":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 27
    .local v6, "text":Ljava/lang/CharSequence;
    instance-of v12, v6, Landroid/text/Spannable;

    if-eqz v12, :cond_3

    move-object v1, v6

    .line 28
    check-cast v1, Landroid/text/Spannable;

    .line 30
    .local v1, "buffer":Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 32
    .local v0, "action":I
    if-eq v0, v10, :cond_0

    if-nez v0, :cond_3

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v8, v12

    .line 35
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v9, v12

    .line 37
    .local v9, "y":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    sub-int/2addr v8, v12

    .line 38
    invoke-virtual {v7}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    sub-int/2addr v9, v12

    .line 40
    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollX()I

    move-result v12

    add-int/2addr v8, v12

    .line 41
    invoke-virtual {v7}, Landroid/widget/TextView;->getScrollY()I

    move-result v12

    add-int/2addr v9, v12

    .line 43
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 44
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 45
    .local v3, "line":I
    int-to-float v12, v8

    invoke-virtual {v2, v3, v12}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 47
    .local v5, "off":I
    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v1, v5, v5, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ClickableSpan;

    .line 50
    .local v4, "link":[Landroid/text/style/ClickableSpan;
    array-length v12, v4

    if-eqz v12, :cond_3

    .line 51
    if-ne v0, v10, :cond_2

    .line 52
    aget-object v11, v4, v11

    invoke-virtual {v11, v7}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 64
    .end local v0    # "action":I
    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "link":[Landroid/text/style/ClickableSpan;
    .end local v5    # "off":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_1
    :goto_0
    return v10

    .line 53
    .restart local v0    # "action":I
    .restart local v1    # "buffer":Landroid/text/Spannable;
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    .restart local v4    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v5    # "off":I
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_2
    if-nez v0, :cond_1

    .line 54
    aget-object v12, v4, v11

    .line 55
    invoke-interface {v1, v12}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    aget-object v11, v4, v11

    .line 56
    invoke-interface {v1, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 54
    invoke-static {v1, v12, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .end local v0    # "action":I
    .end local v1    # "buffer":Landroid/text/Spannable;
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "link":[Landroid/text/style/ClickableSpan;
    .end local v5    # "off":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_3
    move v10, v11

    .line 64
    goto :goto_0
.end method
