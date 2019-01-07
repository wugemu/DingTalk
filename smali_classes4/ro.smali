.class public Lro;
.super Ljava/lang/Object;
.source "MailRPC.java"


# static fields
.field private static volatile b:Lro;


# instance fields
.field public a:Lcom/alibaba/alimei/idl/service/CMailIService;

.field private c:Lcom/alibaba/alimei/idl/service/MailnotifyIService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lro;->b:Lro;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-class v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/CMailIService;

    iput-object v0, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 60
    const-class v0, Lcom/alibaba/alimei/idl/service/MailnotifyIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/idl/service/MailnotifyIService;

    iput-object v0, p0, Lro;->c:Lcom/alibaba/alimei/idl/service/MailnotifyIService;

    .line 61
    return-void
.end method

.method public static a()Lro;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lro;->b:Lro;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lro;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lro;->b:Lro;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lro;

    invoke-direct {v0}, Lro;-><init>()V

    sput-object v0, Lro;->b:Lro;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lro;->b:Lro;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p0, "dingtalkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-string/jumbo v0, "MailRPC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "changeDingtalkId, dingtalkId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Lcma;)V

    .line 765
    return-void
.end method


# virtual methods
.method public final a(ILcma;)V
    .locals 3
    .param p1, "subType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 652
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "caiNiaoScribePhone"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    new-instance v0, Lro$17;

    invoke-direct {v0, p0, p2}, Lro$17;-><init>(Lro;Lcma;)V

    .line 670
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/String;>;"
    iget-object v1, p0, Lro;->c:Lcom/alibaba/alimei/idl/service/MailnotifyIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/MailnotifyIService;->caiNiaoScribePhone(ILiyv;)V

    .line 671
    return-void
.end method

.method public final a(JILcma;)V
    .locals 3
    .param p1, "orgId"    # J
    .param p3, "templateId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "openOrgSignature"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lro$35;

    invoke-direct {v0, p0, p4}, Lro$35;-><init>(Lro;Lcma;)V

    .line 272
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/String;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->openOrgSignature(JILiyv;)V

    .line 273
    return-void
.end method

