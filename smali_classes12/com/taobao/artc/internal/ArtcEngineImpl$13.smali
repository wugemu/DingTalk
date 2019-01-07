.class final Lcom/taobao/artc/internal/ArtcEngineImpl$13;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->leaveChannel2(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 1214
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$13;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$13;->a:Ljava/lang/String;

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
    .line 1217
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$13;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3900()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$13;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$4100(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void
.end method
