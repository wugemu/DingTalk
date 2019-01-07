.class public Latp;
.super Ljava/lang/Object;
.source "RpcFrequencyController.java"


# static fields
.field private static volatile d:Latp;


# instance fields
.field public a:Lcom/alibaba/android/calendar/data/idl/service/IDLDingService;

.field public b:Lcom/alibaba/android/calendar/data/idl/service/SafeIService;

.field public c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latp;->e:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latp;->f:Ljava/util/Map;

    .line 57
    const-class v0, Lcom/alibaba/android/calendar/data/idl/service/IDLDingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/idl/service/IDLDingService;

    iput-object v0, p0, Latp;->a:Lcom/alibaba/android/calendar/data/idl/service/IDLDingService;

    .line 58
    const-class v0, Lcom/alibaba/android/calendar/data/idl/service/SafeIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/idl/service/SafeIService;

    iput-object v0, p0, Latp;->b:Lcom/alibaba/android/calendar/data/idl/service/SafeIService;

    .line 59
    const-class v0, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    iput-object v0, p0, Latp;->c:Lcom/alibaba/android/calendar/data/idl/service/IDLCalendarService;

    .line 60
    return-void
.end method

.method static synthetic a(Latp;Ljava/lang/String;)J
    .locals 4
    .param p0, "x0"    # Latp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 1199
    iget-object v0, p0, Latp;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 44
    return-wide v0
.end method

.method public static a()Latp;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Latp;->d:Latp;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Latp;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Latp;->d:Latp;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Latp;

    invoke-direct {v0}, Latp;-><init>()V

    sput-object v0, Latp;->d:Latp;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Latp;->d:Latp;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Latp;Ljava/lang/String;I)V
    .locals 2
    .param p0, "x0"    # Latp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 44
    .line 1211
    iget-object v0, p0, Latp;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method static synthetic a(Latp;Ljava/lang/String;J)V
    .locals 2
    .param p0, "x0"    # Latp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 44
    .line 1203
    iget-object v0, p0, Latp;->e:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method static synthetic b(Latp;Ljava/lang/String;)I
    .locals 2
    .param p0, "x0"    # Latp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 2207
    iget-object v0, p0, Latp;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 44
    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 219
    const-string/jumbo v1, ""

    .line 221
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Latp;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Latp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 2215
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[RpcFrequencyController]too many repeat rpc in one minute, method:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lawm;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {}, Lavq;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Latp$1;

    invoke-direct {v1, p0, p1}, Latp$1;-><init>(Latp;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Latf;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
