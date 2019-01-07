.class final Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;
.super Ljava/lang/Object;
.source "OrgApplyActivity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 8
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 71
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v2, :cond_1

    .line 72
    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 73
    .local v1, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 74
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 75
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 76
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;)Lfgp;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgApplyActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .end local v1    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    return-void
.end method
