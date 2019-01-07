.class public final Ldyp;
.super Ljava/lang/Object;
.source "UserGuideAPIImpl.java"

# interfaces
.implements Ldyo;


# static fields
.field private static a:Ldyp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static declared-synchronized a()Ldyo;
    .locals 2

    .prologue
    .line 37
    const-class v1, Ldyp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldyp;->a:Ldyp;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ldyp;

    invoke-direct {v0}, Ldyp;-><init>()V

    sput-object v0, Ldyp;->a:Ldyp;

    .line 40
    :cond_0
    sget-object v0, Ldyp;->a:Ldyp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;>;"
    new-instance v0, Ldyp$1;

    invoke-direct {v0, p0, p1}, Ldyp$1;-><init>(Ldyp;Lcma;)V

    .line 61
    .local v0, "handler":Lcmg;, "Lcmg<Ldqt;Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;

    .line 62
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;
    if-nez v1, :cond_0

    .line 63
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 1033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;->getLastStripe(Liyv;)V

    goto :goto_0
.end method

.method public final b(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;>;"
    new-instance v0, Ldyp$2;

    invoke-direct {v0, p0, p1}, Ldyp$2;-><init>(Ldyp;Lcma;)V

    .line 84
    .local v0, "handler":Lcmg;, "Lcmg<Ldqu;Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskListObject;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;

    .line 85
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;
    if-nez v1, :cond_0

    .line 86
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;->getLastStripeV2(Liyv;)V

    goto :goto_0
.end method

.method public final c(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v0, Ldyp$3;

    invoke-direct {v0, p0, p1}, Ldyp$3;-><init>(Ldyp;Lcma;)V

    .line 100
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;

    .line 101
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;
    if-nez v1, :cond_0

    .line 102
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 3033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/UserGuideIService;->closeGuidePanel(Liyv;)V

    goto :goto_0
.end method
