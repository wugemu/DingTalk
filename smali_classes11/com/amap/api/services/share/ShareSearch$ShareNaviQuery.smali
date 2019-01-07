.class public Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/share/ShareSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareNaviQuery"
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;I)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    .line 407
    iput p2, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->b:I

    .line 408
    return-void
.end method


# virtual methods
.method public getFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->a:Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    return-object v0
.end method

.method public getNaviMode()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->b:I

    return v0
.end method
