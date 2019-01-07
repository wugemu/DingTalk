.class public Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;
.super Ljava/lang/Object;
.source "ReceivedError.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mErrorCode:I

.field private mFailingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->mErrorCode:I

    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->mFailingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->mDescription:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->mErrorCode:I

    .line 18
    return-void
.end method

.method public setFailingUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;->mFailingUrl:Ljava/lang/String;

    .line 34
    return-void
.end method
