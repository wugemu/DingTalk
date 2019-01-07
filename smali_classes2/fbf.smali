.class public Lfbf;
.super Ljava/lang/Object;
.source "UserDeviceAPiImpl.java"


# static fields
.field private static volatile a:Lfbf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfbf;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lfbf;->a:Lfbf;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lfbf;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lfbf;->a:Lfbf;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lfbf;

    invoke-direct {v0}, Lfbf;-><init>()V

    sput-object v0, Lfbf;->a:Lfbf;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lfbf;->a:Lfbf;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(JJLcma;)V
    .locals 7
    .param p1, "orgId"    # J
    .param p3, "targetUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lfrp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "listener":Lcma;, "Lcma<Lfrp;>;"
    const-wide/16 v4, 0x0

    .line 98
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 99
    :cond_0
    if-eqz p5, :cond_1

    .line 100
    const-string/jumbo v2, "err_parameter"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lezg$l;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    new-instance v0, Lfbf$3;

    invoke-direct {v0, p0, p5}, Lfbf$3;-><init>(Lfbf;Lcma;)V

    .line 112
    .local v0, "callback":Lcmg;, "Lcmg<Lfob;Lfrp;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/OpenDeviceIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/OpenDeviceIService;

    .line 113
    .local v1, "service":Lcom/alibaba/android/user/idl/services/OpenDeviceIService;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/user/idl/services/OpenDeviceIService;->getApTerminalInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
