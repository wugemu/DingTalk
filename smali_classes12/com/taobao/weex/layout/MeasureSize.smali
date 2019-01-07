.class public Lcom/taobao/weex/layout/MeasureSize;
.super Ljava/lang/Object;
.source "MeasureSize.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/taobao/weex/layout/MeasureSize;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/taobao/weex/layout/MeasureSize;->width:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/taobao/weex/layout/MeasureSize;->height:F

    .line 41
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/taobao/weex/layout/MeasureSize;->width:F

    .line 33
    return-void
.end method
