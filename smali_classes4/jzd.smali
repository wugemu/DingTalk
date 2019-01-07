.class public Ljzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljzd$a;,
        Ljzd$c;,
        Ljzd$b;
    }
.end annotation


# static fields
.field private static volatile c:Ljzd;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljzd$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljzd;->c:Ljzd;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Ljzd;->b:Landroid/content/Context;

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Ljzd$a;

    invoke-direct {v1, p0}, Ljzd$a;-><init>(Ljzd;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljzd;->a(J)V

    return-void
.end method

.method static synthetic a(Ljzd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ljzd;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljzd;
    .locals 2

    sget-object v0, Ljzd;->c:Ljzd;

    if-nez v0, :cond_1

    const-class v1, Ljzd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljzd;->c:Ljzd;

    if-nez v0, :cond_0

    new-instance v0, Ljzd;

    invoke-direct {v0, p0}, Ljzd;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljzd;->c:Ljzd;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Ljzd;->c:Ljzd;

    iput-object p0, v0, Ljzd;->b:Landroid/content/Context;

    sget-object v0, Ljzd;->c:Ljzd;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljzd;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljzd;->b(J)V

    return-void
.end method

.method static synthetic b(Ljzd;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method private b(J)V
    .locals 1

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljzd$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljzd$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ljzd;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic c(Ljzd;)V
    .locals 4

    .prologue
    .line 0
    .line 3000
    invoke-static {}, Ljut;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljut;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljzd;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/.logcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 0
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 1000
    :cond_0
    :goto_0
    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljzd$b;

    if-eqz v0, :cond_0

    .line 2000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Ljzd$b;->b:J

    sub-long v0, v2, v0

    const-wide/32 v2, 0xa4cb800

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 1000
    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_3

    :cond_1
    const-string/jumbo v0, "remove Expired task"

    invoke-static {v0}, Ljuw;->c(Ljava/lang/String;)V

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 2000
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 0
    :cond_3
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljzd;->b(J)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljzf;

    invoke-direct {v0, p0}, Ljzf;-><init>(Ljzd;)V

    invoke-static {v0, p1, p2}, Lkef;->a(Ljvg$b;J)V

    :cond_0
    return-void
.end method
