.class final Lcom/taobao/artc/internal/ArtcEngineImpl$25;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->call2(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->b:Ljava/lang/String;

    iput p4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->c:I

    iput-object p5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->e:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->b:Ljava/lang/String;

    iget v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->c:I

    iget-object v4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$25;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5000(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    .line 1648
    return-void
.end method
