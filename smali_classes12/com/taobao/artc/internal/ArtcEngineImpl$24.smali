.class final Lcom/taobao/artc/internal/ArtcEngineImpl$24;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->invite2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->d:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->d:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$24;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$4900(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    return-void
.end method
