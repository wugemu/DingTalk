.class final Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;
.super Ljava/lang/Object;
.source "OrgApplyDetailActivity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 6
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    .line 104
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 105
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .line 106
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .line 111
    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 110
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .end local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    :goto_1
    return-void

    .line 111
    .restart local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .line 112
    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->c(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;

    .line 115
    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgApplyDetailActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v2}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
