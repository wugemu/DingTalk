.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;ILandroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    .prologue
    .line 741
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->a:I

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 744
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 745
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 748
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 749
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->a:I

    if-nez v1, :cond_1

    .line 750
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->b:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Landroid/view/View;)Landroid/view/View;

    .line 755
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7$1;->c:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$7;->a:Ljava/lang/String;

    invoke-static {v1}, Lhrc;->a(Ljava/lang/String;)V

    .line 757
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void
.end method
