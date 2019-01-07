.class public Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;
.super Landroid/widget/LinearLayout;
.source "RigidWebViewTopView.java"


# instance fields
.field public a:Lsg;

.field b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->b:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public offsetLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->offsetLeftAndRight(I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 33
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 35
    sub-int v0, p5, p3

    .line 36
    .local v0, "height":I
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->a:Lsg;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->b:I

    if-eq v1, v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->a:Lsg;

    invoke-interface {v1, p0}, Lsg;->a(Landroid/view/View;)V

    .line 38
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->b:I

    .line 40
    :cond_0
    return-void
.end method

.method public setOnLayoutChangedListener(Lsg;)V
    .locals 0
    .param p1, "listener"    # Lsg;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->a:Lsg;

    .line 16
    return-void
.end method
