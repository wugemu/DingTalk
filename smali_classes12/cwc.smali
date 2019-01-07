.class public final Lcwc;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMoveNoLongClickResMethod.java"


# static fields
.field private static b:Lcwc;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static a()Lcwc;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcwc;->b:Lcwc;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcwc;

    invoke-direct {v0}, Lcwc;-><init>()V

    sput-object v0, Lcwc;->b:Lcwc;

    .line 70
    :cond_0
    sget-object v0, Lcwc;->b:Lcwc;

    return-object v0
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 25
    .local v0, "action":I
    const/4 v7, 0x1

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_5

    .line 27
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 28
    .local v5, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 30
    .local v6, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v7

    sub-int/2addr v5, v7

    .line 31
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v7

    add-int/2addr v5, v7

    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v7

    add-int/2addr v6, v7

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 37
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 38
    .local v2, "line":I
    int-to-float v7, v5

    invoke-virtual {v1, v2, v7}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 40
    .local v4, "off":I
    const-class v7, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 42
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v7, v3

    if-eqz v7, :cond_4

    .line 43
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcwc;->a:J

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    .line 45
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 57
    :cond_1
    :goto_0
    const/4 v7, 0x1

    .line 63
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :goto_1
    return v7

    .line 47
    .restart local v1    # "layout":Landroid/text/Layout;
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v4    # "off":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_2
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0

    .line 49
    :cond_3
    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcwc;->a:J

    .line 52
    const/4 v7, 0x0

    aget-object v7, v3, v7

    .line 53
    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v3, v8

    .line 54
    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 52
    invoke-static {p2, v7, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 59
    :cond_4
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 63
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1
.end method
