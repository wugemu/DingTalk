.class public final Lgas;
.super Ljava/lang/Object;
.source "FavoriteRPC.java"


# static fields
.field private static a:Lgas;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized a()Lgas;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lgas;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgas;->a:Lgas;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lgas;

    invoke-direct {v0}, Lgas;-><init>()V

    sput-object v0, Lgas;->a:Lgas;

    .line 31
    :cond_0
    sget-object v0, Lgas;->a:Lgas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 35
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    new-instance v1, Lgas$1;

    invoke-direct {v1, p0}, Lgas$1;-><init>(Lgas;)V

    invoke-virtual {v0, v1}, Lgcu;->a(Lcma;)V

    .line 54
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Lgcu;->a()Lgcu;

    move-result-object v0

    new-instance v1, Lgas$2;

    invoke-direct {v1, p0}, Lgas$2;-><init>(Lgas;)V

    invoke-virtual {v0, v1}, Lgcu;->a(Lcma;)V

    .line 77
    return-void
.end method
