.class final Lcom/taobao/artc/internal/ArtcEngineImpl$27;
.super Ljava/lang/Object;
.source "ArtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/artc/internal/ArtcEngineImpl;->setFaceBeautyParam(FFFFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:Lcom/taobao/artc/internal/ArtcEngineImpl;


# direct methods
.method constructor <init>(Lcom/taobao/artc/internal/ArtcEngineImpl;FFFFFFF)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/artc/internal/ArtcEngineImpl;

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iput p2, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->a:F

    iput p3, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->b:F

    iput p4, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->c:F

    iput p5, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->d:F

    iput p6, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->e:F

    iput p7, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->f:F

    iput p8, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1697
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->a:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v1

    .line 1698
    .local v1, "skinSmooth_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->b:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v2

    .line 1699
    .local v2, "whiten_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->c:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v4

    .line 1700
    .local v4, "wholePink_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->d:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v5

    .line 1701
    .local v5, "shapeHor_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->e:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v6

    .line 1702
    .local v6, "cheekPink_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->f:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v7

    .line 1703
    .local v7, "shapeVer_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    iget v9, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->g:F

    invoke-static {v0, v3, v10, v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5200(Lcom/taobao/artc/internal/ArtcEngineImpl;FFF)F

    move-result v8

    .line 1705
    .local v8, "shapeEye_t":F
    iget-object v0, p0, Lcom/taobao/artc/internal/ArtcEngineImpl$27;->h:Lcom/taobao/artc/internal/ArtcEngineImpl;

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/taobao/artc/internal/ArtcEngineImpl;->access$5300(Lcom/taobao/artc/internal/ArtcEngineImpl;FFFFFFFFF)V

    .line 1706
    return-void
.end method
