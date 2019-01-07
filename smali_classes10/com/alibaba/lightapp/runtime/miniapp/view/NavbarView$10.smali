.class final Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;
.super Ljava/lang/Object;
.source "NavbarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 464
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->d(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 465
    .local v1, "leftMargin":I
    :goto_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->e(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 466
    .local v3, "rightMargin":I
    :goto_1
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->f(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->f(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->f(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    :cond_0
    add-int/2addr v3, v4

    .line 467
    if-le v3, v1, :cond_4

    move v2, v3

    .line 468
    .local v2, "margin":I
    :goto_2
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 469
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 470
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 471
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 472
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView$10;->a:Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;->g(Lcom/alibaba/lightapp/runtime/miniapp/view/NavbarView;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 474
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .end local v1    # "leftMargin":I
    .end local v2    # "margin":I
    .end local v3    # "rightMargin":I
    :cond_2
    move v1, v4

    .line 464
    goto :goto_0

    .restart local v1    # "leftMargin":I
    :cond_3
    move v3, v4

    .line 465
    goto :goto_1

    .restart local v3    # "rightMargin":I
    :cond_4
    move v2, v1

    .line 467
    goto :goto_2
.end method
