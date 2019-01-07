.class final Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1$1;
.super Ljava/lang/Object;
.source "ConcernListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;

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
    .line 95
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/ConcernListActivity$1;->a:Lcom/alibaba/android/user/contact/activities/ConcernListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/ConcernListActivity;->a(Lcom/alibaba/android/user/contact/activities/ConcernListActivity;)Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;

    move-result-object v1

    .line 1343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1344
    const-string/jumbo v2, "userType"

    const-string/jumbo v3, "contact"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "profile_special_focus_click"

    invoke-interface {v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1347
    if-eqz p1, :cond_1

    .line 1351
    iget-object v0, v1, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1353
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment$5;-><init>(Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1377
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1378
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    .line 1379
    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/fragments/ConcernListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v2, v0, v3, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1382
    :cond_0
    invoke-static {}, Lfln;->a()Lfln;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v1, v2, v3, v0}, Lfln;->a(JLcma;)V

    .line 95
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 109
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 104
    return-void
.end method
