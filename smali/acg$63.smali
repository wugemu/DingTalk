.class final Lacg$63;
.super Lcmi;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcma;

.field final synthetic f:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/Long;

.field final synthetic k:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcma;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lacg$63;->a:Ljava/lang/String;

    iput p2, p0, Lacg$63;->b:I

    iput-object p3, p0, Lacg$63;->c:Ljava/lang/String;

    iput-object p4, p0, Lacg$63;->d:Ljava/lang/String;

    iput-object p5, p0, Lacg$63;->e:Lcma;

    iput-object p6, p0, Lacg$63;->f:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    iput-object p7, p0, Lacg$63;->g:Ljava/lang/String;

    iput-object p8, p0, Lacg$63;->h:Ljava/lang/String;

    iput-object p9, p0, Lacg$63;->i:Ljava/lang/String;

    iput-object p10, p0, Lacg$63;->j:Ljava/lang/Long;

    iput-object p11, p0, Lacg$63;->k:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 669
    const-string/jumbo v1, "navToListFromNativeLogin"

    invoke-static {v1, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 670
    iget-object v1, p0, Lacg$63;->k:Lcma;

    if-eqz v1, :cond_0

    .line 671
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "9999"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "normalizedCode":Ljava/lang/String;
    iget-object v1, p0, Lacg$63;->k:Lcma;

    invoke-interface {v1, v0, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .end local v0    # "normalizedCode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 17

    .prologue
    .line 579
    check-cast p1, Lccy;

    .line 1582
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    invoke-virtual {v2}, Lacr;->p()V

    .line 1583
    if-eqz p1, :cond_1

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;->NORMAL:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    move-object/from16 v0, p1

    iget-object v3, v0, Lccy;->b:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;->GMAIL:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    move-object/from16 v0, p1

    iget-object v3, v0, Lccy;->b:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    if-ne v2, v3, :cond_2

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lccy;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lccy;->a:Ljava/util/List;

    .line 1585
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1586
    :cond_1
    const-string/jumbo v2, "MailNavigator"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "domain:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lacg$63;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", mailLoginType:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lacg$63;->b:I

    .line 1587
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1586
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const-string/jumbo v3, "MailNavigator"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "agentSettingsModelList:"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    if-nez p1, :cond_4

    const/4 v2, 0x1

    .line 1590
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 1589
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    if-eqz p1, :cond_2

    .line 1593
    const-string/jumbo v2, "MailNavigator"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "agentSettingsModelList.type:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lccy;->b:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    .line 1594
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1593
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_2
    if-eqz p1, :cond_5

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;->ALIMAIL:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    move-object/from16 v0, p1

    iget-object v3, v0, Lccy;->b:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    if-ne v2, v3, :cond_5

    .line 1606
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v2

    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->ALI:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;)V

    .line 1607
    const-string/jumbo v2, "MailNavigator"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "login ali mail email = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lacg$63;->c:Ljava/lang/String;

    invoke-static {v5}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v2, v0, Lacg$63;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lacg$63;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacg$63;->e:Lcma;

    invoke-static {v2, v3, v4}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1657
    :cond_3
    :goto_1
    return-void

    .line 1589
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1612
    :cond_5
    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lccy;->a:Ljava/util/List;

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lccy;->a:Ljava/util/List;

    .line 1613
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_f

    .line 1614
    move-object/from16 v0, p1

    iget-object v2, v0, Lccy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccx;

    .line 1615
    iget-object v2, v2, Lccx;->a:Ljava/util/List;

    .line 1616
    if-eqz v2, :cond_6

    .line 1617
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccw;

    .line 1618
    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;->GMAIL:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    move-object/from16 v0, p1

    iget-object v6, v0, Lccy;->b:Lcom/alibaba/android/dingtalk/userbase/idl/EmailAccessTypeEnum;

    if-ne v5, v6, :cond_7

    .line 1619
    iget-object v5, v2, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v5, v6, :cond_8

    .line 1620
    const-string/jumbo v5, "imap.gmail.com"

    iput-object v5, v2, Lccw;->b:Ljava/lang/String;

    .line 1625
    :cond_7
    :goto_3
    const-string/jumbo v5, "MailNavigator"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "<Common Protocol> server type: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, ", host:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lccw;->b:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1621
    :cond_8
    iget-object v5, v2, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->SMTP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v5, v6, :cond_7

    .line 1622
    const-string/jumbo v5, "smtp.gmail.com"

    iput-object v5, v2, Lccw;->b:Ljava/lang/String;

    goto :goto_3

    .line 1630
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lccy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccx;

    .line 1633
    iget-object v2, v10, Lccx;->a:Ljava/util/List;

    if-eqz v2, :cond_e

    .line 1634
    move-object/from16 v0, p0

    iget-object v2, v0, Lacg$63;->f:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    sget-object v3, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    if-ne v2, v3, :cond_b

    .line 1635
    iget-object v2, v10, Lccx;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccw;

    .line 1636
    if-eqz v2, :cond_a

    .line 1637
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v2, Lccw;->d:Ljava/lang/Boolean;

    goto :goto_4

    .line 1640
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lacg$63;->f:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    sget-object v3, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->NON_SSL:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    if-ne v2, v3, :cond_e

    .line 1641
    iget-object v2, v10, Lccx;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccw;

    .line 1642
    if-eqz v2, :cond_c

    iget-object v4, v2, Lccw;->d:Ljava/lang/Boolean;

    .line 2022
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v4

    .line 1642
    if-eqz v4, :cond_c

    .line 1643
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v2, Lccw;->d:Ljava/lang/Boolean;

    .line 1644
    iget-object v4, v2, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v5, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v4, v5, :cond_d

    .line 1645
    const/16 v4, 0x8f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lccw;->c:Ljava/lang/Integer;

    goto :goto_5

    .line 1647
    :cond_d
    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lccw;->c:Ljava/lang/Integer;

    goto :goto_5

    .line 1654
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lacg$63;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lacg$63;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacg$63;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lacg$63;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lacg$63;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lacg$63;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lacg$63;->j:Ljava/lang/Long;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lacg$63;->k:Lcma;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V

    goto/16 :goto_1

    .line 1660
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lacg$63;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lacg$63;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lacg$63;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lacg$63;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lacg$63;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lacg$63;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lacg$63;->j:Ljava/lang/Long;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lacg$63;->k:Lcma;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v16}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V

    goto/16 :goto_1
.end method
