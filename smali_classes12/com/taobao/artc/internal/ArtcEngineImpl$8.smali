.class final Lcom/taobao/artc/internal/ArtcEngineImpl$8;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->setVideoLayout(Lcom/taobao/artc/api/ArtcVideoLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/artc/api/ArtcVideoLayout;

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Lcom/taobao/artc/api/ArtcVideoLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$8;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$8;->a:Lcom/taobao/artc/api/ArtcVideoLayout;

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
    .line 1090
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$8;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$8;->a:Lcom/taobao/artc/api/ArtcVideoLayout;

    iget-object v1, v1, Lcom/taobao/artc/api/ArtcVideoLayout;->desc:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$8;->a:Lcom/taobao/artc/api/ArtcVideoLayout;

    iget v2, v2, Lcom/taobao/artc/api/ArtcVideoLayout;->bg_color:I

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3500(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/util/ArrayList;I)I

    .line 1091
    return-void
.end method
