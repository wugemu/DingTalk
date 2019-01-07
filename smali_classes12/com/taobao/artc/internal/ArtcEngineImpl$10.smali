.class final Lcom/taobao/artc/internal/ArtcEngineImpl$10;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->createChannel2(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3800(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3702(Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreateChannelSuccess, channelId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$000(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$10;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$600(Lcom/taobao/artc/internal/ArtcEngineImpl;)Ljka;

    move-result-object v0

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3700()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljka;->onCreateChannelSuccess(Ljava/lang/String;)V

    .line 1148
    :cond_0
    return-void
.end method
