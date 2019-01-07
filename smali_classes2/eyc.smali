.class public Leyc;
.super Ljava/lang/Object;
.source "ConferenceAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leyc$a;,
        Leyc$b;,
        Leyc$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Leyc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Leyc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyc;->a:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Leyc;->b:Leyc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static a()Leyc;
    .locals 4

    .prologue
    .line 59
    sget-object v0, Leyc;->b:Leyc;

    .line 60
    .local v0, "localInstance":Leyc;
    if-nez v0, :cond_1

    .line 61
    const-class v3, Leyc;

    monitor-enter v3

    .line 62
    :try_start_0
    sget-object v0, Leyc;->b:Leyc;

    .line 63
    if-nez v0, :cond_0

    .line 64
    new-instance v1, Leyc;

    invoke-direct {v1}, Leyc;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Leyc;
    .local v1, "localInstance":Leyc;
    :try_start_1
    sput-object v1, Leyc;->b:Leyc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 66
    .end local v1    # "localInstance":Leyc;
    .restart local v0    # "localInstance":Leyc;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 68
    :cond_1
    return-object v0

    .line 66
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Leyc;
    .restart local v1    # "localInstance":Leyc;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Leyc;
    .restart local v0    # "localInstance":Leyc;
    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;Leyo$d;)V
    .locals 2
    .param p1, "reqModel"    # Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 800
    .local p2, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeRspModel;>;"
    if-nez p1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 804
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz v0, :cond_0

    .line 807
    new-instance v1, Leyc$10;

    invoke-direct {v1, p0, p2}, Leyc$10;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->getSupportedCallType(Lcom/alibaba/android/teleconf/sdk/idl/model/CallTypeReqModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 111
    .local p2, "observer":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 113
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v1, Leyc$9;

    invoke-direct {v1, p0, p2}, Leyc$9;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->addMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$e;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$e",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 354
    .local p2, "observer":Leyo$e;, "Leyo$e<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfPullListModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 356
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance v1, Leyc$24;

    invoke-direct {v1, p0, p2}, Leyc$24;-><init>(Leyc;Leyo$e;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->pullMembers(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 220
    .local p2, "observer":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 222
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v1, Leyc$21;

    invoke-direct {v1, p0, p2}, Leyc$21;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->kickOutMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$e;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$e",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 391
    .local p2, "observer":Leyo$e;, "Leyo$e<Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 393
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    new-instance v1, Leyc$25;

    invoke-direct {v1, p0, p2}, Leyc$25;-><init>(Leyc;Leyo$e;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->pullConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 6
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 257
    .local p2, "observer":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->conferenceId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 262
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 266
    new-instance v1, Leyc$22;

    invoke-direct {v1, p0, p2, p1}, Leyc$22;-><init>(Leyc;Leyo$d;Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->leaveConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final d(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 6
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 303
    .local p2, "observer":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->conferenceId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 309
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 313
    new-instance v1, Leyc$23;

    invoke-direct {v1, p0, p2, p1}, Leyc$23;-><init>(Leyc;Leyo$d;Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->terminateConference(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final e(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 429
    .local p2, "observer":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 431
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    new-instance v1, Leyc$2;

    invoke-direct {v1, p0, p2}, Leyc$2;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->muteMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final f(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 466
    .local p2, "observer":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 468
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    new-instance v1, Leyc$3;

    invoke-direct {v1, p0, p2}, Leyc$3;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->unMuteMember(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final g(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 502
    .local p2, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 504
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    new-instance v1, Leyc$4;

    invoke-direct {v1, p0, p2}, Leyc$4;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->muteAll(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method

.method public final h(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Leyo$d;)V
    .locals 2
    .param p1, "conference"    # Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 538
    .local p2, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/ConfOperationModel;>;"
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 540
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    new-instance v1, Leyc$5;

    invoke-direct {v1, p0, p2}, Leyc$5;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->unMuteAll(Lcom/alibaba/android/teleconf/sdk/idl/model/ConferenceModel;Liyv;)V

    goto :goto_0
.end method
