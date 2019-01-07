.class Lcom/laiwang/protocol/android/ax$a;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "ConnectionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/ax;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/ax;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/ax;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/laiwang/protocol/android/ax$a;->a:Lcom/laiwang/protocol/android/ax;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/laiwang/protocol/android/ax$a;->a:Lcom/laiwang/protocol/android/ax;

    invoke-static {v0}, Lcom/laiwang/protocol/android/ax;->a(Lcom/laiwang/protocol/android/ax;)Lcom/laiwang/protocol/android/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/w;->a(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V

    .line 261
    return-void
.end method
