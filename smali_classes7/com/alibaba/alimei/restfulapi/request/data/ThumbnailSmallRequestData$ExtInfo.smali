.class public Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;
.super Ljava/lang/Object;
.source "ThumbnailSmallRequestData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtInfo"
.end annotation


# instance fields
.field private maxSize:I

.field private minSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "minSize"    # I
    .param p2, "maxSize"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;->maxSize:I

    .line 82
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;->minSize:I

    .line 83
    return-void
.end method


# virtual methods
.method public getMaxSize()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;->maxSize:I

    return v0
.end method

.method public getMinSize()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;->minSize:I

    return v0
.end method

.method public setMaxSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;->maxSize:I

    .line 95
    return-void
.end method

.method public setMinSize(I)V
    .locals 0
    .param p1, "minSize"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ThumbnailSmallRequestData$ExtInfo;->minSize:I

    .line 103
    return-void
.end method
