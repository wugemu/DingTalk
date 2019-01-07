.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Lafb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    iput p2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "emailProfileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v10, 0x3

    .line 752
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->dismissLoadingDialog()V

    .line 753
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v5, p1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/Map;)Ljava/util/Map;

    .line 754
    iget v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->a:I

    if-ne v5, v10, :cond_3

    .line 755
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 756
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "android.intent.mail.EXTRA_ACTION_TYPE"

    const-string/jumbo v6, "intent_key_send_mail_to_chat_action_type"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string/jumbo v5, "intent_key_mail_server_id"

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->d(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v6, "intent_key_mail_msg_id"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    :goto_0
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string/jumbo v5, "intent_key_mail_account_name"

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->f(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v6, "mail_title"

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string/jumbo v5, "im_navigator_from"

    const-string/jumbo v6, "cmail"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 815
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_2
    return-void

    .line 758
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->messageId:Ljava/lang/String;

    goto :goto_0

    .line 760
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v5}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->e(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    goto :goto_1

    .line 765
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    if-eqz p1, :cond_0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 768
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v2, :cond_4

    .line 769
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 773
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v3, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 775
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v4, :cond_6

    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 776
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 779
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 780
    iget v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 781
    sget v5, Laxo$i;->mail_participant_no_uid_call:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_2

    .line 782
    :cond_8
    iget v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->a:I

    if-ne v5, v10, :cond_9

    .line 783
    sget v5, Laxo$i;->mail_participant_no_uid_chat:I

    invoke-static {v5}, Lcms;->a(I)V

    goto :goto_2

    .line 784
    :cond_9
    iget v5, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->a:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 785
    sget v5, Laxo$i;->mail_participant_no_uid_ding:I

    invoke-static {v5}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 789
    :cond_a
    const-string/jumbo v5, "NAVIGATOR"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v5

    const-string/jumbo v6, "https://qr.dingtalk.com/mail/selected.html"

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;->b:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v7}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22$1;

    invoke-direct {v8, p0, v3}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity$22;Ljava/util/ArrayList;)V

    invoke-interface {v5, v6, v7, v8}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto/16 :goto_2
.end method
