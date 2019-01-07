.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$1;
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
    .line 98
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 102
    return-void
.end method