.method public final a(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Laac;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 984
    .local p3, "listener":Lcma;, "Lcma<Laac;>;"
    const-string/jumbo v2, "MailRPC"

    const-string/jumbo v3, "getAutoDispatchConfig"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    new-instance v1, Laad;

    invoke-direct {v1}, Laad;-><init>()V

    .line 986
    .local v1, "param":Laad;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Laad;->a:Ljava/lang/Long;

    .line 987
    new-instance v0, Lro$27;

    invoke-direct {v0, p0, p3}, Lro$27;-><init>(Lro;Lcma;)V

    .line 1004
    .local v0, "callback":Lcmi;, "Lcmi<Laac;>;"
    iget-object v2, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->getAutoDispatchConfig(Laad;Liyv;)V

    .line 1005
    return-void
.end method

.method public final a(Laba;Lcma;)V
    .locals 3
    .param p1, "emails"    # Laba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laba;",
            "Lcma",
            "<",
            "Labb;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 851
    .local p2, "listener":Lcma;, "Lcma<Labb;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "getThirdAccountsSubscribeInfo"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    new-instance v0, Lro$24;

    invoke-direct {v0, p0, p2}, Lro$24;-><init>(Lro;Lcma;)V

    .line 869
    .local v0, "callback":Lcmi;, "Lcmi<Labb;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->getThirdAccountsSubscribeInfo(Laba;Liyv;)V

    .line 870
    return-void
.end method

.method public final a(Labi;Lcma;)V
    .locals 2
    .param p1, "req"    # Labi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labi;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Labw;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 496
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Labw;>;>;"
    new-instance v0, Lro$9;

    invoke-direct {v0, p0, p2}, Lro$9;-><init>(Lro;Lcma;)V

    .line 512
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/util/List<Labw;>;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->createConversationEmails(Labi;Liyv;)V

    .line 513
    return-void
.end method

.method public final a(Labr;Lcma;)V
    .locals 3
    .param p1, "newModel"    # Labr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labr;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 210
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "saveOrUpdateEmailSignatureV2"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lro$33;

    invoke-direct {v0, p0, p2}, Lro$33;-><init>(Lro;Lcma;)V

    .line 228
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->saveOrUpdateEmailSignatureV2(Labr;Liyv;)V

    .line 229
    return-void
.end method

.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Labx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 98
    .local p1, "listener":Lcma;, "Lcma<Labx;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "getDingTalkMailLoginMode"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lro$10;

    invoke-direct {v0, p0, p1}, Lro$10;-><init>(Lro;Lcma;)V

    .line 117
    .local v0, "callback":Lcmi;, "Lcmi<Labx;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->getLoginMode(Liyv;)V

    .line 118
    return-void
.end method

.method public final a(Ljava/lang/Long;Lcma;)V
    .locals 2
    .param p1, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Labs;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 476
    .local p2, "listener":Lcma;, "Lcma<Labs;>;"
    new-instance v0, Lro$8;

    invoke-direct {v0, p0, p2}, Lro$8;-><init>(Lro;Lcma;)V

    .line 492
    .local v0, "callback":Lcmi;, "Lcmi<Labs;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryEmailDomainInfo(Ljava/lang/Long;Liyv;)V

    .line 493
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "orgId"    # Ljava/lang/Long;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Laby;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 538
    .local p3, "listener":Lcma;, "Lcma<Laby;>;"
    new-instance v0, Lro$12;

    invoke-direct {v0, p0, p3}, Lro$12;-><init>(Lro;Lcma;)V

    .line 555
    .local v0, "callback":Lcmi;, "Lcmi<Laby;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->queryMailAutoLoginTicket(Ljava/lang/Long;Ljava/lang/String;Liyv;)V

    .line 556
    return-void
.end method

.method public final a(Ljava/lang/Long;ZZILcma;)V
    .locals 5
    .param p1, "orgId"    # Ljava/lang/Long;
    .param p2, "isDispatch"    # Z
    .param p3, "isLimit"    # Z
    .param p4, "remainCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "ZZI",
            "Lcma",
            "<",
            "Laav;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1011
    .local p5, "listener":Lcma;, "Lcma<Laav;>;"
    const-string/jumbo v2, "MailRPC"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setAutoDispatchConfig isDispatch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " remainCount\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isLimit\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v1, Laaw;

    invoke-direct {v1}, Laaw;-><init>()V

    .line 1013
    .local v1, "param":Laaw;
    iput-object p1, v1, Laaw;->d:Ljava/lang/Long;

    .line 1014
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Laaw;->a:Ljava/lang/Boolean;

    .line 1015
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Laaw;->b:Ljava/lang/Boolean;

    .line 1016
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Laaw;->c:Ljava/lang/Integer;

    .line 1017
    new-instance v0, Lro$28;

    invoke-direct {v0, p0, p5}, Lro$28;-><init>(Lro;Lcma;)V

    .line 1034
    .local v0, "callback":Lcmi;, "Lcmi<Laav;>;"
    iget-object v2, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->setAutoDispatchConfig(Laaw;Liyv;)V

    .line 1035
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Labg;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 432
    .local p2, "listener":Lcma;, "Lcma<Labg;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "unbindV5"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v0, Lro$6;

    invoke-direct {v0, p0, p2}, Lro$6;-><init>(Lro;Lcma;)V

    .line 450
    .local v0, "callback":Lcmi;, "Lcmi<Labg;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->unbindEmailV5(Ljava/lang/String;Liyv;)V

    .line 451
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Labg;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 454
    .local p3, "listener":Lcma;, "Lcma<Labg;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "unbindV6"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v0, Lro$7;

    invoke-direct {v0, p0, p3}, Lro$7;-><init>(Lro;Lcma;)V

    .line 472
    .local v0, "callback":Lcmi;, "Lcmi<Labg;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->unbindEmailV6(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 473
    return-void
.end method

.method public final a(Ljava/util/List;JLcma;)V
    .locals 4
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Labn;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Labn;>;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "getMailCid"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lro$30;

    invoke-direct {v0, p0, p4}, Lro$30;-><init>(Lro;Lcma;)V

    .line 162
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/util/List<Labn;>;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->getMailCid(Ljava/util/List;JLiyv;)V

    .line 163
    return-void
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labr;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 232
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Labr;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-string/jumbo v1, "MailRPC"

    const-string/jumbo v2, "updateEmailSignatureStatusV2"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lro$34;

    invoke-direct {v0, p0, p2}, Lro$34;-><init>(Lro;Lcma;)V

    .line 250
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->updateEmailSignatureStatusV2(Ljava/util/List;Liyv;)V

    .line 251
    return-void
.end method

.method public final b(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 774
    .local p1, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    new-instance v0, Lro$23;

    invoke-direct {v0, p0, p1, p2}, Lro$23;-><init>(Lro;Ljava/util/List;Lcma;)V

    .line 801
    .local v0, "callback":Lcmi;, "Lcmi<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/idl/service/CMailIService;->getUidInfoByEmails(Ljava/util/List;Liyv;)V

    .line 802
    return-void
.end method
