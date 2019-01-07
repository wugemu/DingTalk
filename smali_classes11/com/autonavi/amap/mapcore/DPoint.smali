.class public Lcom/autonavi/amap/mapcore/DPoint;
.super Ljava/lang/Object;
.source "DPoint.java"


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    .line 11
    iput-wide p3, p0, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    .line 12
    return-void
.end method
