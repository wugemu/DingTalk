.class public Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;
.super Ljava/lang/Object;
.source "FeedbackUploadResult.java"


# instance fields
.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;->resultCode:I

    .line 25
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/FeedbackUploadResult;->resultMsg:Ljava/lang/String;

    .line 17
    return-void
.end method
