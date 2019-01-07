.class public Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "CSpaceBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field protected s:Z

.field protected t:Z

.field public u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->b:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->t:Z

    .line 89
    return-void
.end method


# virtual methods
.method public E_()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected final K_()Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "needLazyLoad"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->t:Z

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->u:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment$a;

    .line 58
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->getUserVisibleHint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->s:Z

    .line 66
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->t:Z

    if-eqz v0, :cond_0

    .line 67
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->b:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->b:Z

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->E_()V

    goto :goto_0
.end method
