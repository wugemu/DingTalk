.class public Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;
.super Ljava/lang/Object;
.source "SpatialRelationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/utils/SpatialRelationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DPoint"
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->x:D

    .line 120
    iput-wide p3, p0, Lcom/amap/api/maps/utils/SpatialRelationUtil$DPoint;->y:D

    .line 121
    return-void
.end method
