.class public Lcom/alibaba/alimei/restfulapi/response/data/VoipStatus;
.super Ljava/lang/Object;
.source "VoipStatus.java"


# instance fields
.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/VoipStatus;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/VoipStatus;->status:I

    .line 34
    return-void
.end method
