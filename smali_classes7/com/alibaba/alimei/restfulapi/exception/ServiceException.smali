.class public Lcom/alibaba/alimei/restfulapi/exception/ServiceException;
.super Ljava/lang/Exception;
.source "ServiceException.java"


# static fields
.field private static final ERROR_FORMAT:Ljava/lang/String; = "[errorCode:%s, errorDescription: %s]"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorData:Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

.field private httpStatusError:Z

.field private resultCode:I

.field private resultMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Z)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultMsg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;
    .param p4, "isHttpStatusError"    # Z

    .prologue
    .line 41
    const-string/jumbo v0, "[errorCode:%s, errorDescription: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->resultCode:I

    .line 43
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->resultMsg:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultMsg"    # Ljava/lang/String;
    .param p3, "isHttpStatusError"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public getErrorData()Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->errorData:Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->resultCode:I

    return v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpStatusError()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->httpStatusError:Z

    return v0
.end method

.method public setErrorData(Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;)V
    .locals 0
    .param p1, "errorData"    # Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->errorData:Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    .line 91
    return-void
.end method

.method public setHttpStatusError(Z)V
    .locals 0
    .param p1, "httpStatusError"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->httpStatusError:Z

    .line 57
    return-void
.end method

.method public setResultCode(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->resultCode:I

    .line 69
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->resultMsg:Ljava/lang/String;

    .line 80
    return-void
.end method
