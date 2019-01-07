.class public Lcom/laiwang/protocol/android/bg;
.super Ljava/lang/Object;
.source "NetworkHealth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/laiwang/protocol/android/bu;

.field private b:Lcom/laiwang/protocol/android/bn;

.field private c:Lcom/laiwang/protocol/android/Extension;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Lcom/laiwang/protocol/android/bu;)V
    .locals 0
    .param p1, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .param p2, "scheduleEngine"    # Lcom/laiwang/protocol/android/bn;
    .param p3, "ioExecutor"    # Lcom/laiwang/protocol/android/bu;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p3, p0, Lcom/laiwang/protocol/android/bg;->a:Lcom/laiwang/protocol/android/bu;

    .line 33
    iput-object p2, p0, Lcom/laiwang/protocol/android/bg;->b:Lcom/laiwang/protocol/android/bn;

    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/android/bg;->c:Lcom/laiwang/protocol/android/Extension;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v10, 0xa008

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 39
    new-instance v1, Lcom/laiwang/protocol/android/j;

    invoke-direct {v1, v5}, Lcom/laiwang/protocol/android/j;-><init>(Z)V

    .line 40
    .local v1, "connectStat":Lcom/laiwang/protocol/android/j;
    new-instance v6, Lcom/laiwang/protocol/android/av;

    const/16 v2, 0x96

    const/16 v3, 0x3e8

    invoke-direct {v6, v2, v3, v9}, Lcom/laiwang/protocol/android/av;-><init>(III)V

    .line 41
    .local v6, "codecHandler":Lcom/laiwang/protocol/android/av;
    iget-object v2, p0, Lcom/laiwang/protocol/android/bg;->c:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v2}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "vhost":Ljava/lang/String;
    const/4 v7, 0x1

    .line 44
    .local v7, "lwsV3":Z
    invoke-static {}, Lcom/laiwang/protocol/android/y;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    const/4 v7, 0x0

    .line 47
    :cond_0
    if-eqz v7, :cond_1

    .line 48
    new-instance v0, Lcom/laiwang/protocol/android/ab;

    new-instance v2, Lcom/laiwang/protocol/android/v;

    iget-object v3, p0, Lcom/laiwang/protocol/android/bg;->a:Lcom/laiwang/protocol/android/bu;

    invoke-direct {v2, v10, v3}, Lcom/laiwang/protocol/android/v;-><init>(ILcom/laiwang/protocol/android/bu;)V

    iget-object v3, p0, Lcom/laiwang/protocol/android/bg;->a:Lcom/laiwang/protocol/android/bu;

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/protocol/android/ab;-><init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V

    .line 52
    .local v0, "connection":Lcom/laiwang/protocol/android/aa;
    :goto_0
    iget-object v2, p0, Lcom/laiwang/protocol/android/bg;->b:Lcom/laiwang/protocol/android/bn;

    sget-object v3, Lcom/laiwang/protocol/android/aw;->b:Lcom/laiwang/protocol/android/aw;

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/bn;->a(Lcom/laiwang/protocol/android/aw;)Ljava/net/URI;

    move-result-object v8

    .line 54
    .local v8, "uri":Ljava/net/URI;
    const-string/jumbo v2, "[Health] detect network %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v2, Lcom/laiwang/protocol/android/bg$a;

    invoke-direct {v2, p1}, Lcom/laiwang/protocol/android/bg$a;-><init>(Lcom/laiwang/protocol/android/NetworkListener;)V

    invoke-interface {v0, v2}, Lcom/laiwang/protocol/android/aa;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 56
    invoke-interface {v0, v8}, Lcom/laiwang/protocol/android/aa;->a(Ljava/net/URI;)V

    .line 57
    return-void

    .line 50
    .end local v0    # "connection":Lcom/laiwang/protocol/android/aa;
    .end local v8    # "uri":Ljava/net/URI;
    :cond_1
    new-instance v0, Lcom/laiwang/protocol/android/o;

    new-instance v2, Lcom/laiwang/protocol/android/v;

    iget-object v3, p0, Lcom/laiwang/protocol/android/bg;->a:Lcom/laiwang/protocol/android/bu;

    invoke-direct {v2, v10, v3}, Lcom/laiwang/protocol/android/v;-><init>(ILcom/laiwang/protocol/android/bu;)V

    iget-object v3, p0, Lcom/laiwang/protocol/android/bg;->a:Lcom/laiwang/protocol/android/bu;

    invoke-direct/range {v0 .. v6}, Lcom/laiwang/protocol/android/o;-><init>(Lcom/laiwang/protocol/android/j;Lcom/laiwang/protocol/android/k;Lcom/laiwang/protocol/android/bu;Ljava/lang/String;ZLcom/laiwang/protocol/android/av;)V

    .restart local v0    # "connection":Lcom/laiwang/protocol/android/aa;
    goto :goto_0
.end method
