.class public Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "AvatarUploadRequestData.java"


# instance fields
.field private sideLen:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getSideLen()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;->sideLen:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;->y:I

    return v0
.end method

.method public setSideLen(I)V
    .locals 0
    .param p1, "sideLen"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;->sideLen:I

    .line 40
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;->x:I

    .line 24
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/AvatarUploadRequestData;->y:I

    .line 32
    return-void
.end method
