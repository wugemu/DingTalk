.class public Lcom/taobao/weex/ui/action/GraphicPosition;
.super Ljava/lang/Object;
.source "GraphicPosition.java"


# instance fields
.field private mBottom:F

.field private mLeft:F

.field private mRight:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 30
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 31
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    .line 32
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    .line 33
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0
    .param p1, "bottom"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    .line 65
    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 41
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .param p1, "right"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    .line 57
    return-void
.end method

.method public setTop(F)V
    .locals 0
    .param p1, "top"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 49
    return-void
.end method

.method public update(FFFF)V
    .locals 0
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 70
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    .line 71
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 72
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    .line 73
    return-void
.end method
