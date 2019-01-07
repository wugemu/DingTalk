.class public final Ldym;
.super Ljava/lang/Object;
.source "RecruitmentAPIImpl.java"

# interfaces
.implements Ldyl;


# static fields
.field private static a:Ldyl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized a()Ldyl;
    .locals 2

    .prologue
    .line 16
    const-class v1, Ldym;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldym;->a:Ldyl;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ldym;

    invoke-direct {v0}, Ldym;-><init>()V

    sput-object v0, Ldym;->a:Ldyl;

    .line 19
    :cond_0
    sget-object v0, Ldym;->a:Ldyl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ldun;Lcma;)V
    .locals 3
    .param p1, "model"    # Ldun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldun;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_1

    .line 28
    if-eqz p2, :cond_0

    .line 29
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-interface {p2, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Ldym$1;

    invoke-direct {v0, p0, p2}, Ldym$1;-><init>(Ldym;Lcma;)V

    .line 39
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v1, Lcom/alibaba/android/dingtalkim/models/idl/service/RECRCandidateIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/RECRCandidateIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/RECRCandidateIService;->authReviewMyResume(Ldun;Liyv;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 4
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "candidateUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldym$2;

    invoke-direct {v0, p0, p4}, Ldym$2;-><init>(Ldym;Lcma;)V

    .line 50
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v1, Ldum;

    invoke-direct {v1}, Ldum;-><init>()V

    .line 51
    .local v1, "model":Ldum;
    iput-object p1, v1, Ldum;->a:Ljava/lang/String;

    .line 52
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ldum;->b:Ljava/lang/Long;

    .line 53
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/RecruiterCandidateIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/idl/service/RecruiterCandidateIService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/RecruiterCandidateIService;->applyExchangeContactWay(Ldum;Liyv;)V

    .line 54
    return-void
.end method
