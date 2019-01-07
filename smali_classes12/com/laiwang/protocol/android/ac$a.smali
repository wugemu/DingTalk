.class Lcom/laiwang/protocol/android/ac$a;
.super Ljava/lang/Object;
.source "LwsKeepAlive.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/ac;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ac;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/ac;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/laiwang/protocol/android/ac$a;->a:Lcom/laiwang/protocol/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBecameBackground()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onBecameForeground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$a;->a:Lcom/laiwang/protocol/android/ac;

    invoke-static {v0}, Lcom/laiwang/protocol/android/ac;->h(Lcom/laiwang/protocol/android/ac;)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    const-string/jumbo v0, "[heartbeat] start ping. became foreground"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/laiwang/protocol/android/ac$a;->a:Lcom/laiwang/protocol/android/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/ac;->a(Z)V

    goto :goto_0
.end method
