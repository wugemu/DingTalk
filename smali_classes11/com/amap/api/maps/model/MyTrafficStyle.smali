.class public Lcom/amap/api/maps/model/MyTrafficStyle;
.super Ljava/lang/Object;
.source "MyTrafficStyle.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const v0, -0xff5df7

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->a:I

    .line 14
    const v0, -0x8af8

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->b:I

    .line 15
    const v0, -0x15fcee

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->c:I

    .line 16
    const v0, -0x6dfff6

    iput v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->d:I

    return-void
.end method


# virtual methods
.method public getCongestedColor()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->c:I

    return v0
.end method

.method public getSeriousCongestedColor()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->d:I

    return v0
.end method

.method public getSlowColor()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->b:I

    return v0
.end method

.method public getSmoothColor()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->a:I

    return v0
.end method

.method public setCongestedColor(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->c:I

    .line 76
    return-void
.end method

.method public setSeriousCongestedColor(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->d:I

    .line 96
    return-void
.end method

.method public setSlowColor(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->b:I

    .line 56
    return-void
.end method

.method public setSmoothColor(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/amap/api/maps/model/MyTrafficStyle;->a:I

    .line 36
    return-void
.end method
