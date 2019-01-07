.class Lcom/laiwang/protocol/android/w$a;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "Transmission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/w;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/w;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/w;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-static {v0, p1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/w;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method public onConnected()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/w;Z)Z

    .line 101
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-static {v0}, Lcom/laiwang/protocol/android/w;->b(Lcom/laiwang/protocol/android/w;)Lcom/laiwang/protocol/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/ax;->a()V

    .line 102
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-static {v0}, Lcom/laiwang/protocol/android/w;->c(Lcom/laiwang/protocol/android/w;)V

    .line 103
    return-void
.end method

.method public onDisconnected(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/w;Z)Z

    .line 108
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-static {v0, p1}, Lcom/laiwang/protocol/android/w;->b(Lcom/laiwang/protocol/android/w;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public onNetworkConnected()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-static {v0}, Lcom/laiwang/protocol/android/w;->d(Lcom/laiwang/protocol/android/w;)V

    .line 114
    return-void
.end method

.method public onNetworkUnavailable()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-static {v0}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/w;)V

    .line 91
    return-void
.end method

.method public onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/laiwang/protocol/android/w$a;->a:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V

    .line 119
    return-void
.end method
