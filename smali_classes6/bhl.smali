.class public Lbhl;
.super Ljava/lang/Object;
.source "DingUnReadCountManager.java"


# static fields
.field private static volatile c:Lbhl;


# instance fields
.field public a:Lbgv;

.field public b:Lbfb;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lbgw;

    invoke-direct {v0}, Lbgw;-><init>()V

    iput-object v0, p0, Lbhl;->a:Lbgv;

    .line 28
    return-void
.end method

.method public static a()Lbhl;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lbhl;->c:Lbhl;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lbhl;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lbhl;->c:Lbhl;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lbhl;

    invoke-direct {v0}, Lbhl;-><init>()V

    sput-object v0, Lbhl;->c:Lbhl;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lbhl;->c:Lbhl;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lbhl;->b:Lbfb;

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Lbhl;->a:Lbgv;

    invoke-interface {v0}, Lbgv;->a()Lbfb;

    move-result-object v0

    .line 71
    iput-object v0, p0, Lbhl;->b:Lbfb;

    .line 73
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[DingUnReadCountManager] local mDingUnreadCountObject="

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lbhl;->b:Lbfb;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 74
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lbhl;->b:Lbfb;

    invoke-virtual {v0}, Lbfb;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
