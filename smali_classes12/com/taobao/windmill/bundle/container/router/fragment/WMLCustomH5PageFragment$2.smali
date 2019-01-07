.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$2;
.super Ljava/lang/Object;
.source "WMLCustomH5PageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment$2;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLCustomH5PageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 69
    return-void
.end method
