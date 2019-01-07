.class public Lcom/alivc/component/capture/VideoParam;
.super Ljava/lang/Object;
.source "VideoParam.java"


# instance fields
.field private cameraId:I

.field private currentZoom:I

.field private fps:I

.field private height:I

.field private maxZoom:I

.field private minZoom:I

.field private pushHeight:I

.field private pushWidth:I

.field private rotation:I

.field private width:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I
    .param p4, "cameraId"    # I
    .param p5, "rotation"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/alivc/component/capture/VideoParam;->minZoom:I

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/alivc/component/capture/VideoParam;->currentZoom:I

    .line 16
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->width:I

    .line 17
    iput p2, p0, Lcom/alivc/component/capture/VideoParam;->height:I

    .line 18
    iput p3, p0, Lcom/alivc/component/capture/VideoParam;->fps:I

    .line 19
    iput p4, p0, Lcom/alivc/component/capture/VideoParam;->cameraId:I

    .line 20
    iput p5, p0, Lcom/alivc/component/capture/VideoParam;->rotation:I

    .line 21
    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->cameraId:I

    return v0
.end method

.method public getCurrentZoom()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->currentZoom:I

    return v0
.end method

.method public getFps()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->height:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->maxZoom:I

    return v0
.end method

.method public getMinZoom()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->minZoom:I

    return v0
.end method

.method public getPushHeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->pushHeight:I

    return v0
.end method

.method public getPushWidth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->pushWidth:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->rotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoParam;->width:I

    return v0
.end method

.method public setCameraId(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->cameraId:I

    .line 63
    return-void
.end method

.method public setCurrentZoom(I)V
    .locals 0
    .param p1, "currentZoom"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->currentZoom:I

    .line 103
    return-void
.end method

.method public setFps(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->fps:I

    .line 71
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->height:I

    .line 55
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .param p1, "maxZoom"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->maxZoom:I

    .line 87
    return-void
.end method

.method public setMinZoom(I)V
    .locals 0
    .param p1, "minZoom"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->minZoom:I

    .line 95
    return-void
.end method

.method public setPushHeight(I)V
    .locals 0
    .param p1, "pushHeight"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->pushHeight:I

    .line 51
    return-void
.end method

.method public setPushWidth(I)V
    .locals 0
    .param p1, "pushWidth"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->pushWidth:I

    .line 43
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->rotation:I

    .line 79
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alivc/component/capture/VideoParam;->width:I

    .line 31
    return-void
.end method
