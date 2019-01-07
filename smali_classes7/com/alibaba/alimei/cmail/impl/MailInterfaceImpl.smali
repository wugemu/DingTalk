.class public Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
.super Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
.source "MailInterfaceImpl.java"


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field a:Lxm;

.field private b:Z

.field private c:Z

.field private d:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Laci;

.field private j:Ldq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;-><init>()V

    .line 191
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    .line 192
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c:Z

    .line 193
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->d:Z

    .line 197
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    .line 203
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->g:Z

    .line 210
    new-instance v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a:Lxm;

    .line 248
    new-instance v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$9;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$9;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V

    iput-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->i:Laci;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 189
    invoke-static {}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->v()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcma;

    .prologue
    .line 189
    .line 35928
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$7;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;Lcma;)V

    invoke-virtual {v8, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lxq;Ladl;)V
    .locals 1
    .param p0, "bundle"    # Lxq;
    .param p1, "generator"    # Ladl;

    .prologue
    .line 1010
    .line 23034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxq;->c:Z

    .line 23035
    iput-object p1, p0, Lxq;->d:Lcom/alibaba/alimei/orm/CipherGenerator;

    .line 1011
    invoke-static {p0}, Lxn;->a(Lxq;)V

    .line 1012
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)Ldq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->j:Ldq;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)J
    .locals 9
    .param p0, "oid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1434
    const-string/jumbo v1, "get org id"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "before decrypt "

    aput-object v5, v4, v6

    aput-object p0, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1447
    :goto_0
    return-wide v2

    .line 1439
    :cond_0
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1440
    const-string/jumbo v1, "get org id"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "after decrypt "

    aput-object v5, v4, v6

    aput-object p0, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1443
    :catch_0
    move-exception v0

    .line 1444
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "getOrgId"

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2013
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2014
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2015
    .local v1, "accountList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2020
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2021
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2022
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    .line 2023
    .local v2, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v2, :cond_2

    .line 2024
    iget-boolean v4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    if-eqz v4, :cond_1

    .line 2025
    const-string/jumbo v4, "MailInterfaceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "cancel download mail detail, account: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    invoke-interface {v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->cancelAutoDownloadMailDetailTask()V

    goto :goto_1

    .line 2017
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    :cond_0
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v3

    invoke-virtual {v3}, Lacr;->j()Ljava/util/List;

    move-result-object v1

    .restart local v1    # "accountList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 2028
    .restart local v0    # "account":Ljava/lang/String;
    .restart local v2    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    :cond_1
    const-string/jumbo v4, "MailInterfaceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start download mail detail, account: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-interface {v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->startAutoDownloadMailDetailTask()V

    goto :goto_1

    .line 2032
    :cond_2
    const-string/jumbo v4, "MailInterfaceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "startOrCancelMailDetailAutoDownload fail for mailApi is null, account: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2036
    .end local v0    # "account":Ljava/lang/String;
    .end local v2    # "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    :cond_3
    return-void
.end method

.method private static v()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 266
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 267
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 269
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 270
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 368
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 369
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 370
    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-eqz v1, :cond_0

    .line 371
    invoke-static {v0}, Lacg;->c(Landroid/content/Context;)V

    .line 375
    :goto_0
    monitor-exit v2

    return-void

    .line 373
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c:Z

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 689
    invoke-static {}, Lafg;->a()V

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    .line 6743
    new-instance v1, Lro$22;

    invoke-direct {v1, v0, p3}, Lro$22;-><init>(Lro;Lcma;)V

    .line 6759
    iget-object v0, v0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/alimei/idl/service/CMailIService;->canDeleteEmpOrgMail(JLiyv;)V

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "cid"    # Ljava/lang/String;

    .prologue
    .line 713
    invoke-static {p1, p2, p3}, Lacg;->a(JLjava/lang/String;)V

    .line 714
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "staffId"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 674
    invoke-static {}, Lafg;->a()V

    .line 679
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    .line 6721
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "deleteOrgEmail"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6722
    new-instance v6, Lro$20;

    invoke-direct {v6, v0, p5}, Lro$20;-><init>(Lro;Lcma;)V

    .line 6739
    iget-object v1, v0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/idl/service/CMailIService;->deleteOrgEmail(JLjava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;ZLcma;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p5, "showConfirm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1756
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    :cond_0
    const-string/jumbo v0, "[API]checkSendMailAndChat"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "param is invalid"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "Invalid Parameters param is invalid"

    invoke-interface {p6, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    :goto_0
    return-void

    .line 1764
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, p2, v0}, Lacg;->c(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 735
    invoke-static {}, Lafg;->a()V

    .line 740
    :goto_0
    return-void

    .line 7728
    :cond_0
    invoke-static {}, Lacg;->a()Lcma;

    move-result-object v0

    .line 739
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Landroid/content/Context;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 657
    invoke-static {}, Lafg;->a()V

    .line 662
    :goto_0
    return-void

    .line 661
    :cond_0
    invoke-static {p1, p2, p3}, Lacg;->c(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1954
    invoke-static {}, Lack;->a()Lack;

    move-result-object v2

    .line 30057
    const-string/jumbo v0, "token"

    invoke-static {p2, v0}, Lajr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30058
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30060
    if-eqz p3, :cond_0

    .line 30061
    const-string/jumbo v0, "token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30064
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30065
    const-string/jumbo v0, "bind email qrcode has not token"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 30066
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, v0

    .line 30140
    if-eqz p1, :cond_1

    .line 30144
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v3, "https://qr.dingtalk.com/mail/qr_bind_portal.html"

    .line 30146
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lack$1;

    invoke-direct {v5, v2, v1}, Lack$1;-><init>(Lack;Ljava/lang/String;)V

    .line 30144
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcma;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v6, 0x1

    .line 421
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v2, :cond_0

    .line 423
    invoke-static {}, Lafg;->a()V

    .line 2309
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 427
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->d:Z

    if-nez v2, :cond_2

    .line 428
    invoke-static {}, Lacn;->b()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "dingtalkAccountEmail":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    new-instance v1, Lre;

    invoke-direct {v1, v0}, Lre;-><init>(Ljava/lang/String;)V

    .line 431
    .local v1, "parser":Lps;
    invoke-static {v1}, Lpp;->a(Lps;)V

    .line 433
    .end local v1    # "parser":Lps;
    :cond_1
    iput-boolean v6, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->d:Z

    .line 436
    .end local v0    # "dingtalkAccountEmail":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;

    invoke-direct {v3, p0, p1, p2}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$11;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Landroid/content/Context;Lcma;)V

    .line 2274
    invoke-static {}, Lacp;->a()Lacp;

    move-result-object v4

    .line 2286
    const-string/jumbo v2, "pref_key_freshmen_login"

    .line 3118
    iget-object v5, v4, Lacp;->d:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 2287
    if-eqz v2, :cond_3

    .line 2288
    const-string/jumbo v2, "pref_key_freshmen_login"

    invoke-virtual {v4, v2}, Lacp;->a(Ljava/lang/String;)Z

    move-result v2

    .line 2290
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2296
    :cond_3
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2298
    const-string/jumbo v2, "-1"

    const-string/jumbo v4, "network can not available"

    invoke-interface {v3, v2, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2304
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->v()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2305
    invoke-static {}, Lafh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2307
    :cond_5
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2312
    :cond_6
    instance-of v2, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_8

    .line 2313
    check-cast p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 2314
    .end local p1    # "context":Landroid/content/Context;
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2315
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 3147
    :cond_7
    iput-boolean v6, v4, Lacp;->e:Z

    .line 2321
    :cond_8
    const-string/jumbo v2, "MailInterfaceImpl"

    const-string/jumbo v5, "checking user ext for freshmen"

    invoke-static {v2, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2324
    const-class v2, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 2325
    new-instance v5, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;

    invoke-direct {v5, p0, v4, v3}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lacp;Lcma;)V

    invoke-interface {v2, v5}, Lcom/alibaba/alimei/idl/service/CMailIService;->getUserExtInfo(Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 539
    invoke-static {}, Lafg;->a()V

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Lafg;->a()V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3728
    invoke-static {}, Lacg;->a()Lcma;

    move-result-object v2

    .line 475
    invoke-static {p1, p2, v0, v1, v2}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p3, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 483
    invoke-static {}, Lafg;->a()V

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 4728
    invoke-static {}, Lacg;->a()Lcma;

    move-result-object v2

    .line 486
    invoke-static {p1, p2, v0, v1, v2}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "type"    # I

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 493
    invoke-static {}, Lafg;->a()V

    .line 497
    :goto_0
    return-void

    .line 5728
    :cond_0
    invoke-static {}, Lacg;->a()Lcma;

    move-result-object v0

    .line 496
    invoke-static {p1, p2, p3, p4, v0}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcom/alibaba/wukong/im/Conversation;ILcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 591
    invoke-static {}, Lafg;->a()V

    .line 601
    :goto_0
    return-void

    .line 597
    :cond_0
    invoke-static {p1, p2}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
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
    .line 622
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 624
    invoke-static {}, Lafg;->a()V

    .line 629
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-static {p1, p2, p3}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;ILcma;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p5, "subject"    # Ljava/lang/String;
    .param p7, "mailContentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1521
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p6, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p8, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1524
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v11, 0x0

    new-instance v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p8

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$3;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/util/List;Ljava/util/List;Lcma;Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;I)V

    invoke-static {p1, v11, v1}, Lacg;->c(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lafg;->a()V

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p1, p2}, Lacg;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;JLcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "localId"    # J
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
    .line 522
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 524
    invoke-static {}, Lafg;->a()V

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mailId"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 501
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 503
    invoke-static {}, Lafg;->a()V

    .line 507
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-static {p1, p2, v1, v1}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1705
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 1745
    :goto_0
    return-void

    .line 1709
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$5;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;Lcma;)V

    invoke-static {p1, p2, v0}, Lacg;->c(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # Ljava/lang/String;
    .param p3, "newDistributedMail"    # Ljava/lang/String;
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
    .line 459
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 461
    invoke-static {}, Lafg;->a()V

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 574
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 576
    invoke-static {}, Lafg;->a()V

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/util/ArrayList;Lcma;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 548
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 550
    invoke-static {}, Lafg;->a()V

    .line 559
    :goto_0
    return-void

    .line 6081
    :cond_0
    const-string/jumbo v0, "space_file_more_sendmail"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 556
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "msg_entity_list"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, p1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    .line 558
    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tryGotoLogin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 413
    invoke-static {}, Lafg;->a()V

    .line 417
    :goto_0
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lacg;->a(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 3
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1267
    invoke-static {p1}, Lacn;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 1268
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.hide.action.mail.newAccountArrived"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1270
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;IIZ)V
    .locals 8
    .param p1, "msg"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "smallIcon"    # I
    .param p3, "bigIcon"    # I
    .param p4, "userNotificationSwitch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_1

    .line 27217
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    .line 26695
    iput p2, v0, Lacs;->f:I

    .line 26696
    iput p3, v0, Lacs;->g:I

    .line 1188
    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->i:Laci;

    .line 27216
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->tag()J

    move-result-wide v0

    const-wide/16 v4, 0x3

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 27220
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    const-string/jumbo v7, "mail_bridge"

    new-instance v0, Lace$4;

    move-object v1, p1

    move v2, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lace$4;-><init>(Lcom/alibaba/wukong/im/Message;ZLaci;II)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lfzk;)V
    .locals 2
    .param p1, "listener"    # Lfzk;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2046
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    .line 34816
    iget-object v0, v0, Lacs;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2047
    return-void
.end method

.method public final a(Lfzl;)V
    .locals 2
    .param p1, "listener"    # Lfzl;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2056
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    .line 34831
    iget-object v1, v0, Lacs;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34832
    iget-object v0, v0, Lacs;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2057
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 637
    iget-boolean v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v1, :cond_0

    .line 639
    invoke-static {}, Lafg;->a()V

    .line 646
    :goto_0
    return-void

    .line 643
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mail_employee_account_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILcma;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "cursor"    # I
    .param p3, "pageSize"    # I
    .param p4, "apiEventListener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1194
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_1

    .line 28043
    :cond_0
    :goto_0
    return-void

    .line 28035
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28036
    if-eqz p4, :cond_0

    .line 28037
    invoke-interface {p4, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 28041
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    invoke-static {v0}, Lacg;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 28042
    if-eqz v1, :cond_3

    .line 28043
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lacc$1;

    move-object v2, p1

    move v3, p3

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lacc$1;-><init>(Ljava/lang/String;Ljava/lang/String;IILcma;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 28115
    :cond_3
    if-eqz p4, :cond_0

    .line 28116
    invoke-interface {p4, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2
    .param p1, "accoutName"    # Ljava/lang/String;
    .param p2, "localId"    # J

    .prologue
    .line 2066
    invoke-static {p1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMailById(J)V

    .line 2067
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Lfzl;)V
    .locals 7
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "localUUID"    # Ljava/lang/String;
    .param p3, "extData"    # Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    .param p4, "listener"    # Lfzl;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2072
    invoke-static {}, Lafd;->a()Lafd;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;

    invoke-direct {v1, p0, p4, p2}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lfzl;Ljava/lang/String;)V

    .line 35161
    iget-object v2, v0, Lafd;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 35162
    :try_start_0
    iget-object v0, v0, Lafd;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagz;

    .line 35163
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35165
    if-eqz v0, :cond_0

    .line 35166
    invoke-static {p3}, Lair;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lagz;->B:Ljava/lang/String;

    .line 35168
    const-string/jumbo v2, "MailSendController"

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "process im mail send, mail found uuid="

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35170
    invoke-static {p1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMail(Lagz;Lxv;)V

    :goto_0
    return-void

    .line 35163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 35172
    :cond_0
    const-string/jumbo v0, "MailSendController"

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "process im mail send, mail not found uuid="

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35175
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    invoke-interface {v1, v0}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mailAppName"    # Ljava/lang/String;
    .param p2, "mailAppKey"    # Ljava/lang/String;
    .param p3, "mailApiUrl"    # Ljava/lang/String;
    .param p4, "mailAuthUrl"    # Ljava/lang/String;
    .param p5, "mailDentryUrl"    # Ljava/lang/String;
    .param p6, "mailFileUrl"    # Ljava/lang/String;
    .param p7, "mailPreviewUrl"    # Ljava/lang/String;
    .param p8, "dingtalkPreviewUrl"    # Ljava/lang/String;

    .prologue
    .line 1245
    const-string/jumbo v0, "HOST_URL_API"

    invoke-static {v0, p3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string/jumbo v0, "HOST_URL_LOCATION"

    invoke-static {v0, p4}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string/jumbo v0, "HOST_URL_AUTH"

    invoke-static {v0, p4}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string/jumbo v0, "HOST_URL_DENTRY"

    invoke-static {v0, p5}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string/jumbo v0, "HOST_URL_FILE"

    invoke-static {v0, p6}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string/jumbo v0, "HOST_URL_PREVIEW"

    invoke-static {v0, p7}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string/jumbo v0, "HOST_URL_SPACE_PREVIEW"

    invoke-static {v0, p8}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    sput-object p1, Lacf;->a:Ljava/lang/String;

    .line 1253
    sput-object p2, Lacf;->b:Ljava/lang/String;

    .line 1254
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcma;)V
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "conversationId"    # Ljava/lang/String;
    .param p4, "toChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v6, 0x1

    .line 1619
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1620
    :cond_0
    const-string/jumbo v0, "[API]sendMail"

    const-string/jumbo v1, "-1"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "param is empty, cid:"

    aput-object v4, v2, v3

    aput-object p3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, " serverId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    if-eqz p5, :cond_1

    .line 1622
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "Invalid Parameters param is invalid"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    :cond_1
    :goto_0
    return-void

    .line 1626
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->v()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v7

    const-string/jumbo v8, "sendMail"

    new-instance v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/lang/String;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v8, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "mailAuthUrl"    # Ljava/lang/String;
    .param p2, "isOnlineEnviroment"    # Z

    .prologue
    .line 1258
    sput-boolean p2, Ladi;->a:Z

    .line 1259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    invoke-static {p1}, Lafp;->a(Ljava/lang/String;)V

    .line 1261
    invoke-static {p2}, Lacn;->a(Z)V

    .line 1263
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 10
    .param p1, "debug"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 1067
    iget-boolean v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-eqz v8, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1071
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->h:J

    .line 1073
    new-instance v1, Lxt;

    invoke-direct {v1}, Lxt;-><init>()V

    .line 1074
    .local v1, "config":Lxt;
    sput-boolean p1, Lzb;->b:Z

    .line 1075
    sget-boolean v8, Lzb;->b:Z

    .line 23041
    iput-boolean v8, v1, Lxt;->b:Z

    .line 1076
    sget-boolean v8, Lzb;->b:Z

    .line 23053
    iput-boolean v8, v1, Lxt;->c:Z

    .line 23055
    iget-boolean v8, v1, Lxt;->c:Z

    if-eqz v8, :cond_2

    .line 23056
    const/4 v8, 0x5

    invoke-static {v8}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->setLoggerLevel(I)V

    .line 1077
    :goto_1
    new-instance v3, Lpk;

    invoke-direct {v3}, Lpk;-><init>()V

    .line 1078
    .local v3, "logger":Lpk;
    new-instance v6, Lpl;

    invoke-direct {v6}, Lpl;-><init>()V

    .line 1079
    .local v6, "traceLogger":Lpl;
    new-instance v0, Lpi;

    invoke-direct {v0}, Lpi;-><init>()V

    .line 23067
    .local v0, "alarmLogger":Lpi;
    iput-object v3, v1, Lxt;->a:Lyk;

    .line 23076
    iput-object v6, v1, Lxt;->d:Lym;

    .line 23083
    iput-object v0, v1, Lxt;->e:Lyi;

    .line 23089
    iput-object v0, v1, Lxt;->f:Lyl;

    .line 1084
    invoke-static {v1}, Lxn;->a(Lxt;)V

    .line 1085
    new-instance v8, Lpj;

    invoke-direct {v8}, Lpj;-><init>()V

    invoke-static {v8}, Lcom/alibaba/alimei/orm/AlimeiOrm;->setTraceLogger(Lcom/alibaba/alimei/orm/util/ITraceLogger;)V

    .line 1086
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;->newDefaultConfig()Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;

    move-result-object v5

    .line 1087
    .local v5, "rfLogConfig":Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;->setRestfulTraceLogger(Lcom/alibaba/alimei/restfulapi/support/IRFTraceLogger;)V

    .line 1094
    invoke-static {v7}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setApiVersion(I)V

    .line 1095
    invoke-static {v3}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setRpcTracker(Lcom/alibaba/alimei/restfulapi/tracker/IRpcTracker;)V

    .line 1096
    invoke-static {v5}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setLogConfig(Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;)V

    .line 1097
    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setRobot(Lcom/alibaba/alimei/restfulapi/robot/IARFRobot;)V

    .line 1098
    new-instance v8, Lrw;

    invoke-direct {v8}, Lrw;-><init>()V

    invoke-static {v8}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setFullFlowTracker(Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/IFullFlowTracker;)V

    .line 1100
    new-instance v8, Lady;

    invoke-direct {v8}, Lady;-><init>()V

    .line 24018
    sput-object v8, Lup;->a:Luq;

    .line 1103
    invoke-static {}, Lpm;->a()Lpm;

    move-result-object v8

    .line 25018
    sput-object v8, Laik;->a:Laij;

    .line 1106
    new-instance v8, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$2;

    invoke-direct {v8, p0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$2;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V

    invoke-static {v8}, Lxn;->a(Lxp;)V

    .line 1134
    new-instance v4, Ladm;

    invoke-direct {v4}, Ladm;-><init>()V

    .line 1135
    .local v4, "mailInvoker":Ladm;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v9

    invoke-static {v8, v4, v9}, Lxn;->a(Landroid/content/Context;Lxu;Landroid/os/Handler;)V

    .line 1136
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v8

    invoke-virtual {v8}, Lacs;->b()V

    .line 1137
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v8

    invoke-virtual {v8}, Lacs;->c()V

    .line 1138
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->i:Laci;

    .line 25701
    iput-object v9, v8, Lacs;->e:Laci;

    .line 1139
    const-string/jumbo v8, "LIFECYCLE"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1140
    .local v2, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-eqz v2, :cond_1

    .line 1141
    invoke-interface {v2}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v8

    if-nez v8, :cond_3

    :goto_2
    iput-boolean v7, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    .line 1144
    :cond_1
    const-string/jumbo v7, "MailInterfaceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "initMail mOnForeground: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23058
    .end local v0    # "alarmLogger":Lpi;
    .end local v2    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    .end local v3    # "logger":Lpk;
    .end local v4    # "mailInvoker":Ladm;
    .end local v5    # "rfLogConfig":Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    .end local v6    # "traceLogger":Lpl;
    :cond_2
    invoke-static {v7}, Lcom/alibaba/alimei/restfulapi/support/ARFLogger;->setLoggerLevel(I)V

    goto/16 :goto_1

    .line 1141
    .restart local v0    # "alarmLogger":Lpi;
    .restart local v2    # "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    .restart local v3    # "logger":Lpk;
    .restart local v4    # "mailInvoker":Ladm;
    .restart local v5    # "rfLogConfig":Lcom/alibaba/alimei/restfulapi/support/RFLogConfig;
    .restart local v6    # "traceLogger":Lpl;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public final b()Lcma;
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
    .line 728
    invoke-static {}, Lacg;->a()Lcma;

    move-result-object v0

    return-object v0
.end method

.method public final b(JLcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Lafg;->a()V

    .line 709
    :goto_0
    return-void

    .line 708
    :cond_0
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 7559
    new-instance v2, Lro$13;

    invoke-direct {v2, v0, p3}, Lro$13;-><init>(Lro;Lcma;)V

    .line 7575
    iget-object v0, v0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryOrgEmailManageUrl(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1959
    invoke-static {}, Lack;->a()Lack;

    move-result-object v1

    .line 31077
    const-string/jumbo v0, "isAdmin"

    invoke-static {p2, v0}, Lajr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31078
    const-string/jumbo v2, "redirect"

    invoke-static {p2, v2}, Lajr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31079
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31080
    if-eqz p3, :cond_0

    .line 31081
    const-string/jumbo v0, "isAdmin"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31084
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31085
    if-eqz p3, :cond_1

    .line 31086
    const-string/jumbo v2, "redirect"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31090
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31091
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31092
    const-string/jumbo v0, "admin, but not redirect url"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 31117
    :goto_0
    return-void

    .line 31097
    :cond_2
    invoke-virtual {v1, v4}, Lack;->a(I)V

    .line 31107
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 31101
    :cond_3
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lack;->a(I)V

    .line 31111
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 31112
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 31246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 31114
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31116
    invoke-static {p1, v4, v3}, Lacg;->a(Landroid/content/Context;ILcma;)V

    goto :goto_0

    .line 31122
    :cond_4
    invoke-static {p1}, Lacg;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 775
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/maillist"

    new-instance v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$12;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$12;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 782
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;JLcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "localId"    # J
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
    .line 606
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 608
    invoke-static {}, Lafg;->a()V

    .line 612
    :goto_0
    return-void

    .line 611
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUrl"    # Ljava/lang/String;
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
    .line 1964
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 1965
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "mailId"    # Ljava/lang/String;
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
    .line 511
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 513
    invoke-static {}, Lafg;->a()V

    .line 517
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lacg;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final b(Lfzk;)V
    .locals 4
    .param p1, "listener"    # Lfzk;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2051
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v2

    .line 34820
    iget-object v0, v2, Lacs;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 34821
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 34822
    iget-object v0, v2, Lacs;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 34823
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 34824
    iget-object v0, v2, Lacs;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 34825
    :cond_0
    return-void

    .line 34821
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageContent"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1279
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_1

    .line 1284
    :cond_0
    :goto_0
    return-void

    .line 29062
    :cond_1
    if-eqz p1, :cond_0

    .line 29065
    new-instance v0, Lace$1;

    invoke-direct {v0, p1}, Lace$1;-><init>(Ljava/lang/String;)V

    .line 29076
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Z)[Ljava/lang/String;
    .locals 4
    .param p1, "justAliMail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1488
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    .line 1490
    .local v0, "mails":[Ljava/lang/String;
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 1492
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v1, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-object v0

    .line 1496
    :cond_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v2

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1497
    const/4 v2, 0x1

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v3}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1501
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1505
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->email:Ljava/lang/String;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    const-string/jumbo v0, "https://qr.dingtalk.com/page/maillist"

    return-object v0
.end method

.method public final c(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1988
    const-string/jumbo v1, "from"

    invoke-static {p2, v1}, Lajr;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "from":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1991
    if-eqz p3, :cond_0

    .line 1992
    const-string/jumbo v1, "from"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 33518
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33519
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33520
    const-string/jumbo v2, "from"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33522
    :cond_1
    const-string/jumbo v2, "mail_guide_to_bind"

    invoke-static {v2, v1}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 2000
    :cond_2
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    invoke-virtual {v1}, Lacr;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2001
    sget v1, Laxo$i;->dt_mail_login_already_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 2005
    :goto_0
    return-void

    .line 2003
    :cond_3
    invoke-static {p1}, Lacg;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1359
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1360
    const-string/jumbo v7, "mail config"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "nav to mail config url : "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "page/mailconfig"

    invoke-virtual {p2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 29398
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 29399
    const/4 v4, 0x0

    .line 1363
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    .line 1364
    .local v2, "orgId":J
    if-eqz v4, :cond_1

    .line 1365
    const-string/jumbo v7, "oid"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->e(Ljava/lang/String;)J

    move-result-wide v2

    .line 1368
    :cond_1
    const-string/jumbo v7, "mail config"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "nav to mail config split string orgid : "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1369
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1368
    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_2

    .line 1373
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1374
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 1375
    const-string/jumbo v7, "oid"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->e(Ljava/lang/String;)J

    move-result-wide v2

    .line 1378
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v7, "type"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1379
    .local v5, "type":Ljava/lang/String;
    const-string/jumbo v7, "domain"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1380
    .local v0, "domain":Ljava/lang/String;
    const-string/jumbo v7, "from"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1382
    .local v1, "from":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 29526
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 29527
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 29528
    const-string/jumbo v8, "from"

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29530
    :cond_3
    const-string/jumbo v8, "mail_domin_config"

    invoke-static {v8, v7}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1386
    :cond_4
    const-string/jumbo v7, "mail config"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "nav to mail config uri getQueryParameter orgid : "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 1387
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1386
    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    invoke-static {p1, v2, v3, v5, v0}, Lacg;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 1390
    .end local v0    # "domain":Ljava/lang/String;
    .end local v1    # "from":Ljava/lang/String;
    .end local v2    # "orgId":J
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "type":Ljava/lang/String;
    :cond_5
    return-void

    .line 29402
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 29403
    const/16 v7, 0x3f

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 29404
    if-gez v7, :cond_7

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 29406
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 29407
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 29404
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 29410
    :cond_8
    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 29411
    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_0

    aget-object v10, v8, v7

    .line 29412
    const-string/jumbo v11, "="

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 29413
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 29414
    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x1

    aget-object v10, v10, v12

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29411
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 563
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-nez v0, :cond_0

    .line 565
    invoke-static {}, Lafg;->a()V

    .line 569
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    .line 568
    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcma;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1483
    invoke-static {p1}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 759
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    .line 761
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1423
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 1424
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/maillogin"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1426
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1427
    const-string/jumbo v1, "oid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->e(Ljava/lang/String;)J

    .line 29728
    invoke-static {}, Lacg;->a()Lcma;

    move-result-object v1

    .line 1428
    invoke-static {p1, v1}, Lacg;->a(Landroid/content/Context;Lcma;)V

    .line 1431
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2040
    invoke-static {}, Ladn;->a()Ladn;

    move-result-object v3

    .line 34025
    iget-boolean v0, v3, Ladn;->a:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Ladn;->a:Z

    .line 2041
    invoke-static {}, Ladn;->a()Ladn;

    move-result-object v0

    .line 34041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34042
    const-string/jumbo v3, "http://%s:3000/reader.html"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ladn;->b:Ljava/lang/String;

    .line 2042
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 34025
    goto :goto_0
.end method

.method public final e()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v12, 0xc

    const/4 v1, 0x0

    const-wide v10, 0x40d3880000000000L    # 20000.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 8307
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 8308
    if-eqz v0, :cond_1

    .line 8312
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8315
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v4, "totalTime"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8316
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide v6, 0x40fd4c0000000000L    # 120000.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8317
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8318
    const-string/jumbo v3, "AlmSDK"

    const-string/jumbo v4, "sdk.mail.sendmails"

    invoke-interface {v0, v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8320
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8322
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v4, "totalTime"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8323
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8324
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8325
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    const-string/jumbo v4, "mail_count"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    .line 8326
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    .line 8327
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8328
    const-string/jumbo v3, "AlmSDK"

    const-string/jumbo v5, "sdk.mail.loadlist"

    invoke-interface {v0, v3, v5, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8331
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8333
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v4, "totalTime"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8334
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8335
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8336
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    const-string/jumbo v4, "mail_count"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    .line 8337
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    .line 8338
    const-string/jumbo v5, "is_from_server"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8339
    const-string/jumbo v5, "file_size"

    invoke-virtual {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8340
    invoke-virtual {v4, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8341
    const-string/jumbo v3, "CMail"

    const-string/jumbo v5, "loadMailBody"

    invoke-interface {v0, v3, v5, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8344
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8346
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v4, "totalTime"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8347
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8348
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8349
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 8350
    const-string/jumbo v4, "file_size"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8351
    const-string/jumbo v4, "CMail"

    const-string/jumbo v5, "mailDetailRender"

    invoke-interface {v0, v4, v5, v3, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8354
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8356
    new-instance v3, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v4, "scale"

    invoke-direct {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8357
    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8358
    const-string/jumbo v3, "successCount"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8359
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 8360
    const-string/jumbo v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8361
    const-string/jumbo v4, "CMail"

    const-string/jumbo v5, "mail_detail_global_scale"

    invoke-interface {v0, v4, v5, v3, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8365
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8366
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 8367
    const-string/jumbo v4, "topCount"

    invoke-virtual {v2, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8368
    const-string/jumbo v4, "CMail"

    const-string/jumbo v5, "MailTop"

    invoke-interface {v0, v4, v5, v3, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8371
    new-array v2, v12, [Ljava/lang/String;

    const-string/jumbo v3, "mail.maillist.switchImportant"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    const-string/jumbo v4, "mail.submaillist.appear"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "mail.maildetail.appear"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "mail.receiverList.appear"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "mail.folderlist.appear"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "mail.switchFolder"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "mail.localSearch"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "mail.networkSearch"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "mail.loginpage.h5"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "OrmInit"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "CMailInit"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "cmail_page_cost"

    aput-object v4, v2, v3

    .line 8376
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    .line 8377
    :goto_0
    if-ge v1, v12, :cond_0

    aget-object v4, v2, v1

    .line 8378
    new-instance v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v6, "totalTime"

    invoke-direct {v5, v6}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8379
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8380
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8381
    const-string/jumbo v5, "CMail"

    invoke-interface {v0, v5, v4, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8385
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 8386
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Dimension;

    const-string/jumbo v4, "pageName"

    invoke-direct {v2, v4}, Lcom/alibaba/mtl/appmonitor/model/Dimension;-><init>(Ljava/lang/String;)V

    .line 8387
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Lcom/alibaba/mtl/appmonitor/model/Dimension;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8388
    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "pageName"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8391
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 8392
    const-string/jumbo v2, "taskName"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8393
    const-string/jumbo v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 8394
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 8395
    const-string/jumbo v3, "successCount"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8396
    const-string/jumbo v3, "totalTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8397
    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "Task"

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8399
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8403
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8404
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8405
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8406
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.main.enter"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8409
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8410
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8411
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8412
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8413
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.recent.list"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8416
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8417
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8418
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8419
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8420
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.recent.detail"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8423
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8424
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8425
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8426
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8427
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.list.appear.time"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8430
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8431
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8432
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8433
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8434
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.list.appear.letter"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8437
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8438
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8439
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8440
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8441
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.share.list"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8444
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8445
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8446
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8447
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8448
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.list.sort.time"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8451
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8452
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8453
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8454
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8455
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.list.sort.letter"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8458
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8459
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8460
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8461
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8462
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.search"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8465
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8466
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8467
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8468
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8469
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "favorite.add"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 8472
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 8473
    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-string/jumbo v3, "totalTime"

    invoke-direct {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 8474
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    .line 8475
    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 8476
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "favorite.list.appear"

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 787
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 24

    .prologue
    .line 791
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 912
    :goto_0
    return-void

    .line 797
    :cond_0
    :try_start_0
    new-instance v12, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$13;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$13;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V

    .line 9294
    .local v12, "sdkConfig":Lafy;
    const/16 v17, 0xa

    move/from16 v0, v17

    iput v0, v12, Lafy;->j:I

    .line 9302
    const/16 v17, 0xbb8

    move/from16 v0, v17

    iput v0, v12, Lafy;->k:I

    .line 9310
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lafy;->l:Z

    .line 10245
    const/16 v17, 0x14

    move/from16 v0, v17

    iput v0, v12, Lafy;->g:I

    .line 11118
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lafy;->c:Z

    .line 11229
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lafy;->f:Z

    .line 11286
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lafy;->i:Z

    .line 832
    const-string/jumbo v17, "DingTalk"

    .line 12152
    move-object/from16 v0, v17

    iput-object v0, v12, Lafy;->d:Ljava/lang/String;

    .line 12181
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v12, Lafy;->b:Z

    .line 835
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lafv;->j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;

    move-result-object v13

    .line 836
    .local v13, "settingsApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    if-eqz v13, :cond_d

    .line 838
    invoke-interface {v13}, Lcom/alibaba/alimei/sdk/api/SettingApi;->getShownType()I

    move-result v14

    .line 12185
    .local v14, "shownType":I
    iput v14, v12, Lafy;->o:I

    .line 13070
    .end local v14    # "shownType":I
    :goto_1
    invoke-static {v12}, Lafv;->a(Lafy;)V

    .line 844
    const-class v17, Lcom/alibaba/alimei/mail/AlimeiEncrypt;

    invoke-static/range {v17 .. v17}, Lxn;->a(Ljava/lang/Class;)V

    .line 845
    new-instance v17, Ladp;

    invoke-direct/range {v17 .. v17}, Ladp;-><init>()V

    .line 14040
    sput-object v17, Lkla;->a:Lklb;

    .line 847
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    .line 15016
    .local v4, "application":Landroid/app/Application;
    const-string/jumbo v17, "pref_key_alimeidb_tocipher"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 15017
    if-eqz v17, :cond_6

    .line 15020
    :try_start_1
    const-string/jumbo v17, "EmailProvider.db"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    .line 15021
    const-string/jumbo v17, "EmailProviderBody.db"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 15022
    const/16 v17, 0x0

    .line 15024
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 15025
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/32 v22, 0x1900000

    cmp-long v20, v20, v22

    if-lez v20, :cond_2

    .line 15026
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 15027
    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 15028
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 15030
    :cond_1
    const-string/jumbo v17, "switchdb"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "delete database "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "EmailProvider.db"

    aput-object v22, v20, v21

    .line 15031
    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 15030
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15032
    const/16 v17, 0x1

    .line 15036
    :cond_2
    if-nez v17, :cond_4

    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 15037
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/32 v22, 0x1900000

    cmp-long v17, v20, v22

    if-lez v17, :cond_4

    .line 15038
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 15039
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 15040
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 15042
    :cond_3
    const-string/jumbo v17, "switchdb"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "delete database "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "EmailProviderBody.db"

    aput-object v20, v18, v19

    .line 15043
    invoke-static/range {v18 .. v18}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 15042
    invoke-static/range {v17 .. v18}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15048
    :cond_4
    const-string/jumbo v17, "cspace.db"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 15049
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 15050
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/32 v20, 0x1900000

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    .line 15051
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 15052
    const-string/jumbo v17, "switchdb"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "delete database "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "cspace.db"

    aput-object v20, v18, v19

    .line 15053
    invoke-static/range {v18 .. v18}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 15052
    invoke-static/range {v17 .. v18}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 15061
    :cond_5
    :goto_2
    :try_start_2
    const-string/jumbo v17, "pref_key_alimeidb_tocipher"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 852
    :cond_6
    const-string/jumbo v17, "OrmInit"

    .line 15069
    sget-object v18, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v19, "CMail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-instance v7, Ladl;

    invoke-direct {v7}, Ladl;-><init>()V

    .line 16030
    .local v7, "generator":Ladl;
    sget-object v17, Lafx;->a:Lafx;

    if-nez v17, :cond_7

    .line 16031
    new-instance v17, Lafx;

    invoke-direct/range {v17 .. v17}, Lafx;-><init>()V

    sput-object v17, Lafx;->a:Lafx;

    .line 16033
    :cond_7
    sget-object v17, Lafx;->a:Lafx;

    .line 854
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lxq;Ladl;)V

    .line 16041
    sget-object v17, Ladh;->a:Ladh;

    if-nez v17, :cond_8

    .line 16042
    new-instance v17, Ladh;

    invoke-direct/range {v17 .. v17}, Ladh;-><init>()V

    sput-object v17, Ladh;->a:Ladh;

    .line 16046
    :cond_8
    sget-object v17, Ladh;->a:Ladh;

    .line 855
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lxq;Ladl;)V

    .line 16058
    sget-object v17, Laen;->a:Laen;

    if-nez v17, :cond_9

    .line 16059
    new-instance v17, Laen;

    invoke-direct/range {v17 .. v17}, Laen;-><init>()V

    sput-object v17, Laen;->a:Laen;

    .line 16063
    :cond_9
    sget-object v17, Laen;->a:Laen;

    .line 856
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lxq;Ladl;)V

    .line 17023
    sget-object v17, Lst;->a:Lst;

    if-nez v17, :cond_a

    .line 17024
    new-instance v17, Lst;

    invoke-direct/range {v17 .. v17}, Lst;-><init>()V

    sput-object v17, Lst;->a:Lst;

    .line 17026
    :cond_a
    sget-object v5, Lst;->a:Lst;

    .line 858
    .local v5, "contactBundle":Lst;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v5, Lst;->b:Z

    .line 859
    invoke-static {v5, v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lxq;Ladl;)V

    .line 18023
    sget-object v17, Ltf;->a:Ltf;

    if-nez v17, :cond_b

    .line 18024
    new-instance v17, Ltf;

    invoke-direct/range {v17 .. v17}, Ltf;-><init>()V

    sput-object v17, Ltf;->a:Ltf;

    .line 18026
    :cond_b
    sget-object v17, Ltf;->a:Ltf;

    .line 860
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lxq;Ladl;)V

    .line 861
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v0, v7}, Lxn;->a(ZLcom/alibaba/alimei/orm/CipherGenerator;)V

    .line 862
    const-string/jumbo v17, "OrmInit"

    .line 18073
    sget-object v18, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v19, "CMail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lyn;->b(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    .line 868
    sget-object v18, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->e:Ljava/lang/Object;

    monitor-enter v18
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 869
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->c:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 870
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lacg;->c(Landroid/content/Context;)V

    .line 872
    :cond_c
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    :try_start_4
    const-class v17, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->setInjectServiceClient(Ljava/lang/Class;)V

    .line 875
    new-instance v6, Lado;

    invoke-direct {v6}, Lado;-><init>()V

    .line 19016
    .local v6, "encrypt":Lzk;
    sput-object v6, Lzj;->a:Lzk;

    .line 877
    new-instance v9, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$14;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v6}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$14;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lzk;)V

    .line 883
    .local v9, "runnable":Ljava/lang/Runnable;
    sget-object v17, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static/range {v17 .. v17}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v15

    .line 884
    .local v15, "thread":Laie;
    const-string/jumbo v17, "initMailDb"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v9}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 893
    const-class v17, Lcom/alibaba/alimei/sdk/model/FolderGroupPushModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a:Lxm;

    move-object/from16 v18, v0

    .line 19094
    invoke-static/range {v17 .. v18}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 894
    const-class v17, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a:Lxm;

    move-object/from16 v18, v0

    .line 20094
    invoke-static/range {v17 .. v18}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 896
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a()V

    .line 20951
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->j:Ldq;

    .line 20952
    invoke-static {}, Laft;->a()Laft;

    move-result-object v17

    new-instance v18, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$16;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V

    .line 21050
    move-object/from16 v0, v17

    iget-object v0, v0, Laft;->a:Lcjp;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v18}, Lcjp;->a(Lcjo$a;)V

    .line 21006
    invoke-static {}, Laft;->a()Laft;

    .line 22034
    new-instance v17, Lafs;

    const-string/jumbo v18, "biz/mail"

    invoke-direct/range {v17 .. v18}, Lafs;-><init>(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lajg;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 22915
    .end local v4    # "application":Landroid/app/Application;
    .end local v5    # "contactBundle":Lst;
    .end local v6    # "encrypt":Lzk;
    .end local v7    # "generator":Ladl;
    .end local v9    # "runnable":Ljava/lang/Runnable;
    .end local v12    # "sdkConfig":Lafy;
    .end local v13    # "settingsApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    .end local v15    # "thread":Laie;
    :goto_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v17

    new-instance v18, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$15;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$15;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;)V

    const-wide/16 v20, 0xbb8

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->h:J

    move-wide/from16 v20, v0

    sub-long v10, v18, v20

    .line 908
    .local v10, "mailInitCost":J
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 909
    .local v8, "initMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v17, "totalTime"

    long-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v17, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v18, "CMail"

    const-string/jumbo v19, "CMailInit"

    new-instance v20, Ljava/util/HashMap;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3, v8}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 841
    .end local v8    # "initMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v10    # "mailInitCost":J
    .restart local v12    # "sdkConfig":Lafy;
    .restart local v13    # "settingsApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    :cond_d
    :try_start_5
    const-string/jumbo v17, "MailInterfaceImpl"

    const-string/jumbo v18, "obtain settingApi fail, so set mail list shownType to conversation"

    invoke-static/range {v17 .. v18}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 901
    .end local v12    # "sdkConfig":Lafy;
    .end local v13    # "settingsApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    :catch_0
    move-exception v16

    .line 902
    .local v16, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v17, "MailInterfaceImpl"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 15056
    .end local v16    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "application":Landroid/app/Application;
    .restart local v12    # "sdkConfig":Lafy;
    .restart local v13    # "settingsApi":Lcom/alibaba/alimei/sdk/api/SettingApi;
    :catch_1
    move-exception v17

    .line 15057
    :try_start_6
    const-string/jumbo v18, "switchdb"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 872
    .restart local v5    # "contactBundle":Lst;
    .restart local v7    # "generator":Ladl;
    :catchall_0
    move-exception v17

    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v17
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 28281
    invoke-static {}, Lafv;->f()V

    .line 1204
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 1274
    invoke-static {}, Lacn;->c()V

    .line 1275
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 1288
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->q()V

    .line 1289
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 359
    sput-object p1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    .line 360
    invoke-static {p1}, Lut;->a(Landroid/content/Context;)V

    .line 361
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 1293
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    invoke-virtual {v0}, Lacr;->q()V

    .line 1294
    return-void
.end method

.method public final k()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1301
    sget-boolean v1, Lacn;->a:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 1304
    :goto_0
    sput-boolean v1, Lacn;->a:Z

    if-eqz v1, :cond_1

    .line 1305
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Laxo$i;->alm_cmail_login_by_h5:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "content":Ljava/lang/String;
    :goto_1
    const/16 v1, 0x11

    invoke-static {v0, v1, v3, v3, v3}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 1310
    sget-boolean v1, Lacn;->a:Z

    if-nez v1, :cond_2

    :goto_2
    invoke-static {v2}, Lacn;->b(Z)V

    .line 1311
    return-void

    .end local v0    # "content":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 1301
    goto :goto_0

    .line 1307
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Laxo$i;->alm_cmail_login_by_native:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    :cond_2
    move v2, v3

    .line 1310
    goto :goto_2
.end method

.method public final l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1318
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "pref_mail_support_multi_accounts"

    invoke-static {v3, v4, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 1322
    .local v1, "isSupportMultiAccounts":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1323
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxo$i;->alm_cmail_multi_accounts:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "content":Ljava/lang/String;
    :goto_1
    const/16 v3, 0x11

    invoke-static {v0, v3, v2, v2, v2}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 1328
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_mail_support_multi_accounts"

    invoke-static {v2, v3, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1330
    return-void

    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "isSupportMultiAccounts":Z
    :cond_0
    move v1, v2

    .line 1318
    goto :goto_0

    .line 1325
    .restart local v1    # "isSupportMultiAccounts":Z
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxo$i;->alm_cmail_single_account:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1
.end method

.method public final m()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1337
    const-string/jumbo v4, "pref_key_mail_conversation_group_switch"

    invoke-static {v4, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1338
    .local v1, "old":Z
    if-nez v1, :cond_0

    move v0, v2

    .line 1340
    .local v0, "now":Z
    :goto_0
    const-string/jumbo v4, "pref_key_mail_conversation_group_switch"

    invoke-static {v4, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1341
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    invoke-static {v4, v5, v3, v3, v2}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 1342
    return-void

    .end local v0    # "now":Z
    :cond_0
    move v0, v3

    .line 1338
    goto :goto_0
.end method

.method public final n()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1349
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 1350
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "pref_key_mail_new_signature_4_0"

    invoke-static {v0, v5, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 1351
    .local v2, "old":Z
    if-nez v2, :cond_0

    move v1, v3

    .line 1353
    .local v1, "now":Z
    :goto_0
    const-string/jumbo v5, "pref_key_mail_new_signature_4_0"

    invoke-static {v0, v5, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1354
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v5, v6, v4, v4, v3}, Lcms;->a(Ljava/lang/String;IIII)V

    .line 1355
    return-void

    .end local v1    # "now":Z
    :cond_0
    move v1, v4

    .line 1351
    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    return v0
.end method

.method public final p()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1457
    iget-boolean v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->b:Z

    if-eqz v2, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1463
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    .line 1464
    .local v1, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Z)V

    .line 1466
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1467
    .end local v1    # "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    :catch_0
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "CMail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "cmail db init failed: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 1969
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    .line 1970
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    .line 31705
    iput-boolean v1, v0, Lacs;->h:Z

    .line 1971
    invoke-static {}, Lacq;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f(Ljava/lang/String;)V

    .line 1974
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1978
    iput-boolean v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f:Z

    .line 1979
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    .line 32705
    iput-boolean v1, v0, Lacs;->h:Z

    .line 1980
    invoke-static {}, Lacq;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->f(Ljava/lang/String;)V

    .line 1983
    :cond_0
    return-void
.end method
