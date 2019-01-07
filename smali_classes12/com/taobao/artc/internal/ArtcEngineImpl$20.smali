.class final Lcom/taobao/artc/internal/ArtcEngineImpl$20;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->muteLocalVideoStream(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$20;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-boolean p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$20;->a:Z

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
    .line 1335
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$20;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-boolean v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$20;->a:Z

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$4600(Lcom/taobao/artc/internal/ArtcEngineImpl;Z)I

    .line 1336
    return-void
.end method
