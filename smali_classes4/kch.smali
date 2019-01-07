.class public final Lkch;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkch$a;,
        Lkch$c;,
        Lkch$d;,
        Lkch$b;
    }
.end annotation


# static fields
.field private static b:J

.field private static c:J

.field private static d:J


# instance fields
.field public final a:Lkch$c;

.field private final e:Lkch$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :cond_0
    sput-wide v0, Lkch;->b:J

    sput-wide v0, Lkch;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkch;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkch;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lkch$c;

    invoke-direct {v0, p1, p2}, Lkch$c;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lkch;->a:Lkch$c;

    new-instance v0, Lkch$a;

    iget-object v1, p0, Lkch;->a:Lkch$c;

    invoke-direct {v0, v1}, Lkch$a;-><init>(Lkch$c;)V

    iput-object v0, p0, Lkch;->e:Lkch$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Timer-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lkch;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkch;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static declared-synchronized a()J
    .locals 8

    const-class v1, Lkch;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lkch;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget-wide v4, Lkch;->b:J

    sget-wide v6, Lkch;->c:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    sput-wide v4, Lkch;->b:J

    :cond_0
    sput-wide v2, Lkch;->c:J

    sget-wide v2, Lkch;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized c()J
    .locals 6

    const-class v1, Lkch;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lkch;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lkch;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lkch$b;J)V
    .locals 6

    iget-object v1, p0, Lkch;->a:Lkch$c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkch;->a:Lkch$c;

    invoke-static {v0}, Lkch$c;->b(Lkch$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Timer was canceled"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Lkch;->a()J

    move-result-wide v2

    add-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Illegal delay to start the TimerTask: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lkch$d;

    invoke-direct {v0}, Lkch$d;-><init>()V

    iget v4, p1, Lkch$b;->g:I

    iput v4, v0, Lkch$d;->e:I

    iput-object p1, v0, Lkch$d;->d:Lkch$b;

    iput-wide v2, v0, Lkch$d;->c:J

    iget-object v2, p0, Lkch;->a:Lkch$c;

    invoke-static {v2, v0}, Lkch$c;->a(Lkch$c;Lkch$d;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(I)Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v2, p0, Lkch;->a:Lkch$c;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lkch;->a:Lkch$c;

    invoke-static {v1}, Lkch$c;->a(Lkch$c;)Lkch$c$a;

    move-result-object v3

    move v1, v0

    .line 1000
    :goto_0
    iget v4, v3, Lkch$c$a;->b:I

    if-ge v1, v4, :cond_0

    iget-object v4, v3, Lkch$c$a;->a:[Lkch$d;

    aget-object v4, v4, v1

    iget v4, v4, Lkch$d;->e:I

    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    .line 0
    :cond_0
    monitor-exit v2

    return v0

    .line 1000
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v1, p0, Lkch;->a:Lkch$c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkch;->a:Lkch$c;

    invoke-static {v0}, Lkch$c;->a(Lkch$c;)Lkch$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lkch$c$a;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    iget-object v1, p0, Lkch;->a:Lkch$c;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkch;->a:Lkch$c;

    invoke-static {v0}, Lkch$c;->a(Lkch$c;)Lkch$c$a;

    move-result-object v2

    .line 2000
    const/4 v0, 0x0

    :goto_0
    iget v3, v2, Lkch$c$a;->b:I

    if-ge v0, v3, :cond_1

    iget-object v3, v2, Lkch$c$a;->a:[Lkch$d;

    aget-object v3, v3, v0

    iget v3, v3, Lkch$d;->e:I

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lkch$c$a;->a:[Lkch$d;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lkch$d;->a()Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lkch$c$a;->b()V

    .line 0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
