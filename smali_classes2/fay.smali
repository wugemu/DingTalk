.class public Lfay;
.super Ljava/lang/Object;
.source "OrgScoreAPIImpl.java"

# interfaces
.implements Lezx;


# static fields
.field private static a:Lfay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lezx;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lfay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfay;->a:Lfay;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lfay;

    invoke-direct {v0}, Lfay;-><init>()V

    sput-object v0, Lfay;->a:Lfay;

    .line 52
    :cond_0
    sget-object v0, Lfay;->a:Lfay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lfay;Lcma;J)V
    .locals 4
    .param p0, "x0"    # Lfay;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # J

    .prologue
    .line 42
    .line 1188
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    const-class v0, Lcom/alibaba/android/user/idl/services/OrgDataIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/OrgDataIService;

    .line 1194
    if-nez v0, :cond_2

    .line 1195
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfay$6;

    invoke-direct {v1, p0, p1}, Lfay$6;-><init>(Lfay;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1204
    :cond_2
    new-instance v1, Lfay$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lfay$7;-><init>(Lfay;Lcma;J)V

    .line 1237
    new-instance v2, Lfay$8;

    invoke-direct {v2, p0, v1}, Lfay$8;-><init>(Lfay;Lcma;)V

    .line 1251
    invoke-interface {v0, v2}, Lcom/alibaba/android/user/idl/services/OrgDataIService;->getAllOrgScoreData(Liyv;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(JLcma;)V
    .locals 5
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgTrendDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgTrendDataObject;>;"
    if-nez p3, :cond_0

    .line 76
    :goto_0
    return-void

    .line 61
    :cond_0
    const-class v2, Lcom/alibaba/android/user/idl/services/OrgDataIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OrgDataIService;

    .line 62
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OrgDataIService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 63
    :cond_1
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Lfay$1;

    invoke-direct {v0, p0, p3}, Lfay$1;-><init>(Lfay;Lcma;)V

    .line 75
    .local v0, "handler":Lcmg;, "Lcmg<Lfpt;Lcom/alibaba/android/user/model/OrgTrendDataObject;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/OrgDataIService;->getTrendDataInfo(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcma;J)V
    .locals 2
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgScoreDataObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 109
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 110
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfay$2;

    invoke-direct {v1, p0, p1}, Lfay$2;-><init>(Lfay;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 120
    :cond_1
    const-string/jumbo v0, "OrgScoreAPIImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfay$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lfay$3;-><init>(Lfay;JLcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcma;J)V
    .locals 2
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/user/model/OrgScoreDataObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/user/model/OrgScoreDataObject;>;"
    if-nez p1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 154
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 155
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfay$4;

    invoke-direct {v1, p0, p1}, Lfay$4;-><init>(Lfay;Lcma;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 165
    :cond_1
    const-string/jumbo v0, "OrgScoreAPIImpl"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfay$5;

    invoke-direct {v1, p0, p2, p3, p1}, Lfay$5;-><init>(Lfay;JLcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
