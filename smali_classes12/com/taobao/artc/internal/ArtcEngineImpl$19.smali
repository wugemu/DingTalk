.class final Lcom/taobao/artc/internal/ArtcEngineImpl$19;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->muteRemoteAudioStream(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-boolean p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;->a:Z

    iput-object p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;->c:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;->a:Z

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$19;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$4500(Lcom/taobao/artc/internal/ArtcEngineImpl;ZLjava/lang/String;)I

    .line 1322
    return-void
.end method
