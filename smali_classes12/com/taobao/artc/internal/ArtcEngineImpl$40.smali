.class final Lcom/taobao/artc/internal/ArtcEngineImpl$40;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->setCallTimeout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$40;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$40;->a:I

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
    .line 881
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$40;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$40;->a:I

    invoke-static {v0, v1}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1800(Lcom/taobao/artc/internal/ArtcEngineImpl;I)I

    .line 882
    return-void
.end method
