.class Lcom/laiwang/protocol/android/e$c;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "ConnectionKeepAlive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/e;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/e;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/laiwang/protocol/android/e$c;->a:Lcom/laiwang/protocol/android/e;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    instance-of v0, p1, Lcom/laiwang/protocol/android/ab$c;

    if-nez v0, :cond_0

    .line 121
    const-string/jumbo v0, "[build_connect] onConnectFailed, schedule next connect"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$c;->a:Lcom/laiwang/protocol/android/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;Z)V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;->onConnectFailed(Ljava/lang/Exception;)V

    .line 126
    return-void
.end method

.method public onDisconnected(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 130
    instance-of v0, p1, Lcom/laiwang/protocol/android/ab$c;

    if-nez v0, :cond_0

    .line 131
    const-string/jumbo v0, "[build_connect] onDisconnected, start next connect %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$c;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0, v3}, Lcom/laiwang/protocol/android/e;->a(Lcom/laiwang/protocol/android/e;Z)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;->onDisconnected(Ljava/lang/Exception;)V

    .line 139
    return-void
.end method

.method public onNetworkConnected()V
    .locals 1

    .prologue
    .line 143
    const-string/jumbo v0, "[build_connect] onNetworkConnected, cancel next connect & ping"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/laiwang/protocol/android/e$c;->a:Lcom/laiwang/protocol/android/e;

    invoke-static {v0}, Lcom/laiwang/protocol/android/e;->c(Lcom/laiwang/protocol/android/e;)V

    .line 146
    invoke-super {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;->onNetworkConnected()V

    .line 147
    return-void
.end method
