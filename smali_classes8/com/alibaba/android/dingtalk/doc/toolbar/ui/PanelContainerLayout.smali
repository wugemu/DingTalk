.class public Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;
.super Landroid/widget/LinearLayout;
.source "PanelContainerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;
    }
.end annotation


# instance fields
.field protected a:I

.field private b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a:I

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->c:Landroid/util/SparseArray;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setOrientation(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a:I

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->c:Landroid/util/SparseArray;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setOrientation(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    .line 117
    return-void
.end method

.method public final a(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a:I

    .line 109
    return-void
.end method

.method public getFuncHeight()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a:I

    return v0
.end method

.method public setCurrentPropertyPanel(Landroid/view/View;)V
    .locals 3
    .param p1, "panelView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->removeAllViews()V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisible(Z)V

    .line 70
    return-void
.end method

.method public setOnKeyBoardListener(Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    .line 133
    return-void
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "b"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 87
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_2

    .line 88
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisibility(I)V

    .line 89
    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a:I

    if-gez v1, :cond_1

    .line 90
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;->a()V

    .line 104
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void

    .line 92
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 98
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->setVisibility(I)V

    .line 99
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout;->b:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/PanelContainerLayout$a;->b()V

    goto :goto_1
.end method
