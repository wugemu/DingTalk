.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;
.super Ljava/lang/Object;
.source "WMH5PageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    .line 57
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    invoke-virtual {v0}, Ljqr;->a()Z

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMH5PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
