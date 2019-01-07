.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhin;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;Lhin;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->a:Lhin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 815
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->a:Lhin;

    iget-object v3, v3, Lhin;->g:Ljava/util/Map;

    invoke-static {v2, v3}, Lhrc;->a(Landroid/content/Context;Ljava/util/Map;)Landroid/view/View;

    move-result-object v1

    .line 816
    .local v1, "tipsView":Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->k(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 817
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 818
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 819
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->j(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;->b:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v2, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->a(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;Landroid/view/View;)Landroid/view/View;

    .line 822
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method
