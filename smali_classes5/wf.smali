.class public final Lwf;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwf$d;,
        Lwf$a;,
        Lwf$b;,
        Lwf$c;
    }
.end annotation


# static fields
.field private static transient e:Lwf;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lwf$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lwf$c;",
            "Lwf$d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lwf;->b:Ljava/util/Map;

    .line 525
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lwf;->c:Ljava/util/Map;

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lwf;->d:Ljava/util/List;

    .line 571
    if-nez p1, :cond_0

    .line 573
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "No application instance given"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :cond_0
    iput-object p1, p0, Lwf;->a:Landroid/content/Context;

    .line 591
    const/4 v2, 0x2

    new-array v2, v2, [Lwf$c;

    const/4 v3, 0x0

    new-instance v4, Lwf$b;

    invoke-direct {v4}, Lwf$b;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lwf$a;

    invoke-direct {v4}, Lwf$a;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 593
    .local v0, "allProviders":Ljava/util/List;, "Ljava/util/List<Lwf$c;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwf$c;

    .line 600
    .local v1, "provider":Lwf$c;
    invoke-interface {v1, p1}, Lwf$c;->a(Landroid/content/Context;)V

    .line 601
    iget-object v3, p0, Lwf;->b:Ljava/util/Map;

    invoke-interface {v1}, Lwf$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v3, p0, Lwf;->c:Ljava/util/Map;

    new-instance v4, Lwf$d;

    invoke-direct {v4}, Lwf$d;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 606
    .end local v1    # "provider":Lwf$c;
    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lwf;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    const-class v1, Lwf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lwf;->e:Lwf;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lwf;

    invoke-direct {v0, p0}, Lwf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwf;->e:Lwf;

    .line 542
    :cond_0
    sget-object v0, Lwf;->e:Lwf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lwf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
