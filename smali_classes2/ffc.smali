.class public final Lffc;
.super Landroid/text/method/BaseMovementMethod;
.source "CircleMovementMethod.java"


# static fields
.field private static final b:I

.field private static final c:I


# instance fields
.field public a:Z

.field private d:I

.field private e:I

.field private f:Landroid/text/style/BackgroundColorSpan;

.field private g:[Landroid/text/style/ClickableSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lezg$e;->transparent:I

    sput v0, Lffc;->b:I

    .line 26
    sget v0, Lezg$e;->default_clickable_color:I

    sput v0, Lffc;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lffc;->a:Z

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lffc;->b:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    .line 53
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lffc;->b:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lffc;->d:I

    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lffc;->c:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lffc;->e:I

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "clickableSpanBgClor"    # I
    .param p2, "textViewBgColor"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lffc;->a:Z

    .line 71
    iput p2, p0, Lffc;->d:I

    .line 72
    iput p1, p0, Lffc;->e:I

    .line 73
    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 78
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 79
    .local v0, "action":I
    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 81
    .local v4, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 83
    .local v5, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    .line 84
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 90
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 91
    .local v2, "line":I
    int-to-float v6, v4

    invoke-virtual {v1, v2, v6}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 93
    .local v3, "off":I
    const-class v6, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v3, v3, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ClickableSpan;

    iput-object v6, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    .line 94
    iget-object v6, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 1048
    iput-boolean v9, p0, Lffc;->a:Z

    .line 97
    iget-object v6, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    aget-object v6, v6, v9

    .line 98
    invoke-interface {p2, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    aget-object v7, v7, v9

    .line 99
    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 97
    invoke-static {p2, v6, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 101
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    iget v7, p0, Lffc;->e:I

    invoke-direct {v6, v7}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v6, p0, Lffc;->f:Landroid/text/style/BackgroundColorSpan;

    .line 102
    iget-object v6, p0, Lffc;->f:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    aget-object v7, v7, v9

    .line 103
    invoke-interface {p2, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    aget-object v8, v8, v9

    .line 104
    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    const/16 v9, 0x21

    .line 102
    invoke-interface {p2, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "off":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 2048
    .restart local v1    # "layout":Landroid/text/Layout;
    .restart local v2    # "line":I
    .restart local v3    # "off":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_1
    iput-boolean v7, p0, Lffc;->a:Z

    .line 109
    iget v6, p0, Lffc;->d:I

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 112
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "off":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2
    if-ne v0, v7, :cond_5

    .line 113
    iget-object v6, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    array-length v6, v6

    if-lez v6, :cond_3

    .line 114
    iget-object v6, p0, Lffc;->g:[Landroid/text/style/ClickableSpan;

    aget-object v6, v6, v9

    invoke-virtual {v6, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 115
    iget-object v6, p0, Lffc;->f:Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_3

    .line 116
    iget-object v6, p0, Lffc;->f:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 121
    :cond_3
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 129
    :cond_4
    :goto_1
    sget v6, Lezg$e;->transparent:I

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 123
    :cond_5
    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    .line 126
    iget-object v6, p0, Lffc;->f:Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_4

    .line 127
    iget-object v6, p0, Lffc;->f:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {p2, v6}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1
.end method
