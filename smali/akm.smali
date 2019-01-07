.class public final Lakm;
.super Ljava/lang/Object;
.source "ConfigTimeStampMgr.java"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lakm;


# instance fields
.field public b:Ljava/util/concurrent/ScheduledFuture;

.field public c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lakm;->d:Lakm;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lakm;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v3, Lakm$1;

    invoke-direct {v3, p0}, Lakm$1;-><init>(Lakm;)V

    iput-object v3, p0, Lakm;->c:Ljava/lang/Runnable;

    .line 42
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 1305
    iget-object v0, v3, Lajw;->c:Landroid/content/Context;

    .line 43
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 1621
    iget-object v3, v3, Lajw;->m:Lako;

    .line 44
    const-class v4, Lakn;

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v6, v6, v5}, Lako;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "timestampList":Ljava/util/List;, "Ljava/util/List<Lakn;>;"
    if-eqz v2, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 47
    sget-object v4, Lakm;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lakn;

    iget-object v5, v3, Lakn;->a:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lakn;

    iget-object v3, v3, Lakn;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    .end local v2    # "timestampList":Ljava/util/List;, "Ljava/util/List<Lakn;>;"
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lakm;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lakm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lakm;->d:Lakm;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lakm;

    invoke-direct {v0}, Lakm;-><init>()V

    sput-object v0, Lakm;->d:Lakm;

    .line 57
    :cond_0
    sget-object v0, Lakm;->d:Lakm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "namespace"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lakm;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v0, "0"

    .line 70
    :cond_0
    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lakm;->a:Ljava/util/Map;

    return-object v0
.end method
