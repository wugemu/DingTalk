.class Lcom/laiwang/protocol/android/h$c;
.super Landroid/content/BroadcastReceiver;
.source "SmartHeartBeatInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/h;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/h;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/h;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/laiwang/protocol/android/h$c;->a:Lcom/laiwang/protocol/android/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    const-string/jumbo v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v1, "[heartbeat] network is disconnected"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    const-string/jumbo v1, "[heartbeat] network is changed"

    invoke-static {v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 214
    :try_start_0
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 215
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/laiwang/protocol/android/h$c;->a:Lcom/laiwang/protocol/android/h;

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/h;->a(Lcom/laiwang/protocol/android/h;Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
