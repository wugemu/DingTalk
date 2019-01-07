.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;
.super Ljava/lang/Object;
.source "SingleChatConversationSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 595
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1598
    if-eqz p1, :cond_0

    .line 1599
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 1600
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->l(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->m(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1602
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->n(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    move-result-object v0

    invoke-static {v0, p1}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->o(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1608
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->o(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 619
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "singlechat getHeader profile error s:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " s1:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    .line 620
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->l(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->m(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->p(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 615
    return-void
.end method
