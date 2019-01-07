.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;
.super Lcmi;
.source "MailAgentConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lccy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 464
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string/jumbo v0, "listAgentConfigV2"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    const/16 v2, 0x3e1

    const/16 v5, 0x1d1

    move-object v4, v1

    move v6, v3

    move-object v7, v1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x3e1

    const/16 v5, 0x1d1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 403
    check-cast p1, Lccy;

    .line 1406
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    if-eqz p1, :cond_8

    .line 1411
    iget-object v0, p1, Lccy;->b:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;->ALIMAIL:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    if-ne v0, v4, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->h(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p1, Lccy;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lccy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1417
    :cond_2
    const-string/jumbo v0, "listAgentConfigV2"

    const-string/jumbo v4, "agentSettingsModelList model is empty"

    invoke-static {v0, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    move-object v4, v1

    move v6, v3

    move-object v7, v1

    move-object v8, v1

    invoke-static/range {v0 .. v8}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1430
    :cond_3
    iget-object v0, p1, Lccy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccx;

    .line 1431
    if-eqz v0, :cond_4

    .line 1435
    iget-object v6, v0, Lccx;->a:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 1436
    iget-object v0, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    move-object v6, v1

    move v10, v5

    move v5, v2

    move v2, v10

    move-object v11, v1

    move v1, v3

    move-object v3, v11

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccw;

    .line 1437
    if-eqz v0, :cond_5

    .line 1441
    iget-object v8, v0, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v9, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v8, v9, :cond_6

    .line 1442
    iget-object v5, v0, Lccw;->b:Ljava/lang/String;

    .line 1443
    iget-object v4, v0, Lccw;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1444
    iget-object v0, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move-object v6, v5

    move v5, v4

    move v4, v0

    goto :goto_1

    .line 1445
    :cond_6
    iget-object v8, v0, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v9, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->SMTP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v8, v9, :cond_9

    .line 1446
    iget-object v2, v0, Lccw;->b:Ljava/lang/String;

    .line 1447
    iget-object v1, v0, Lccw;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1448
    iget-object v0, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    move-object v3, v2

    move v2, v1

    move v1, v0

    .line 1450
    goto :goto_1

    :cond_7
    move v10, v1

    move-object v1, v6

    move v6, v10

    move v11, v2

    move v2, v5

    move v5, v11

    move-object v12, v3

    move v3, v4

    move-object v4, v12

    .line 1456
    :goto_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->c:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$9;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;Ljava/lang/String;IZLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1458
    :cond_8
    const-string/jumbo v0, "listAgentConfigV2"

    const-string/jumbo v1, "agentSettingsModelList is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_a
    move v6, v3

    move-object v4, v1

    goto :goto_3
.end method
