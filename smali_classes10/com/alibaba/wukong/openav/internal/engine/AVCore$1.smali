.class final Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "AVCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Landroid/content/Context;Lied$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/openav/internal/engine/AVCore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 363
    const-string/jumbo v0, "LWP:connect failed."

    .line 1033
    const-string/jumbo v1, "OpenAV"

    invoke-static {v1, v0}, Lieg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Z)Z

    .line 365
    return-void
.end method

.method public final onConnected()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 369
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Z)Z

    .line 370
    return-void
.end method

.method public final onDisconnected(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Z)Z

    .line 375
    return-void
.end method

.method public final onNetworkUnavailable()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 358
    iget-object v0, p0, Lcom/alibaba/wukong/openav/internal/engine/AVCore$1;->a:Lcom/alibaba/wukong/openav/internal/engine/AVCore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/openav/internal/engine/AVCore;->a(Lcom/alibaba/wukong/openav/internal/engine/AVCore;Z)Z

    .line 359
    return-void
.end method
