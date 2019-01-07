.class public Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/share/ShareSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareWalkRouteQuery"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    .line 464
    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->b:I

    .line 465
    return-void
.end method


# virtual methods
.method public getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object v0
.end method

.method public getWalkMode()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->b:I

    return v0
.end method
