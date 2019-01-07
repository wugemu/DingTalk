.class final Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;
.super Ljava/lang/Object;
.source "ChannelApplyDetailActivity.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

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
    .line 66
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcjo$b;->a:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 68
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 69
    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->b(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->d(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 74
    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 73
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    :goto_1
    return-void

    .line 74
    .restart local v0    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 75
    invoke-static {v4}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->c(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->d(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$1;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 78
    invoke-static {v2}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v2}, Lflr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
