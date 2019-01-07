.class final Lcom/taobao/artc/internal/ArtcEngineImpl$11;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->joinChannel2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 1183
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput-object p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->a:Ljava/lang/String;

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
    .line 1186
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/artc/utils/ArtcDeviceInfo;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    .local v1, "networkType":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    invoke-static {v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$1200(Lcom/taobao/artc/internal/ArtcEngineImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljkb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "intranetIp":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$3902(Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    iget-object v2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->b:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget-object v3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$11;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$4000(Lcom/taobao/artc/internal/ArtcEngineImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return-void
.end method
