.class public final Lacg;
.super Ljava/lang/Object;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacg$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:J

.field private static c:Z

.field private static final d:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lccx;

.field private static f:Lacg$a;

.field private static final g:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Z

.field private static i:I

.field private static j:I

.field private static k:Lrz;

.field private static l:Z

.field private static m:Lcom/alibaba/alimei/sdk/model/FolderModel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 146
    new-instance v0, Lfp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfp;-><init>(I)V

    sput-object v0, Lacg;->d:Lfp;

    .line 151
    sput-object v5, Lacg;->e:Lccx;

    .line 153
    sput-object v5, Lacg;->f:Lacg$a;

    .line 155
    const-wide/16 v0, 0x0

    sput-wide v0, Lacg;->b:J

    .line 176
    new-instance v0, Lacg$1;

    invoke-direct {v0}, Lacg$1;-><init>()V

    sput-object v0, Lacg;->g:Lcma;

    .line 221
    sput-boolean v4, Lacg;->h:Z

    .line 222
    const/4 v0, 0x3

    sput v0, Lacg;->i:I

    .line 223
    sput v4, Lacg;->j:I

    .line 232
    new-instance v0, Lrz;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lrz;-><init>(J)V

    sput-object v0, Lacg;->k:Lrz;

    .line 2800
    sput-boolean v4, Lacg;->l:Z

    .line 4663
    sput-object v5, Lacg;->m:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5285
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)Lccx;
    .locals 5
    .param p0, "incomingServer"    # Ljava/lang/String;
    .param p1, "incomingPort"    # Ljava/lang/String;
    .param p2, "incomingSSL"    # Z
    .param p3, "smtpServer"    # Ljava/lang/String;
    .param p4, "smtpPort"    # Ljava/lang/String;
    .param p5, "smtpSSL"    # Z

    .prologue
    .line 5009
    new-instance v2, Lccx;

    invoke-direct {v2}, Lccx;-><init>()V

    .line 5012
    .local v2, "model":Lccx;
    :try_start_0
    new-instance v1, Lccw;

    invoke-direct {v1}, Lccw;-><init>()V

    .line 5013
    .local v1, "imapAgentModel":Lccw;
    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    iput-object v4, v1, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    .line 5014
    iput-object p0, v1, Lccw;->b:Ljava/lang/String;

    .line 5015
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lccw;->c:Ljava/lang/Integer;

    .line 5016
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lccw;->d:Ljava/lang/Boolean;

    .line 5018
    new-instance v3, Lccw;

    invoke-direct {v3}, Lccw;-><init>()V

    .line 5019
    .local v3, "smtpAgentModel":Lccw;
    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->SMTP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    iput-object v4, v3, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    .line 5020
    iput-object p3, v3, Lccw;->b:Ljava/lang/String;

    .line 5021
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lccw;->c:Ljava/lang/Integer;

    .line 5022
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lccw;->d:Ljava/lang/Boolean;

    .line 5023
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lccx;->a:Ljava/util/List;

    .line 5024
    iget-object v4, v2, Lccx;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5025
    iget-object v4, v2, Lccx;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5031
    .end local v1    # "imapAgentModel":Lccw;
    .end local v2    # "model":Lccx;
    .end local v3    # "smtpAgentModel":Lccw;
    :goto_0
    return-object v2

    .line 5026
    .restart local v2    # "model":Lccx;
    :catch_0
    move-exception v0

    .line 5027
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "getAgentSettingsModel, NumberFormatException, e:"

    invoke-static {v4, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5029
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a()Lcma;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lacg;->g:Lcma;

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "userId"    # J

    .prologue
    .line 168
    sget-object v1, Lacg;->d:Lfp;

    .line 6096
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 168
    check-cast v0, Ljava/lang/String;

    .line 169
    .local v0, "conversationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const-wide/32 v2, 0x28687

    invoke-static {p0, p1, v2, v3}, Lafh;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 3276
    if-eqz p0, :cond_1

    .line 3278
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 3287
    :goto_0
    return-object v0

    .line 3280
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3282
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v0}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3285
    :cond_1
    const-string/jumbo v0, "getEmailFromProfile"

    const-string/jumbo v1, " return null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JLjava/lang/String;)V
    .locals 2
    .param p0, "userId"    # J
    .param p2, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, Lacg;->d:Lfp;

    invoke-virtual {v0, p0, p1, p2}, Lfp;->b(JLjava/lang/Object;)V

    .line 160
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 5211
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/add_expression.html"

    .line 5213
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$80;

    invoke-direct {v3}, Lacg$80;-><init>()V

    .line 5211
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 5221
    sget v0, Laxo$a;->present:I

    sget v1, Laxo$a;->pop_dialog_exit:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 5222
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/alimei/framework/model/UserAccountModel;ZLcma;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userAccountModel"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .param p2, "isBind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1202
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    iget-object v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 12246
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 1209
    iget-object v3, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    const/16 v4, 0x258

    const/4 v5, 0x0

    const-string/jumbo v1, "EVENTBUTLER"

    .line 1211
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lacg$7;

    invoke-direct {v6, v0, p3, p1}, Lacg$7;-><init>(Ljava/lang/String;Lcma;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    const-class v7, Lxv;

    .line 1212
    invoke-interface {v1, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxv;

    .line 1209
    invoke-interface {v2, v3, v4, v5, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getWebToken(Ljava/lang/String;ILjava/lang/String;Lxv;)V

    .line 1272
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "localId"    # J
    .param p5, "opType"    # I

    .prologue
    .line 1278
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-gez v1, :cond_1

    .line 1279
    :cond_0
    const-string/jumbo v1, "Invalid Parameters"

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 1307
    :goto_0
    return-void

    .line 1283
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_to_im_top_tip"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1284
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_mail_subject"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1285
    const-string/jumbo v1, "intent_key_mail_account_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    const-string/jumbo v1, "intent_key_mail_msg_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1287
    const-string/jumbo v1, "intent_key_mail_operation_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1289
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1292
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/home.html"

    new-instance v3, Lacg$8;

    invoke-direct {v3}, Lacg$8;-><init>()V

    .line 1293
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2710
    invoke-static {}, Lace;->a()V

    .line 2711
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 2713
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v1, :cond_1

    .line 2714
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/ding/home.html"

    .line 2715
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lacg$31;

    invoke-direct {v5}, Lacg$31;-><init>()V

    .line 2714
    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 2741
    :cond_0
    :goto_0
    return-void

    .line 2723
    :cond_1
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 2725
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2726
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/mail_login.html"

    .line 2727
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lacg$32;

    invoke-direct {v5, v0}, Lacg$32;-><init>(Ljava/lang/String;)V

    .line 2726
    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 2736
    :cond_2
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2737
    invoke-static {p0}, Lacg;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ILcma;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lacg;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lacg;->k:Lrz;

    invoke-virtual {v1}, Lrz;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    :goto_0
    monitor-exit v2

    return-void

    .line 342
    :cond_0
    :try_start_1
    sget-object v1, Lacg;->k:Lrz;

    .line 7041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lrz;->a:J

    .line 344
    if-nez p0, :cond_2

    .line 345
    if-eqz p2, :cond_1

    .line 346
    const-string/jumbo v1, "2017"

    const-string/jumbo v3, "data error"

    invoke-interface {p2, v1, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lacg;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 352
    :cond_2
    :try_start_2
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v1

    const/4 v3, 0x0

    .line 7147
    iput-boolean v3, v1, Lacp;->e:Z

    .line 355
    sget-boolean v1, Lacg;->h:Z

    if-eqz v1, :cond_3

    .line 357
    sget v1, Lacg;->j:I

    add-int/lit8 v1, v1, 0x1

    .line 358
    sput v1, Lacg;->j:I

    sget v3, Lacg;->i:I

    if-ge v1, v3, :cond_3

    .line 359
    sget v1, Laxo$i;->dt_cmail_list_loading:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 360
    const-string/jumbo v1, "navToMailList, sTryNavToListCount:"

    sget v3, Lacg;->j:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lacg;->b(Z)V

    .line 367
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    invoke-virtual {v1}, Lacr;->c()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "dingtalkMail":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;ILcma;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "tryGotoLogin"    # Z

    .prologue
    .line 1325
    invoke-static {p0}, Lafh;->b(Landroid/content/Context;)V

    .line 1326
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/multi_mail/list.html"

    .line 1328
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$9;

    invoke-direct {v3, p1, p2}, Lacg$9;-><init>(IZ)V

    .line 1326
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1338
    invoke-static {}, Lace;->a()V

    .line 1339
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    .line 3594
    if-nez p0, :cond_0

    .line 3595
    const-string/jumbo v0, "navToDistributeOrgEmails"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3608
    :goto_0
    return-void

    .line 3598
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/distribute_org_mails.html"

    .line 3600
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$46;

    invoke-direct {v3, p1, p2}, Lacg$46;-><init>(J)V

    .line 3598
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Lacg$54;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lacg$54;-><init>(Lcma;Landroid/content/Context;J)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;JLjava/lang/String;Lcma;)V
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcma;

    .prologue
    .line 131
    invoke-static {p0, p1, p2, p3, p4}, Lacg;->b(Landroid/content/Context;JLjava/lang/String;Lcma;)V

    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgID"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;

    .prologue
    .line 4870
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4871
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "mail_org_id"

    invoke-virtual {v3, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4872
    const-string/jumbo v0, "mail_account_name"

    invoke-static {p1, p2}, Lacn;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4874
    const-string/jumbo v0, "domain"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4877
    :cond_0
    const-string/jumbo v0, "v2"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 4878
    .local v4, "isNewVersion":Z
    if-eqz v4, :cond_1

    const/4 v5, 0x5

    .line 4880
    .local v5, "fromFlag":I
    :goto_0
    const/4 v0, 0x0

    sget v2, Laxo$i;->dt_mail_please_wait:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    .line 4882
    .local v1, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    new-instance v0, Lacg$75;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lacg$75;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Landroid/content/Context;Landroid/os/Bundle;ZI)V

    invoke-virtual {v6, p1, p2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcmi;)V

    .line 4928
    return-void

    .line 4878
    .end local v1    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    .end local v5    # "fromFlag":I
    :cond_1
    const/4 v5, 0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriData"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1507
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 1553
    :goto_0
    return-void

    .line 1514
    :cond_0
    new-instance v0, Lacg$14;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lacg$14;-><init>(Lcma;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "from"    # I

    .prologue
    .line 4805
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/mail_csc.html"

    .line 4807
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    .line 4808
    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$72;

    invoke-direct {v3, p1, p2}, Lacg$72;-><init>(Landroid/os/Bundle;I)V

    .line 4805
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 4817
    return-void
.end method

.method public static a(Landroid/content/Context;Lcma;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .line 9521
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lacg;->a(Landroid/content/Context;ILcma;)V

    .line 526
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0, p1, p2}, Lacg;->c(Landroid/content/Context;Lcma;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcma;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "receiverEmail"    # Ljava/lang/String;
    .param p3, "isCheckProcessingBind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2838
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lacg;

    monitor-enter v1

    .line 13843
    :try_start_0
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->h()Labx;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13844
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->p()V

    .line 13846
    new-instance v0, Lacg$35;

    invoke-direct {v0, p0, p1, p2}, Lacg$35;-><init>(Landroid/content/Context;Lcma;Ljava/lang/String;)V

    .line 13871
    if-eqz p0, :cond_1

    .line 13873
    invoke-static {}, Lro;->a()Lro;

    move-result-object v2

    invoke-virtual {v2, v0}, Lro;->a(Lcma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13880
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 13875
    :cond_1
    if-eqz p1, :cond_0

    .line 13876
    :try_start_1
    const-string/jumbo v0, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {p1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 13877
    const-string/jumbo v0, "checkLoginForMultiMails"

    const-string/jumbo v2, "context == null"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 13881
    :cond_2
    :try_start_2
    invoke-static {p0, p1, p2}, Lacg;->c(Landroid/content/Context;Lcma;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3973
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;ZZ)V

    .line 3974
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;ZZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p5, "supportAttachPreview"    # Z
    .param p6, "isEmlAttachment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 3980
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_1

    .line 3981
    if-eqz p4, :cond_0

    .line 3982
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    :cond_0
    :goto_0
    return-void

    .line 3986
    :cond_1
    new-instance v0, Lacg$58;

    const/4 v6, 0x1

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lacg$58;-><init>(Lcma;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Landroid/os/Bundle;Lcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailDetailModel"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5101
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 5102
    :cond_0
    if-eqz p3, :cond_1

    .line 5103
    const-string/jumbo v0, "navToChooseParticipant"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid Parameters"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "Invalid Parameters"

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5180
    :cond_1
    :goto_0
    return-void

    .line 5108
    :cond_2
    new-instance v0, Lacg$79;

    invoke-direct {v0, p1, p3, p0, p2}, Lacg$79;-><init>(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Lcma;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;ZLcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailDetailModel"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p2, "isMeeting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1457
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 1497
    :goto_0
    return-void

    .line 1464
    :cond_0
    new-instance v0, Lacg$13;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lacg$13;-><init>(Lcma;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3370
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3408
    :cond_0
    :goto_0
    return-void

    .line 3376
    :cond_1
    new-instance v0, Lacg$42;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lacg$42;-><init>(Lcma;Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4173
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4174
    :cond_0
    if-eqz p4, :cond_1

    .line 4175
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4220
    :cond_1
    :goto_0
    return-void

    .line 4180
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailReceiverEmail:Ljava/lang/String;

    .line 4181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailType:I

    if-nez v0, :cond_4

    .line 4183
    const-wide/16 v8, 0x0

    .line 4185
    .local v8, "messageId":J
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 4190
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 4191
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 4192
    .local v6, "cMailIService":Lcom/alibaba/alimei/idl/service/CMailIService;
    if-eqz v6, :cond_1

    .line 4193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v0, Lacg$61;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lacg$61;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V

    invoke-interface {v6, v10, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->getMailMessageReceiverMail(Ljava/lang/Long;Liyv;)V

    goto :goto_0

    .line 4186
    .end local v6    # "cMailIService":Lcom/alibaba/alimei/idl/service/CMailIService;
    :catch_0
    move-exception v7

    .line 4187
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "navToMailDetail, Long.parseLong, reason"

    invoke-static {v0, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 4188
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4215
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lacg;->c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    goto :goto_0

    .line 4218
    .end local v8    # "messageId":J
    :cond_4
    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailReceiverEmail:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lacg;->c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcma;

    .prologue
    .line 131
    invoke-static/range {p0 .. p5}, Lacg;->c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1860
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1861
    :cond_0
    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    .line 1865
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1866
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_2

    .line 1867
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1869
    :cond_2
    new-instance v1, Lacg$18;

    invoke-direct {v1, v0, p0, p1}, Lacg$18;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-static {p0, v1}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;ILcma;)V
    .locals 7
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcma;

    .prologue
    .line 131
    .line 24338
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_2

    .line 24339
    :cond_0
    if-eqz p5, :cond_1

    .line 24340
    const-string/jumbo v0, "Invalid Parameters"

    const-string/jumbo v1, "data error"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 24342
    :cond_1
    :goto_0
    return-void

    .line 24344
    :cond_2
    invoke-static {p2}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    .line 24345
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "x"

    :goto_1
    iget-object v2, p3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    iget-object v3, p3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lacg$65;

    invoke-direct {v6, p5, p4, p0, p1}, Lacg$65;-><init>(Lcma;ILandroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    .line 24344
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    goto :goto_0

    .line 24345
    :cond_3
    iget-object v1, p3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1942
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1943
    :cond_0
    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    :goto_0
    return-void

    .line 1947
    :cond_1
    instance-of v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v1, :cond_2

    .line 1950
    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 1954
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1955
    .local v0, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz v0, :cond_3

    .line 1956
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1958
    :cond_3
    new-instance v1, Lacg$19;

    invoke-direct {v1, p0, p1, p2, v0}, Lacg$19;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-static {p0, v1}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultMail"    # Ljava/lang/String;

    .prologue
    .line 3012
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/mail_login.html"

    .line 3014
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$38;

    invoke-direct {v3, p1}, Lacg$38;-><init>(Ljava/lang/String;)V

    .line 3012
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 3023
    invoke-static {}, Lace;->a()V

    .line 3024
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;ILcma;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcma;

    .prologue
    .line 131
    invoke-static {p0, p2, p3}, Lacg;->b(Landroid/content/Context;ILcma;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "operationType"    # I
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 2367
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 2368
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "templateId"    # J

    .prologue
    .line 3729
    if-nez p0, :cond_0

    .line 3730
    const-string/jumbo v0, "navToMailSignConfig"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3744
    :goto_0
    return-void

    .line 3733
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/sign_config.html"

    .line 3735
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$52;

    const-wide/16 v4, -0x1

    invoke-direct {v3, p1, v4, v5}, Lacg$52;-><init>(Ljava/lang/String;J)V

    .line 3733
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "signId"    # J
    .param p4, "templateId"    # J

    .prologue
    .line 3778
    if-nez p0, :cond_0

    .line 3779
    const-string/jumbo v0, "navToMailSignList"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3794
    :goto_0
    return-void

    .line 3782
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/mail/sign_template_list.html"

    .line 3784
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lacg$55;

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lacg$55;-><init>(Ljava/lang/String;JJ)V

    .line 3782
    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JLcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "localMailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2087
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 2088
    :cond_0
    if-eqz p4, :cond_1

    .line 2089
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :cond_1
    :goto_0
    return-void

    .line 2094
    :cond_2
    if-eqz p4, :cond_3

    .line 2095
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2098
    :cond_3
    const-string/jumbo v0, "MailNavigator"

    const-string/jumbo v1, "nav2WriteMail"

    invoke-static {v0, p1, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    invoke-static {p1}, Lacg;->a(Ljava/lang/String;)V

    .line 2100
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/compose.html"

    .line 2102
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$21;

    invoke-direct {v3, p2, p3, p1}, Lacg$21;-><init>(JLjava/lang/String;)V

    .line 2100
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2620
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 2658
    :goto_0
    return-void

    .line 2626
    :cond_0
    new-instance v0, Lacg$29;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lacg$29;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZLcma;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p3, "clearTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4070
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    if-nez p0, :cond_2

    .line 4071
    :cond_0
    if-eqz p4, :cond_1

    .line 4072
    const-string/jumbo v0, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {p4, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4128
    :cond_1
    :goto_0
    return-void

    .line 4076
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lafh;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    move-result-object v1

    .line 4077
    .local v1, "chatFloatDialogDo":Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4078
    .local v6, "mailSnippetModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4080
    new-instance v0, Lacg$60;

    move v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lacg$60;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;ZLandroid/content/Context;Ljava/lang/String;Lcma;)V

    invoke-static {v6, v0}, Lacg;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2566
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_1

    .line 2567
    if-eqz p3, :cond_0

    .line 2568
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    :cond_0
    :goto_0
    return-void

    .line 2572
    :cond_1
    new-instance v0, Lacg$28;

    invoke-direct {v0, p3, p1, p0, p2}, Lacg$28;-><init>(Lcma;Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dingTalkId"    # Ljava/lang/String;
    .param p2, "listener"    # Lgqq;

    .prologue
    .line 3034
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3036
    :cond_0
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "Invalid Parameters"

    invoke-virtual {p2, v0, v1}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3162
    :goto_0
    return-void

    .line 3042
    :cond_1
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lacg$39;

    invoke-direct {v1, p2, p1}, Lacg$39;-><init>(Lgqq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 3682
    if-nez p0, :cond_0

    .line 3683
    const-string/jumbo v0, "navToMailSignDetailConfig"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    :goto_0
    return-void

    .line 3686
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/sign_detail_config.html"

    .line 3688
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$50;

    invoke-direct {v3, p1, p2}, Lacg$50;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3686
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "draftMessage"    # Ljava/lang/String;
    .param p3, "operationType"    # I
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2172
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_1

    .line 2173
    if-eqz p5, :cond_0

    .line 2174
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    :cond_0
    :goto_0
    return-void

    .line 2178
    :cond_1
    const/4 v8, 0x0

    .line 2179
    .local v8, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_2

    move-object v8, p0

    .line 2180
    check-cast v8, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 2181
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 2185
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2186
    invoke-static {p2}, Lair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2191
    .local v7, "draftHtml":Ljava/lang/String;
    :goto_1
    move-object v4, v8

    .line 2192
    .local v4, "finalActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    new-instance v0, Lacg$24;

    move-object v1, p5

    move-object v2, p4

    move v3, p3

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lacg$24;-><init>(Lcma;Lcom/alibaba/wukong/im/Conversation;ILcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0

    .line 2188
    .end local v4    # "finalActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .end local v7    # "draftHtml":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, ""

    .restart local v7    # "draftHtml":Ljava/lang/String;
    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # Ljava/lang/String;
    .param p2, "newDistributedMail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v17, Lacg;

    monitor-enter v17

    .line 6109
    const-wide/16 v8, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 260
    .local v6, "tempOrgId":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 262
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v16

    .line 264
    .local v16, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v6, v7, v1}, Lacg;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;JLjava/lang/String;)Z

    move-result v15

    .line 265
    .local v15, "found":Z
    if-eqz v15, :cond_1

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v6, v7, v1, v2}, Lacg;->b(Landroid/content/Context;JLjava/lang/String;Lcma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .end local v15    # "found":Z
    .end local v16    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    :goto_0
    monitor-exit v17

    return-void

    .line 268
    .restart local v15    # "found":Z
    .restart local v16    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "not found new distribute email in local profile, try query from remote"

    invoke-static {v5}, Lafg;->a(Ljava/lang/String;)V

    .line 270
    if-eqz v16, :cond_0

    .line 271
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    move-object/from16 v0, v16

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    new-instance v5, Lacg$12;

    move-object/from16 v8, p2

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lacg$12;-><init>(JLjava/lang/String;Landroid/content/Context;Lcma;)V

    move-object v9, v11

    move-wide v10, v12

    move-wide v12, v6

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJLcma;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    .end local v6    # "tempOrgId":J
    .end local v15    # "found":Z
    .end local v16    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :catchall_0
    move-exception v5

    monitor-exit v17

    throw v5

    .line 299
    .restart local v6    # "tempOrgId":J
    :cond_2
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 301
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "accountEmail":Ljava/lang/String;
    invoke-static {v4}, Lafh;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 303
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {v4}, Lacr;->a(Ljava/lang/String;)V

    .line 307
    .end local v4    # "accountEmail":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v5, v1}, Lacg;->a(Landroid/content/Context;ILcma;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;Z[Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestTicket"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "folder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p4, "isSessionable"    # Z
    .param p5, "serverIds"    # [Ljava/lang/String;

    .prologue
    .line 3826
    if-nez p0, :cond_0

    .line 3848
    :goto_0
    return-void

    .line 3830
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/mail/moveto_folder.html"

    .line 3832
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lacg$56;

    const/4 v2, 0x0

    move-object v1, p2

    move v3, p4

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lacg$56;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/alimei/sdk/model/FolderModel;[Ljava/lang/String;)V

    .line 3830
    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1673
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_1

    .line 1674
    if-eqz p5, :cond_0

    .line 1675
    const-string/jumbo v0, "navToWriteMail, checkLogin"

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    new-instance v0, Lacg$17;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lacg$17;-><init>(Lcma;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;ILcma;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailCid"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .param p5, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    new-instance v0, Lacg$10;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lacg$10;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;I)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "calItemId"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2119
    .local p5, "attachmentList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2158
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/mail/compose.html"

    .line 2131
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lacg$23;

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lacg$23;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 2129
    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 3706
    if-nez p0, :cond_0

    .line 3707
    const-string/jumbo v0, "navToMailSignDisclaimer"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3721
    :goto_0
    return-void

    .line 3710
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/sign_disclaimer.html"

    .line 3712
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$51;

    invoke-direct {v3, p1, p2}, Lacg$51;-><init>(Ljava/lang/String;Z)V

    .line 3710
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailId"    # Ljava/lang/String;
    .param p2, "isMeeting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1410
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 1411
    const-string/jumbo v0, "navToParticipant, reason"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :goto_0
    return-void

    .line 1417
    :cond_0
    new-instance v0, Lacg$11;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lacg$11;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "tos"    # [Ljava/lang/String;
    .param p3, "ccs"    # [Ljava/lang/String;
    .param p4, "bccs"    # [Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1623
    .local p7, "attachmentList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-nez p0, :cond_0

    .line 1662
    :goto_0
    return-void

    .line 1627
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v8

    const-string/jumbo v9, "https://qr.dingtalk.com/mail/compose.html"

    .line 1629
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lacg$16;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lacg$16;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1627
    invoke-interface {v8, v9, v10, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method static synthetic a(Lccx;Lcma;JLjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lccx;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 131
    .line 26990
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 26992
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lacg$3;

    invoke-direct {v2, p1}, Lacg$3;-><init>(Lcma;)V

    invoke-interface {v0, p4, v1, p0, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->bindOrgDomainAndUpdateOrgAgentConfig(Ljava/lang/String;Ljava/lang/Long;Lccx;Liyv;)V

    .line 131
    return-void
.end method

.method static synthetic a(Lccx;Lcma;ZJLjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lccx;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 131
    .line 19021
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 19022
    if-nez v0, :cond_1

    .line 19023
    const-string/jumbo v0, "updateOrgAgentConfig"

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19024
    if-eqz p1, :cond_0

    .line 19025
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p1, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 19032
    :cond_0
    :goto_0
    return-void

    .line 19031
    :cond_1
    if-eqz p2, :cond_2

    .line 19032
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lacg$4;

    invoke-direct {v2, p1}, Lacg$4;-><init>(Lcma;)V

    invoke-interface {v0, p5, v1, p0, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->updateOrgAgentConfig(Ljava/lang/String;Ljava/lang/Long;Lccx;Liyv;)V

    goto :goto_0

    .line 19050
    :cond_2
    new-instance v1, Lacg$5;

    invoke-direct {v1, p1}, Lacg$5;-><init>(Lcma;)V

    invoke-interface {v0, p5, p0, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->updateAgentConfig(Ljava/lang/String;Lccx;Liyv;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p0, "currentFolder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    .line 4669
    sput-object p0, Lacg;->m:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 4670
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "snippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4707
    .local p2, "uidEmails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_1

    .line 4749
    :cond_0
    :goto_0
    return-void

    .line 4711
    :cond_1
    if-eqz p0, :cond_0

    .line 4712
    const-class v5, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 4713
    .local v1, "cMailIService":Lcom/alibaba/alimei/idl/service/CMailIService;
    if-eqz v1, :cond_0

    .line 4714
    new-instance v4, Labq;

    invoke-direct {v4}, Labq;-><init>()V

    .line 4715
    .local v4, "mailSendModel":Labq;
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 4716
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_2

    .line 4717
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v5, v4, Labq;->a:Ljava/lang/String;

    .line 4718
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v5, v4, Labq;->h:Ljava/lang/String;

    .line 4720
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v5, v4, Labq;->d:Ljava/lang/String;

    .line 4721
    iget-boolean v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->hasAttachment:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4722
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationExtension:Ljava/lang/String;

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4723
    .local v2, "conversationExtensionArr":[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 4725
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Labq;->g:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4733
    .end local v2    # "conversationExtensionArr":[Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v5, v4, Labq;->c:Ljava/lang/String;

    .line 4734
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v5, v4, Labq;->f:Ljava/lang/String;

    .line 4735
    new-instance v5, Lacg$71;

    invoke-direct {v5}, Lacg$71;-><init>()V

    invoke-interface {v1, v4, p1, p2, v5}, Lcom/alibaba/alimei/idl/service/CMailIService;->sendMailMsgWithUidEmailMap(Labq;Ljava/lang/String;Ljava/util/Map;Liyv;)V

    goto :goto_0

    .line 4726
    .restart local v2    # "conversationExtensionArr":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 4727
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "sendMailMessage2GroupChat"

    invoke-static {v5, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 4731
    .end local v2    # "conversationExtensionArr":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Labq;->g:Ljava/lang/Integer;

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
    .locals 12
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailSnippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p3, "clearTop"    # Z

    .prologue
    .line 4523
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4566
    :cond_0
    :goto_0
    return-void

    .line 4526
    :cond_1
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 4527
    .local v7, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 4529
    const/4 v2, 0x0

    .line 4530
    .local v2, "nick":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4531
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 4532
    iput-object v2, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 4534
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 4535
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4536
    .local v8, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4537
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    .line 4538
    .local v3, "icon":Ljava/lang/String;
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lacg$68;

    const/4 v4, 0x0

    invoke-direct {v1, p1, p2, v4}, Lacg$68;-><init>(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 4565
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    .line 4538
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6
    .param p0, "account"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lacg;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lafh;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3323
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    .line 14395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 14398
    invoke-virtual {v1}, Lacr;->p()V

    .line 14399
    invoke-static {p0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14400
    iput-object p0, v1, Lacr;->a:Ljava/lang/String;

    .line 3324
    :cond_0
    :goto_0
    sput-object p0, Lacg;->a:Ljava/lang/String;

    .line 3325
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    sput-boolean v1, Lacg;->c:Z

    .line 3327
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v1

    .line 15052
    invoke-static {p0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lafh;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3328
    :cond_1
    :goto_2
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4}, Lacr;->a(Ljava/lang/String;ZLcma;)V

    .line 3329
    invoke-static {p0}, Lafh;->b(Ljava/lang/String;)V

    .line 3331
    const-string/jumbo v1, "MailNavigator.setCurrentAccountName"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "mCurrentAccountName:"

    aput-object v5, v4, v3

    sget-object v3, Lacg;->a:Ljava/lang/String;

    .line 3333
    invoke-static {v3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", isAlimail:"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    sget-boolean v3, Lacg;->c:Z

    .line 3334
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 3332
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3331
    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3337
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 3339
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_2

    .line 3341
    invoke-static {p0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 3342
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3344
    iput-object p0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    .line 3347
    const-string/jumbo v1, "setCurrentUserProfileExtensionObject"

    invoke-static {v1, p0}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3349
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 3350
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lacg$41;

    invoke-direct {v2, v0}, Lacg$41;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 3360
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_2
    return-void

    .line 14402
    :cond_3
    iput-object p0, v1, Lacr;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 3325
    goto :goto_1

    .line 15056
    :cond_5
    iget-object v4, v1, Lafc;->a:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 15060
    new-instance v4, Lafc$1;

    invoke-direct {v4, v1, p0}, Lafc$1;-><init>(Lafc;Ljava/lang/String;)V

    .line 15082
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    .line 15579
    invoke-static {p0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 15581
    const-string/jumbo v1, "-1"

    const-string/jumbo v5, "Invalid Parameters"

    invoke-interface {v4, v1, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15586
    :cond_6
    new-instance v5, Lro$14;

    invoke-direct {v5, v1, v4}, Lro$14;-><init>(Lro;Lcma;)V

    .line 15602
    iget-object v1, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p0, v5}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryDomainAliasByEmail(Ljava/lang/String;Liyv;)V

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "localId"    # J

    .prologue
    .line 1310
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_cancel_im_top_tip"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_mail_account_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    const-string/jumbo v1, "intent_key_mail_msg_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1313
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1314
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IZLcma;Lcma;)V
    .locals 7
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "mailLoginType"    # I
    .param p3, "isBind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p4, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    .local p5, "agentMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    sget-object v4, Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;->UNKNOWN:Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V

    .line 692
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IZLcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V
    .locals 10
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "mailLoginType"    # I
    .param p3, "isBind"    # Z
    .param p4, "sslLevel"    # Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p5, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    .local p6, "agentMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V

    .line 541
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V
    .locals 5
    .param p0, "accountNameOld"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "agentSettingsModel"    # Lccx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccx;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 777
    if-eqz p3, :cond_0

    .line 778
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid Parameters"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "accountName":Ljava/lang/String;
    new-instance v2, Lacg$83;

    invoke-direct {v2, v0, p1, p2, p3}, Lacg$83;-><init>(Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 10413
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v1

    const-string/jumbo v3, ""

    const-class v4, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v1

    check-cast v1, Lpq;

    .line 10414
    invoke-interface {v1, v0, p1, v2}, Lpq;->login(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p0, "accountNameOld"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    if-eqz p2, :cond_0

    .line 705
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid Parameters"

    invoke-interface {p2, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lacg$73;

    invoke-direct {v2, v0, p1, p2}, Lacg$73;-><init>(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Lcma;Lcma;)V
    .locals 15
    .param p0, "account"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "oauthToken"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .param p5, "tokenExpireTime"    # Ljava/lang/Long;
    .param p6, "mailLoginType"    # I
    .param p7, "sslLevel"    # Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "I",
            "Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p8, "aliMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    .local p9, "agentMailLoginListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    const-string/jumbo v0, "MailNavigator"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "email:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 562
    invoke-static {p0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", length:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 561
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget v0, Laxo$i;->dt_mail_scs_invalid_address:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    :cond_2
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    .local v1, "domain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 577
    .local v12, "cMailIService":Lcom/alibaba/alimei/idl/service/CMailIService;
    if-eqz v12, :cond_0

    .line 578
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v0, Lacg$63;

    move/from16 v2, p6

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p8

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lacg$63;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcma;Lcom/alibaba/alimei/mail/account/AgentServerSSLLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcma;)V

    invoke-interface {v12, v1, v13, v14, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->listAgentConfigV2(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V
    .locals 15
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/Long;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Lccx;
    .param p9, "x9"    # Lcma;
    .param p10, "x10"    # Z
    .param p11, "x11"    # Z
    .param p12, "x12"    # J
    .param p14, "x13"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v14}, Lacg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;ZJLjava/lang/String;Z)V
    .locals 15
    .param p0, "incomingUser"    # Ljava/lang/String;
    .param p1, "incomingPass"    # Ljava/lang/String;
    .param p2, "incomingServer"    # Ljava/lang/String;
    .param p3, "incomingPort"    # Ljava/lang/String;
    .param p4, "incomingSSL"    # Z
    .param p5, "smtpPass"    # Ljava/lang/String;
    .param p6, "smtpServer"    # Ljava/lang/String;
    .param p7, "smtpPort"    # Ljava/lang/String;
    .param p8, "smtpSSL"    # Z
    .param p10, "isAdmin"    # Z
    .param p11, "orgID"    # J
    .param p13, "domain"    # Ljava/lang/String;
    .param p14, "bindDomain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;ZJ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 4962
    .local p9, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->IMAP:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;)V

    .line 4963
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 4965
    new-instance v1, Lacg$77;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p14

    move-object/from16 v9, p9

    move-wide/from16 v10, p11

    move-object/from16 v12, p13

    move/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lacg$77;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLcma;JLjava/lang/String;Z)V

    .line 17470
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-string/jumbo v2, ""

    const-class v3, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v2

    check-cast v2, Lpq;

    .line 17471
    const/4 v12, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object v13, v1

    invoke-interface/range {v2 .. v13}, Lpq;->checkConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    .line 4995
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V
    .locals 14
    .param p0, "incomingUser"    # Ljava/lang/String;
    .param p1, "incomingPass"    # Ljava/lang/String;
    .param p2, "incomingServer"    # Ljava/lang/String;
    .param p3, "incomingPort"    # Ljava/lang/String;
    .param p4, "incomingSSL"    # Z
    .param p5, "smtpPass"    # Ljava/lang/String;
    .param p6, "smtpServer"    # Ljava/lang/String;
    .param p7, "smtpPort"    # Ljava/lang/String;
    .param p8, "smtpSSL"    # Z
    .param p9, "allowInvalidCertificates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5049
    .local p10, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    sget-object v1, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->IMAP:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;)V

    .line 5050
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 5052
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v0, Lacg$78;

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lacg$78;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLcma;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object v13, v0

    invoke-static/range {v1 .. v13}, Lafw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    .line 5084
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccx;Lcma;ZZJLjava/lang/String;)V
    .locals 16
    .param p0, "accountOld"    # Ljava/lang/String;
    .param p1, "inComingPass"    # Ljava/lang/String;
    .param p2, "outgoingPass"    # Ljava/lang/String;
    .param p3, "allowInvalidCertificates"    # Z
    .param p4, "agentSettingsModel"    # Lccx;
    .param p6, "isUpdate"    # Z
    .param p7, "isAdmin"    # Z
    .param p8, "orgID"    # J
    .param p10, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lccx;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 828
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-object/from16 v14, p10

    invoke-static/range {v0 .. v14}, Lacg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V

    .line 829
    return-void
.end method

.method public static a(Ljava/util/List;Landroid/app/Activity;Ljava/util/Map;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p3, "mailSnippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p4, "clearTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p0, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "uidEmails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 4576
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 4579
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    if-nez p1, :cond_1

    .line 4636
    :cond_0
    :goto_0
    return-void

    .line 4584
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 4585
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4586
    .local v6, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4587
    .local v4, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v4, :cond_2

    .line 4590
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4591
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 4592
    .local v5, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 4593
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 4594
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4596
    .end local v4    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v5    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    .line 4598
    .local v1, "icon":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v2}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 4599
    .local v2, "params":Lcom/alibaba/wukong/im/CreateConversationParams;
    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 4600
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 4601
    invoke-virtual {v2, v1}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 4602
    iget-object v7, p3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 4603
    iget-object v7, p3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4605
    .local v0, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "mail_msg_id"

    iget-object v8, p3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4606
    invoke-virtual {v2, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setExtension(Ljava/util/Map;)V

    .line 4608
    .end local v0    # "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-class v7, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v7}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v8, Lacg$69;

    invoke-direct {v8, p1, v10, p3, p2}, Lacg$69;-><init>(Landroid/app/Activity;ZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/util/Map;)V

    invoke-interface {v7, v8, v2}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 4645
    .local p0, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;>;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lacg$70;

    invoke-direct {v1, p0, p1}, Lacg$70;-><init>(Ljava/util/List;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 4661
    return-void
.end method

.method static synthetic a(Z)V
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {v0}, Lacg;->b(Z)V

    return-void
.end method

.method static synthetic a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V
    .locals 8
    .param p0, "x0"    # Z
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/model/WebTokenModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lccx;
    .param p5, "x5"    # Lcma;

    .prologue
    const/4 v2, 0x0

    .line 131
    move v0, p0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 18082
    invoke-static/range {v0 .. v7}, Lacg;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 131
    return-void
.end method

.method static synthetic a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V
    .locals 8
    .param p0, "x0"    # Z
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/model/WebTokenModel;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lccx;
    .param p8, "x8"    # Lcma;

    .prologue
    .line 131
    const/4 v0, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lacg;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    return-void
.end method

.method private static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V
    .locals 20
    .param p0, "ali"    # Z
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "oauthToken"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .param p5, "pass"    # Ljava/lang/String;
    .param p6, "agentSettingsModel"    # Lccx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccx;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1097
    .local p7, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-class v5, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 1098
    .local v4, "mailIService":Lcom/alibaba/alimei/idl/service/CMailIService;
    if-eqz v4, :cond_7

    .line 1099
    invoke-static/range {p1 .. p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1101
    .local v6, "accountEncrypted":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1103
    .local v7, "agentIdentityModel":Lzs;
    if-nez p0, :cond_4

    .line 1104
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez p6, :cond_3

    .line 1106
    :cond_1
    const-string/jumbo v5, "bindEmail, !ali"

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v5

    .line 1107
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v8}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 1108
    const-string/jumbo v5, "-1"

    const-string/jumbo v8, "Invalid Parameters"

    move-object/from16 v0, p7

    invoke-interface {v0, v5, v8}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    .end local v6    # "accountEncrypted":Ljava/lang/String;
    .end local v7    # "agentIdentityModel":Lzs;
    :cond_2
    :goto_0
    return-void

    .line 1111
    .restart local v6    # "accountEncrypted":Ljava/lang/String;
    .restart local v7    # "agentIdentityModel":Lzs;
    :cond_3
    invoke-static/range {p5 .. p5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1112
    .local v13, "passEncrypted":Ljava/lang/String;
    new-instance v7, Lzs;

    .end local v7    # "agentIdentityModel":Lzs;
    invoke-direct {v7}, Lzs;-><init>()V

    .line 1113
    .restart local v7    # "agentIdentityModel":Lzs;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1114
    invoke-static/range {p2 .. p2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1115
    .local v11, "clientIdEncrypted":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1116
    .local v12, "oauthTokenEncrypted":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1117
    .local v14, "refreshTokenEncrypted":Ljava/lang/String;
    iput-object v11, v7, Lzs;->d:Ljava/lang/String;

    .line 1118
    iput-object v12, v7, Lzs;->b:Ljava/lang/String;

    .line 1119
    iput-object v14, v7, Lzs;->c:Ljava/lang/String;

    .line 1120
    const-string/jumbo v5, "abc"

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lzs;->a:Ljava/lang/String;

    .line 1126
    .end local v11    # "clientIdEncrypted":Ljava/lang/String;
    .end local v12    # "oauthTokenEncrypted":Ljava/lang/String;
    .end local v13    # "passEncrypted":Ljava/lang/String;
    .end local v14    # "refreshTokenEncrypted":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v15

    .line 1127
    .local v15, "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v15, :cond_6

    const-wide/16 v16, 0x0

    .line 1128
    .local v16, "uid":J
    :goto_2
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    const/4 v8, 0x1

    const-string/jumbo v10, "_"

    aput-object v10, v5, v8

    const/4 v8, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v8

    const/4 v8, 0x3

    const-string/jumbo v10, "_"

    aput-object v10, v5, v8

    const/4 v8, 0x4

    aput-object p1, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1129
    .local v9, "checkCode":Ljava/lang/String;
    invoke-static {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1130
    const/4 v5, 0x0

    new-instance v10, Lacg$6;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v2, p0

    invoke-direct {v10, v0, v1, v2, v15}, Lacg$6;-><init>(Ljava/lang/String;Lcma;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    move-object/from16 v8, p6

    invoke-interface/range {v4 .. v10}, Lcom/alibaba/alimei/idl/service/CMailIService;->bind(Ljava/lang/String;Ljava/lang/String;Lzs;Lccx;Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 1122
    .end local v9    # "checkCode":Ljava/lang/String;
    .end local v15    # "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .end local v16    # "uid":J
    .restart local v13    # "passEncrypted":Ljava/lang/String;
    :cond_5
    iput-object v13, v7, Lzs;->a:Ljava/lang/String;

    goto :goto_1

    .line 1127
    .end local v13    # "passEncrypted":Ljava/lang/String;
    .restart local v15    # "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_6
    iget-wide v0, v15, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    move-wide/from16 v16, v0

    goto :goto_2

    .line 1187
    .end local v6    # "accountEncrypted":Ljava/lang/String;
    .end local v7    # "agentIdentityModel":Lzs;
    .end local v15    # "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_7
    const-string/jumbo v5, "bindEmail:"

    const-string/jumbo v8, "null == mailIService"

    invoke-static {v5, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    if-eqz p7, :cond_2

    .line 1189
    const-string/jumbo v5, "-1"

    const-string/jumbo v8, "Invalid Parameters"

    move-object/from16 v0, p7

    invoke-interface {v0, v5, v8}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;JLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0, p1, p2, p3}, Lacg;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 2809
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 2810
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    .line 2811
    invoke-static {v1}, Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 2812
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2813
    const-string/jumbo v2, "MailNavigator"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "resetDingEmailAccountAfterSetDingId, email = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    invoke-static {v0}, Lacg;->a(Ljava/lang/String;)V

    .line 2817
    .end local v0    # "email":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2745
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 2746
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2747
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {p0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 2766
    :goto_0
    return-void

    .line 2748
    :cond_0
    invoke-static {}, Lacn;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2749
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2752
    :cond_1
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    .line 2753
    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/new_mail_account.html"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized b(Landroid/content/Context;ILcma;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v4, Lacg;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v3

    .line 9151
    iget-boolean v2, v3, Lacp;->e:Z

    .line 403
    .local v2, "isLoadingHasShow":Z
    instance-of v3, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_1

    .line 404
    move-object v0, p0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-object v1, v0

    .line 405
    .local v1, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    if-nez v2, :cond_0

    .line 406
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 412
    :cond_0
    :goto_0
    new-instance v3, Lacg$43;

    invoke-direct {v3, v1, p2, p0, p1}, Lacg$43;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;Landroid/content/Context;I)V

    invoke-static {p0, v3}, Lacg;->e(Landroid/content/Context;Lcma;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit v4

    return-void

    .line 409
    .end local v1    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    goto :goto_0

    .line 401
    .end local v1    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .end local v2    # "isLoadingHasShow":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    .line 3615
    if-nez p0, :cond_0

    .line 3616
    const-string/jumbo v0, "navToLimitDistributeOrgEmails"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    :goto_0
    return-void

    .line 3619
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/distribute_limit_org_mails.html"

    .line 3621
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$47;

    invoke-direct {v3, p1, p2}, Lacg$47;-><init>(J)V

    .line 3619
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;JLcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2033
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 2076
    :goto_0
    return-void

    .line 2039
    :cond_0
    new-instance v0, Lacg$20;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lacg$20;-><init>(Lcma;Landroid/content/Context;J)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;JLjava/lang/String;Lcma;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "newDistributedMail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lacg$22;

    invoke-direct {v0, p0, p4}, Lacg$22;-><init>(Landroid/content/Context;Lcma;)V

    .line 331
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "tryLoginNewOrgEmail "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2, v0}, Lacr;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V

    .line 334
    return-void
.end method

.method public static b(Landroid/content/Context;Lcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3482
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 3493
    :goto_0
    return-void

    .line 3489
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/settings.html"

    .line 3491
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3489
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0, p1}, Lacg;->f(Landroid/content/Context;Lcma;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V
    .locals 8
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Lcma;

    .prologue
    const/4 v7, 0x1

    .line 131
    .line 26246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 25248
    invoke-interface {v0, p3}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25249
    invoke-static {p3}, Lacg;->a(Ljava/lang/String;)V

    .line 25252
    :cond_0
    if-eqz p1, :cond_1

    .line 25253
    const-string/jumbo v0, "MailNavigator"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "nav2MailDetail receiverAccountName: "

    aput-object v3, v1, v2

    aput-object p3, v1, v7

    const/4 v2, 0x2

    const-string/jumbo v3, ", mailId: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", messageId: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", localId: "

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalUUID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", isAlimail: "

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-boolean v3, Lacg;->c:Z

    .line 25254
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 25253
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25256
    :cond_1
    new-instance v0, Lacg$64;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lacg$64;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;ILcma;)V

    .line 26825
    invoke-static {p0, v0, p3, v7}, Lacg;->a(Landroid/content/Context;Lcma;Ljava/lang/String;Z)V

    .line 131
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 3550
    if-nez p0, :cond_0

    .line 3551
    const-string/jumbo v0, "navToMailConfig"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    :goto_0
    return-void

    .line 3554
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/config.html"

    .line 3556
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$44;

    invoke-direct {v3, p1}, Lacg$44;-><init>(Ljava/lang/String;)V

    .line 3554
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;ILcma;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailListType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lacg;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lacq;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 373
    const-string/jumbo v0, "MailNavigator"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "do check mail alias for accountName: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {p1}, Laco;->a(Ljava/lang/String;)Laco;

    move-result-object v0

    new-instance v2, Lacg$33;

    invoke-direct {v2, p1, p0, p2, p3}, Lacg$33;-><init>(Ljava/lang/String;Landroid/content/Context;ILcma;)V

    .line 8148
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v3

    .line 8149
    if-nez v3, :cond_1

    .line 8150
    const-string/jumbo v0, "MailAliasManager"

    const-string/jumbo v3, "getUserSelfFromServer fail for accountApi is null"

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8151
    if-eqz v2, :cond_0

    .line 8152
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 8157
    :cond_1
    :try_start_1
    iget-object v4, v0, Laco;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8158
    const-string/jumbo v0, "MailAliasManager"

    const-string/jumbo v3, "getUserSelfFromServer fail for accountName is null"

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8159
    if-eqz v2, :cond_0

    .line 8160
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 8165
    :cond_2
    :try_start_2
    iget-object v4, v0, Laco;->a:Ljava/lang/String;

    invoke-static {v4}, Lafh;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Laco;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 8166
    :cond_3
    const-string/jumbo v4, "MailAliasManager"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getUserSelfFromServer fail for accountName: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Laco;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", hasLogin: "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v0, v0, Laco;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8167
    if-eqz v2, :cond_0

    .line 8168
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 8173
    :cond_4
    iget-object v3, v0, Laco;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v3

    .line 8174
    if-eqz v3, :cond_5

    .line 8175
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Laco;->a(ZLcma;)Lxv;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromServer(Lxv;)V

    goto :goto_0

    .line 8177
    :cond_5
    const-string/jumbo v0, "MailAliasManager"

    const-string/jumbo v3, "getUserSelfFromServer fail for contactApi is null"

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8178
    if-eqz v2, :cond_0

    .line 8179
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 395
    :cond_6
    const-string/jumbo v0, "MailNavigator"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "do not check mail alias for accountName: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {p0, p2, p3}, Lacg;->b(Landroid/content/Context;ILcma;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;JLcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "localMailId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2451
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 2452
    :cond_0
    if-eqz p4, :cond_1

    .line 2453
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p4, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    :cond_1
    :goto_0
    return-void

    .line 2458
    :cond_2
    if-eqz p4, :cond_3

    .line 2459
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 2462
    :cond_3
    const-string/jumbo v0, "MailNavigator"

    const-string/jumbo v1, "navToMailDetail"

    invoke-static {v0, p1, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    invoke-static {p1}, Lacg;->a(Ljava/lang/String;)V

    .line 2464
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/detail.html"

    .line 2466
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$26;

    invoke-direct {v3, p2, p3, p1}, Lacg$26;-><init>(JLjava/lang/String;)V

    .line 2464
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2667
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2668
    :cond_0
    if-eqz p2, :cond_1

    .line 2669
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    :cond_1
    :goto_0
    return-void

    .line 2673
    :cond_2
    new-instance v0, Lacg$30;

    invoke-direct {v0, p2, p0, p1}, Lacg$30;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1563
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 1619
    :goto_0
    return-void

    .line 1569
    :cond_0
    new-instance v0, Lacg$15;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lacg$15;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "clearTop"    # Z

    .prologue
    .line 4035
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4059
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 4039
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    if-eqz p2, :cond_2

    .line 4040
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/home.html"

    new-instance v3, Lacg$59;

    invoke-direct {v3, p1}, Lacg$59;-><init>(Ljava/lang/String;)V

    .line 4041
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 4053
    :cond_2
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4054
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4055
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    const-string/jumbo v1, "im_navigator_from"

    const-string/jumbo v2, "mail_trans"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4057
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 131
    .line 26931
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lacg$76;

    invoke-direct {v1, p0}, Lacg$76;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLccx;Lcma;ZZJLjava/lang/String;)V
    .locals 34
    .param p0, "accountOld"    # Ljava/lang/String;
    .param p1, "inComingPass"    # Ljava/lang/String;
    .param p2, "outgoingPass"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "oauthToken"    # Ljava/lang/String;
    .param p5, "refreshToken"    # Ljava/lang/String;
    .param p6, "tokenExpireTime"    # Ljava/lang/Long;
    .param p7, "allowInvalidCertificates"    # Z
    .param p8, "agentSettingsModel"    # Lccx;
    .param p10, "isUpdate"    # Z
    .param p11, "isAdmin"    # Z
    .param p12, "orgID"    # J
    .param p14, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Z",
            "Lccx;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;ZZJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 854
    .local p9, "listener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v4

    sget-object v6, Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;->IMAP:Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Lcom/alibaba/alimei/mail/utils/MailLoginTrace$LoginAccountType;)V

    .line 857
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 858
    :cond_0
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    :goto_0
    return-void

    .line 861
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 862
    move-object/from16 p2, p1

    .line 865
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 867
    .local v11, "account":Ljava/lang/String;
    if-eqz p8, :cond_3

    move-object/from16 v0, p8

    iget-object v4, v0, Lccx;->a:Ljava/util/List;

    if-eqz v4, :cond_3

    move-object/from16 v0, p8

    iget-object v4, v0, Lccx;->a:Ljava/util/List;

    .line 868
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 869
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;)V

    .line 870
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-static {v11, v0, v1, v2}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    goto :goto_0

    .line 874
    :cond_4
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 875
    .local v31, "smtpAgents":Ljava/util/List;, "Ljava/util/List<Lccw;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v27, "incomingAgents":Ljava/util/List;, "Ljava/util/List<Lccw;>;"
    move-object/from16 v0, p8

    iget-object v4, v0, Lccx;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lccw;

    .line 878
    .local v24, "agentSettingModel":Lccw;
    move-object/from16 v0, v24

    iget-object v6, v0, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->SMTP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v6, v7, :cond_6

    .line 879
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 883
    :cond_6
    move-object/from16 v0, v24

    iget-object v6, v0, Lccw;->a:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;->IMAP:Lcom/alibaba/android/dingtalk/userbase/idl/AgentSettingTypeEnum;

    if-ne v6, v7, :cond_5

    .line 884
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 889
    .end local v24    # "agentSettingModel":Lccw;
    :cond_7
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 890
    :cond_8
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-static {v11, v0, v1, v2}, Lacg;->a(Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    goto/16 :goto_0

    .line 895
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lccw;

    .line 896
    .local v30, "smtpAgent":Lccw;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lccw;

    .line 898
    .local v26, "incomingAgent":Lccw;
    if-nez v26, :cond_b

    const/4 v5, 0x0

    .line 899
    .local v5, "incomingServer":Ljava/lang/String;
    :goto_2
    if-nez v26, :cond_c

    const/16 v28, 0x0

    .line 900
    .local v28, "incomingPort":Ljava/lang/String;
    :goto_3
    if-nez v30, :cond_d

    const/4 v8, 0x0

    .line 901
    .local v8, "smtpServer":Ljava/lang/String;
    :goto_4
    if-nez v30, :cond_e

    const/16 v32, 0x0

    .line 904
    .local v32, "smtpPort":Ljava/lang/String;
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 905
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 906
    :cond_a
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v4}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-interface {v0, v4, v6}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    .end local v5    # "incomingServer":Ljava/lang/String;
    .end local v8    # "smtpServer":Ljava/lang/String;
    .end local v28    # "incomingPort":Ljava/lang/String;
    .end local v32    # "smtpPort":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v26

    iget-object v5, v0, Lccw;->b:Ljava/lang/String;

    goto :goto_2

    .line 899
    .restart local v5    # "incomingServer":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v26

    iget-object v4, v0, Lccw;->c:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    goto :goto_3

    .line 900
    .restart local v28    # "incomingPort":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v30

    iget-object v8, v0, Lccw;->b:Ljava/lang/String;

    goto :goto_4

    .line 901
    .restart local v8    # "smtpServer":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v30

    iget-object v4, v0, Lccw;->c:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    goto :goto_5

    .line 912
    .restart local v32    # "smtpPort":Ljava/lang/String;
    :cond_f
    :try_start_0
    new-instance v4, Lacg$a;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v26

    iget-object v7, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, v30

    iget-object v10, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v4 .. v10}, Lacg$a;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    sput-object v4, Lacg;->f:Lacg$a;

    .line 913
    invoke-static {}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a()Lcom/alibaba/alimei/mail/utils/MailLoginTrace;

    move-result-object v4

    move-object/from16 v0, v26

    iget-object v6, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v0, v30

    iget-object v6, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v6, v28

    move-object/from16 v9, v32

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/alimei/mail/utils/MailLoginTrace;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_6
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v29

    .line 919
    .local v29, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "agentLogin IMAP:"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 920
    const-string/jumbo v4, " port:"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 921
    const-string/jumbo v4, " SMTP:"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 922
    const-string/jumbo v4, " port:"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 924
    const-string/jumbo v4, "MailNavigator"

    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, v26

    iget-object v4, v0, Lccw;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, v30

    iget-object v6, v0, Lccw;->d:Ljava/lang/Boolean;

    .line 927
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v10, Lacg$2;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p1

    move-object/from16 v16, p8

    move/from16 v17, p10

    move-object/from16 v18, p9

    move/from16 v19, p11

    move-wide/from16 v20, p12

    move-object/from16 v22, p14

    invoke-direct/range {v10 .. v22}, Lacg$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccx;ZLcma;ZJLjava/lang/String;)V

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v16, v28

    move/from16 v17, v4

    move-object/from16 v18, p2

    move-object/from16 v19, v8

    move-object/from16 v20, v32

    move/from16 v21, v6

    move/from16 v22, p7

    move-object/from16 v23, v10

    .line 926
    invoke-static/range {v11 .. v23}, Lafw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    goto/16 :goto_0

    .line 914
    .end local v29    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catch_0
    move-exception v25

    .line 915
    .local v25, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafg;->a(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private static b(Z)V
    .locals 1
    .param p0, "isInProccessing"    # Z

    .prologue
    .line 226
    sput-boolean p0, Lacg;->h:Z

    .line 227
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    sput v0, Lacg;->j:I

    .line 230
    :cond_0
    return-void
.end method

.method public static b(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z
    .locals 6
    .param p0, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    const/4 v1, 0x1

    .line 4678
    sget-object v0, Lacg;->m:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 4679
    .local v0, "current":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v0, :cond_0

    .line 4681
    invoke-static {p0}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4682
    invoke-static {v1}, Lacg;->c(Z)V

    .line 4692
    :goto_0
    return v1

    .line 4687
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {p0}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4688
    invoke-static {v1}, Lacg;->c(Z)V

    goto :goto_0

    .line 4692
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;JLjava/lang/String;)Z
    .locals 7
    .param p0, "profile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p1, "orgId"    # J
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "result":Z
    if-eqz p0, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 239
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 243
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 245
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 253
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    return v1
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3296
    sget-object v1, Lacg;->a:Ljava/lang/String;

    invoke-static {v1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3297
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    invoke-virtual {v1}, Lacr;->c()Ljava/lang/String;

    move-result-object v0

    .line 3298
    .local v0, "dingtalkMail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3299
    sput-object v0, Lacg;->a:Ljava/lang/String;

    .line 3302
    :cond_0
    sget-object v1, Lacg;->a:Ljava/lang/String;

    return-object v1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2772
    if-nez p0, :cond_1

    .line 2798
    :cond_0
    :goto_0
    return-void

    .line 2774
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    invoke-virtual {v1}, Lacr;->b()V

    .line 2776
    const-string/jumbo v1, "pref_key_has_pull_welcome_mail"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2778
    .local v0, "hasPullWelcomeMail":Z
    if-nez v0, :cond_0

    .line 2781
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    new-instance v2, Lacg$34;

    invoke-direct {v2}, Lacg$34;-><init>()V

    .line 12406
    const-string/jumbo v3, "MailRPC"

    const-string/jumbo v4, "userUpgradeAppVer"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12407
    new-instance v3, Lro$5;

    invoke-direct {v3, v1, v2}, Lro$5;-><init>(Lro;Lcma;)V

    .line 12424
    iget-object v1, v1, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/idl/service/CMailIService;->userUpgradeAppVer(Liyv;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    .line 3636
    if-nez p0, :cond_0

    .line 3637
    const-string/jumbo v0, "navToManageOrgEmails"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    :goto_0
    return-void

    .line 3640
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/manage_org_mails.html"

    .line 3642
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$48;

    invoke-direct {v3, p1, p2}, Lacg$48;-><init>(J)V

    .line 3640
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3530
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 3541
    :goto_0
    return-void

    .line 3537
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/settings_my_subscribe.html"

    .line 3539
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3537
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lcma;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "receiverEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2972
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    .line 2973
    .local v0, "manager":Lacr;
    invoke-virtual {v0}, Lacr;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lacr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2974
    invoke-static {}, Lacr;->a()Lacr;

    invoke-static {}, Lacr;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lacg$37;

    invoke-direct {v2, p0, p1, p2}, Lacg$37;-><init>(Landroid/content/Context;Lcma;Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lgqq;)V

    .line 2992
    :goto_0
    return-void

    .line 2990
    :cond_0
    invoke-static {p0, p1}, Lacg;->f(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "receiverEmail"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4410
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :goto_0
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 4411
    :cond_0
    sget v4, Laxo$i;->dt_mail_maildetail_plugin_invalidparam:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 4412
    if-eqz p5, :cond_1

    .line 4413
    const-string/jumbo v4, "2017"

    const-string/jumbo v5, "data error"

    move-object/from16 v0, p5

    invoke-interface {v0, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4494
    .end local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_1
    return-void

    .line 4420
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    const-string/jumbo v4, "MailNavigator"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "queryMailDetail:"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4422
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v10

    .line 4423
    .local v10, "manager":Lacr;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 4424
    new-instance v2, Lacg$66;

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lacg$66;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V

    .line 4447
    .local v2, "callback":Lxv;, "Lxv<Ljava/lang/String;>;"
    move-object/from16 v18, v2

    .line 4448
    .local v18, "callbackWrapper":Lxv;, "Lxv<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 4449
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lxv;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-interface {v4, v2, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "callbackWrapper":Lxv;, "Lxv<Ljava/lang/String;>;"
    check-cast v18, Lxv;

    .line 4452
    .restart local v18    # "callbackWrapper":Lxv;, "Lxv<Ljava/lang/String;>;"
    :cond_3
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v4

    .line 16467
    const-string/jumbo v5, "MultiMailManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "finding account by email "

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p3}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16469
    invoke-virtual {v4}, Lacr;->i()Ljava/util/List;

    move-result-object v5

    .line 16471
    if-eqz v5, :cond_9

    .line 16472
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16473
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 16477
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v4}, Lafc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 16478
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 16479
    if-eqz v18, :cond_1

    .line 16480
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 16487
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16488
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 16492
    invoke-static {v4}, Lacn;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static/range {p3 .. p3}, Lacn;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 16493
    if-eqz v18, :cond_1

    .line 16494
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 16499
    :cond_7
    move-object/from16 v0, p3

    invoke-static {v4, v0}, Lafh;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 16500
    if-eqz v18, :cond_1

    .line 16501
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 16507
    :cond_8
    if-eqz v18, :cond_1

    .line 16508
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto/16 :goto_1

    .line 16512
    :cond_9
    if-eqz v18, :cond_1

    .line 16513
    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v4}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto/16 :goto_1

    .line 4457
    .end local v2    # "callback":Lxv;, "Lxv<Ljava/lang/String;>;"
    .end local v18    # "callbackWrapper":Lxv;, "Lxv<Ljava/lang/String;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :cond_a
    const-string/jumbo v6, "go2maildetail_no_receiver_email"

    const-string/jumbo v7, ""

    .line 17077
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "CMail"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 4459
    if-eqz p2, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailReceiverEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 4461
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailReceiverEmail:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Lacg;->c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;)V

    goto/16 :goto_1

    .line 4464
    :cond_b
    invoke-static {}, Lacr;->m()Ljava/lang/String;

    move-result-object v7

    .line 4465
    .local v7, "agentMail":Ljava/lang/String;
    invoke-static {v7}, Lafh;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4466
    new-instance v3, Lacg$67;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v3 .. v10}, Lacg$67;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;ILcma;Lacr;)V

    .line 4480
    .local v3, "callback2":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    move-object/from16 v17, v3

    .line 4481
    .local v17, "callbackWrapper2":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    move-object/from16 v0, p0

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_c

    .line 4482
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v5, Lxv;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-interface {v4, v3, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "callbackWrapper2":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    check-cast v17, Lxv;

    .line 4485
    .restart local v17    # "callbackWrapper2":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    :cond_c
    invoke-static {v7}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    .line 4486
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v12, "x"

    :goto_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x1

    .line 4485
    invoke-interface/range {v11 .. v17}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    goto/16 :goto_1

    .line 4486
    :cond_d
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    goto :goto_2

    .line 4490
    .end local v3    # "callback2":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    .end local v17    # "callbackWrapper2":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :cond_e
    invoke-virtual {v10}, Lacr;->c()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 3659
    if-nez p0, :cond_0

    .line 3660
    const-string/jumbo v0, "navToMailNickConfig"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3673
    :goto_0
    return-void

    .line 3663
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/nick_config.html"

    .line 3665
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$49;

    invoke-direct {v3, p1}, Lacg$49;-><init>(Ljava/lang/String;)V

    .line 3663
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverEmail"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2825
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0}, Lacg;->a(Landroid/content/Context;Lcma;Ljava/lang/String;Z)V

    .line 2826
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverMail"    # Ljava/lang/String;
    .param p2, "mailId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2379
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 2440
    :goto_0
    return-void

    .line 2386
    :cond_0
    new-instance v0, Lacg$25;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p1, p0}, Lacg$25;-><init>(Lcma;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method private static c(Z)V
    .locals 3
    .param p0, "hasRead"    # Z

    .prologue
    .line 4696
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_has_newmail_unread"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4698
    return-void
.end method

.method public static d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3311
    const/4 v0, 0x0

    sput-object v0, Lacg;->a:Ljava/lang/String;

    .line 3312
    sput-boolean v1, Lacg;->c:Z

    .line 3313
    invoke-static {v1}, Lacg;->b(Z)V

    .line 3314
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3517
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/mail_settings_content_subscribe.html"

    .line 3519
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3517
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 3521
    return-void
.end method

.method static synthetic d(Landroid/content/Context;Lcma;)V
    .locals 6
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcma;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 131
    .line 19886
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 19887
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v1

    invoke-virtual {v1, v4}, Lacs;->a(Z)V

    .line 19889
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 20246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 19889
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19891
    const-string/jumbo v1, "MailNavigator"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "tryLoginUserBindEmail:"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19893
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v0}, Lacg;->a(Ljava/lang/String;)V

    .line 19894
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lacr;->a(Labx;)V

    .line 19895
    if-eqz p1, :cond_0

    .line 19897
    invoke-interface {p1, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 19900
    :cond_1
    if-eqz p1, :cond_0

    .line 19902
    const-string/jumbo v0, "tryLoginUserBindEmail"

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u6216\u8005\u670d\u52a1\u7aef\u62a5\u9519"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19903
    const-string/jumbo v0, "2018"

    const-string/jumbo v1, "server error"

    invoke-interface {p1, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 3752
    if-nez p0, :cond_0

    .line 3753
    const-string/jumbo v0, "navToMailSignList"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    :goto_0
    return-void

    .line 3756
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/sign_list.html"

    .line 3758
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$53;

    invoke-direct {v3, p1}, Lacg$53;-><init>(Ljava/lang/String;)V

    .line 3756
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3911
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3962
    :cond_0
    :goto_0
    return-void

    .line 3917
    :cond_1
    new-instance v0, Lacg$57;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lacg$57;-><init>(Lcma;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lacg;->e(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "mailMessageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2488
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    invoke-static {p1}, Lafh;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2489
    :cond_0
    if-eqz p3, :cond_1

    .line 2490
    const-string/jumbo v0, "2017"

    const-string/jumbo v1, "data error"

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    :cond_1
    :goto_0
    return-void

    .line 2495
    :cond_2
    const-string/jumbo v0, "MailNavigator"

    const-string/jumbo v1, "navToMailDetailV2"

    invoke-static {v0, p1, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    invoke-static {p1}, Lacg;->a(Ljava/lang/String;)V

    .line 2498
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_4

    move-object v7, p0

    .line 2499
    check-cast v7, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 2503
    .local v7, "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :goto_1
    if-eqz v7, :cond_3

    .line 2504
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 2507
    :cond_3
    invoke-static {p1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    const-string/jumbo v1, "x"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lacg$27;

    invoke-direct {v6, v7, p3, p0}, Lacg$27;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLxv;)V

    goto :goto_0

    .line 2501
    .end local v7    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "activity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    goto :goto_1
.end method

.method public static e()Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1

    .prologue
    .line 4673
    sget-object v0, Lacg;->m:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3572
    if-nez p0, :cond_0

    .line 3573
    const-string/jumbo v0, "navToMailSwttingShowInnerPic"

    const-string/jumbo v1, "context == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    :goto_0
    return-void

    .line 3576
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/setting_show_inner_pic.html"

    .line 3578
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$45;

    invoke-direct {v3}, Lacg$45;-><init>()V

    .line 3576
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;Lcma;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2821
    .line 13002
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lacg;->a(Landroid/content/Context;Lcma;Ljava/lang/String;Z)V

    .line 2822
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 4824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4862
    :goto_0
    return-void

    .line 17246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 4826
    new-instance v1, Lacg$74;

    invoke-direct {v1, p1, p0}, Lacg$74;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->queryAccountByName(Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "emailOld"    # Ljava/lang/String;
    .param p2, "ticket"    # Ljava/lang/String;
    .param p3, "listener"    # Lcma;

    .prologue
    .line 3173
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3174
    :cond_0
    if-eqz p3, :cond_1

    .line 3175
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid Parameters"

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    :cond_1
    :goto_0
    return-void

    .line 3181
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3182
    .local v0, "email":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lacg$40;

    invoke-direct {v2, v0, p2, p3}, Lacg$40;-><init>(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5252
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/mail_notification_setting.html"

    .line 5254
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$81;

    invoke-direct {v3}, Lacg$81;-><init>()V

    .line 5252
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 5261
    return-void
.end method

.method private static f(Landroid/content/Context;Lcma;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2910
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 2911
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lacs;->a(Z)V

    .line 2912
    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    .line 2913
    invoke-static {v2}, Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 2914
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2915
    new-instance v1, Lacg$36;

    invoke-direct {v1, v0, p1, p0}, Lacg$36;-><init>(Ljava/lang/String;Lcma;Landroid/content/Context;)V

    .line 2956
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2968
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 2959
    .restart local v0    # "email":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 2960
    const-string/jumbo v3, "2017"

    const-string/jumbo v4, "data error"

    invoke-interface {p1, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2964
    .end local v0    # "email":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_0

    .line 2965
    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "Invalid Parameters"

    invoke-interface {p1, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 5269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5283
    :goto_0
    return-void

    .line 5272
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/mail/mail_folder_subscribe.html"

    .line 5274
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lacg$82;

    invoke-direct {v3, p1}, Lacg$82;-><init>(Ljava/lang/String;)V

    .line 5272
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 4943
    sget-boolean v0, Lacg;->c:Z

    return v0
.end method

.method public static g()Lacg$a;
    .locals 1

    .prologue
    .line 5329
    sget-object v0, Lacg;->f:Lacg$a;

    return-object v0
.end method

.method static synthetic g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 131
    .line 21223
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 21225
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 21226
    sget v1, Laxo$i;->dt_mail_login_fmt_to_check_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 21227
    sget v1, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 22259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 23230
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 23275
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 24226
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 21231
    new-instance v1, Lacg$62;

    invoke-direct {v1, v0}, Lacg$62;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 24271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 21239
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0
.end method

.method static synthetic h()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lacg;->c:Z

    return v0
.end method
