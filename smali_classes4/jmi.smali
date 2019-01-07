.class public Ljmi;
.super Landroid/view/TextureView;
.source "GTextureView.java"


# instance fields
.field public a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1063
    new-instance v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    invoke-direct {v0, p0, p2}, Lcom/taobao/gcanvas/surface/GTextureViewCallback;-><init>(Landroid/view/TextureView;Ljava/lang/String;)V

    iput-object v0, p0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    .line 1064
    iget-object v0, p0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    invoke-virtual {p0, v0}, Ljmi;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljmi;->setOpaque(Z)V

    .line 1066
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljmi;->setLayerType(ILandroid/graphics/Paint;)V

    .line 22
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public getCanvasKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    .line 2156
    iget-object v0, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->a:Ljava/lang/String;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "on window visibility changed.visibility="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljmj;->c(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    .line 2060
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2061
    iput-object p1, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->b:Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method
