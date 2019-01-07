.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$2;
.super Ljava/lang/Object;
.source "CSpaceSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 224
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;->f(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceSearchFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
