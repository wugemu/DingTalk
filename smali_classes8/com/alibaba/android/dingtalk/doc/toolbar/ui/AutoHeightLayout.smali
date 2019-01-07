.class public abstract Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;
.super Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;
.source "AutoHeightLayout.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;


# static fields
.field private static final b:I


# instance fields
.field protected a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget v0, Lbqt$d;->doc_keyboardview:I

    sput v0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->h:Landroid/content/Context;

    invoke-static {v0}, Lbrr;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    .line 22
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->setOnResizeListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->h:Landroid/content/Context;

    invoke-static {v0}, Lbrr;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    .line 28
    invoke-virtual {p0, p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->setOnResizeListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout$a;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public a(I)V
    .locals 2
    .param p1, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    if-eq v0, p1, :cond_0

    .line 62
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->h:Landroid/content/Context;

    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    invoke-static {v0, v1}, Lbrr;->a(Landroid/content/Context;I)V

    .line 64
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->b(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->getChildCount()I

    move-result v0

    .line 35
    .local v0, "childSum":I
    if-le v0, v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "can host only one direct child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    if-nez v0, :cond_3

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-gez v2, :cond_1

    .line 41
    sget v2, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->b:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    .local v1, "paramsChild":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .end local v1    # "paramsChild":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void

    .line 46
    :cond_3
    if-ne v0, v2, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 48
    .restart local v1    # "paramsChild":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x2

    sget v3, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public abstract b(I)V
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/SoftKeyboardSizeWatchLayout;->onFinishInflate()V

    .line 56
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->a:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/AutoHeightLayout;->b(I)V

    .line 57
    return-void
.end method
