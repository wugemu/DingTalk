.class final Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1$1;
.super Ljava/lang/Object;
.source "BlacklistActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 88
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/BlacklistActivity$1;->a:Lcom/alibaba/android/user/settings/activity/BlacklistActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/BlacklistActivity;->a(Lcom/alibaba/android/user/settings/activity/BlacklistActivity;)Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;

    move-result-object v2

    .line 1327
    if-eqz p1, :cond_0

    .line 1331
    iget-object v0, v2, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    new-instance v1, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;

    invoke-direct {v1, v2, p1}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment$5;-><init>(Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1356
    invoke-virtual {v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1357
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    invoke-virtual {v2}, Lcom/alibaba/android/user/settings/fragment/BlacklistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1360
    :goto_0
    invoke-static {}, Lfwv;->a()Lfwv;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v2, v3, v0}, Lfwv;->a(JLcma;)V

    .line 88
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 102
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 97
    return-void
.end method
