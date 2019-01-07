.class public Lcom/taobao/weex/ui/action/GraphicSize;
.super Ljava/lang/Object;
.source "GraphicSize.java"


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    .line 28
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    .line 29
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    .line 45
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 36
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    .line 37
    return-void
.end method

.method public update(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    .line 49
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    .line 50
    return-void
.end method
