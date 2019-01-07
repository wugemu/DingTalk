.class final Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "ChannelApplyDetailActivity.java"


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
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 226
    const-string/jumbo v3, "com.workapp.channel_apply_change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    const-string/jumbo v3, "user_mobile"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "mobile":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 229
    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    .line 230
    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    iget v4, v4, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    iput v4, v3, Lcom/alibaba/android/user/channel/model/ChannelApplyObject;->status:I

    .line 232
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->e(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->f(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->g(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 252
    .end local v1    # "mobile":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string/jumbo v3, "com.workapp.org.external.added"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "identify":Ljava/lang/String;
    const-string/jumbo v3, "employee_info"

    .line 241
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 243
    .local v2, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    const-string/jumbo v3, "ACTIVITY_IDENTIFY_CHANNEL_DETAIL_APPLY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    if-eqz v2, :cond_2

    .line 246
    iget-object v3, p0, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity$3;->a:Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;->a(Lcom/alibaba/android/user/channel/ChannelApplyDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    sget v3, Lezg$l;->dt_oa_attend_assist_networkexception:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_0
.end method
