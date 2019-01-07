.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;
.super Ljava/lang/Object;
.source "WMLErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    invoke-virtual {v0}, Ljqr;->a()Z

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
