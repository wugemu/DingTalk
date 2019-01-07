.class public Lcom/laiwang/protocol/android/j$a;
.super Ljava/lang/Object;
.source "ConnectStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/j;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/j;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/j;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/laiwang/protocol/android/j$a;->a:Lcom/laiwang/protocol/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/laiwang/protocol/android/j$a;->b:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/j$a;)J
    .locals 2
    .param p0, "x0"    # Lcom/laiwang/protocol/android/j$a;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    return-wide v0
.end method

.method static synthetic b(Lcom/laiwang/protocol/android/j$a;)J
    .locals 2
    .param p0, "x0"    # Lcom/laiwang/protocol/android/j$a;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->c:J

    .line 76
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    .line 80
    return-void
.end method

.method public c()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 88
    iget-wide v2, p0, Lcom/laiwang/protocol/android/j$a;->c:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    iget-wide v2, p0, Lcom/laiwang/protocol/android/j$a;->c:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public d()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v0, 0x0

    .line 84
    const-string/jumbo v2, "%s=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/j$a;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/laiwang/protocol/android/j$a;->c:J

    cmp-long v5, v6, v0

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    cmp-long v5, v6, v0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-wide v0, p0, Lcom/laiwang/protocol/android/j$a;->d:J

    iget-wide v6, p0, Lcom/laiwang/protocol/android/j$a;->c:J

    sub-long/2addr v0, v6

    goto :goto_0
.end method
