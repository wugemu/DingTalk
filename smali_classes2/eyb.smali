.class public Leyb;
.super Ljava/lang/Object;
.source "CloudContactImpl.java"


# static fields
.field private static volatile a:Leyb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Leyb;->a:Leyb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static a()Leyb;
    .locals 4

    .prologue
    .line 40
    sget-object v0, Leyb;->a:Leyb;

    .line 41
    .local v0, "localInstance":Leyb;
    if-nez v0, :cond_1

    .line 42
    const-class v3, Leyb;

    monitor-enter v3

    .line 43
    :try_start_0
    sget-object v0, Leyb;->a:Leyb;

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v1, Leyb;

    invoke-direct {v1}, Leyb;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Leyb;
    .local v1, "localInstance":Leyb;
    :try_start_1
    sput-object v1, Leyb;->a:Leyb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 47
    .end local v1    # "localInstance":Leyb;
    .restart local v0    # "localInstance":Leyb;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 49
    :cond_1
    return-object v0

    .line 47
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Leyb;
    .restart local v1    # "localInstance":Leyb;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Leyb;
    .restart local v0    # "localInstance":Leyb;
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Long;Leyo$d;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Leyo$d",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 151
    .local p2, "callback":Leyo$d;, "Leyo$d<Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;

    .line 155
    .local v0, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;
    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Leyb$4;

    invoke-direct {v1, p0, p2}, Leyb$4;-><init>(Leyb;Leyo$d;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;->getUserInfoCard(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
