.class public Lcom/alibaba/lightapp/runtime/monitor/model/JsError;
.super Ljava/lang/Object;
.source "JsError.java"


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private lineNumber:I

.field private sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->lineNumber:I

    return v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->errorMsg:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setLineNumber(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->lineNumber:I

    .line 34
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/JsError;->sourceId:Ljava/lang/String;

    .line 26
    return-void
.end method
