.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;
.super Ljava/lang/Object;
.source "WMLPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    .line 65
    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    invoke-virtual {v0}, Ljqr;->a()Z

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
