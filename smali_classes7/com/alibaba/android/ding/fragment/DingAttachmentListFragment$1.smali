.class final Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;
.super Ljava/lang/Object;
.source "DingAttachmentListFragment.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 6
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 110
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    new-instance v2, Laxv;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, ""

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Laxv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->a(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;Laxv;)Laxv;

    .line 111
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->b(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;)Laxv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->a(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Laxv;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
