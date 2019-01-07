.class public final Lalb;
.super Ljava/lang/Object;
.source "SessionTimeAndIndexMgr.java"

# interfaces
.implements Lfyh$a;


# static fields
.field private static c:Lalb;

.field private static f:J


# instance fields
.field public a:J

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Ljava/util/concurrent/ScheduledFuture;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lalb;

    invoke-direct {v0}, Lalb;-><init>()V

    sput-object v0, Lalb;->c:Lalb;

    .line 29
    const-wide/32 v0, 0x493e0

    sput-wide v0, Lalb;->f:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lalb;->a:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lalb;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lalb;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lalb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Lalb$1;

    invoke-direct {v0, p0}, Lalb$1;-><init>(Lalb;)V

    iput-object v0, p0, Lalb;->g:Ljava/lang/Runnable;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lalb;->a:J

    .line 49
    invoke-static {p0}, Lfyh;->a(Lfyh$a;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lalb;J)J
    .locals 1
    .param p0, "x0"    # Lalb;
    .param p1, "x1"    # J

    .prologue
    .line 13
    iput-wide p1, p0, Lalb;->a:J

    return-wide p1
.end method

.method public static a()Lalb;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lalb;->c:Lalb;

    return-object v0
.end method

.method static synthetic a(Lalb;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lalb;

    .prologue
    .line 13
    iget-object v0, p0, Lalb;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic b(Lalb;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lalb;

    .prologue
    .line 13
    iget-object v0, p0, Lalb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 54
    invoke-static {}, Lamu;->b()V

    .line 55
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v0, p0, Lalb;->d:Ljava/util/concurrent/ScheduledFuture;

    iget-object v1, p0, Lalb;->g:Ljava/lang/Runnable;

    sget-wide v2, Lalb;->f:J

    invoke-static {v0, v1, v2, v3}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lalb;->d:Ljava/util/concurrent/ScheduledFuture;

    .line 56
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lalb;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalb;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lalb;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 63
    :cond_0
    return-void
.end method

.method public final d()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lalb;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
