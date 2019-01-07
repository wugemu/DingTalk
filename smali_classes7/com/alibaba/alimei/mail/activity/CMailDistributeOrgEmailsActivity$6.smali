.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "CMailDistributeOrgEmailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 137
    if-nez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "mail_employee_account_changed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)V

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, "identifier":Ljava/lang/String;
    const-string/jumbo v1, "10001"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 147
    .local v8, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 149
    .local v9, "uid":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v9, :cond_3

    iget-wide v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_3

    .line 150
    iget-wide v2, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v9    # "uid":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    invoke-static {}, Lro;->a()Lro;

    move-result-object v4

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;)J

    move-result-wide v2

    const-string/jumbo v1, "EVENTBUTLER"

    .line 155
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;)V

    const-class v10, Lcma;

    iget-object v11, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity$6;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeOrgEmailsActivity;

    invoke-interface {v1, v6, v10, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1630
    const-string/jumbo v6, "MailRPC"

    const-string/jumbo v10, "dispatchOrgMailByUid"

    invoke-static {v6, v10}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    new-instance v6, Lro$16;

    invoke-direct {v6, v4, v1}, Lro$16;-><init>(Lro;Lcma;)V

    .line 1648
    iget-object v1, v4, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    const/4 v4, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/idl/service/CMailIService;->dispatchOrgMailByUid(JILjava/util/List;Liyv;)V

    goto/16 :goto_0
.end method
