.class public Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
.super Ljava/lang/Exception;
.source "AlimeiSdkException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

.field private final mApiError:Lcom/alibaba/alimei/framework/SDKError;

.field private mCommonProtocolError:Ljava/lang/String;

.field private mIsCommonProtocolError:Z

.field private mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

.field private mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/framework/SDKError;)V
    .locals 2
    .param p1, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/SDKError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .line 21
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .line 22
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .line 23
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 2
    .param p1, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .line 21
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .line 22
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .line 23
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    .line 45
    iput-object p2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 3
    .param p1, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-object v2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .line 21
    iput-object v2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .line 22
    iput-object v2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .line 23
    iput-object v2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    .line 39
    iput-object p2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "commonProtocolErrorMsg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)V

    .line 50
    iput-object p2, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mIsCommonProtocolError:Z

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/SDKError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .line 21
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .line 22
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .line 23
    iput-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    .line 34
    return-void
.end method

.method public static buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;

    .prologue
    .line 55
    new-instance v0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;-><init>(Lcom/alibaba/alimei/framework/SDKError;)V

    return-object v0
.end method

.method public static buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p1, "commonProtoclError"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    new-instance v0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "apiError"    # Lcom/alibaba/alimei/framework/SDKError;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    new-instance v0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 2
    .param p0, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    .prologue
    .line 74
    new-instance v0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v0, v1, p0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V

    return-object v0
.end method

.method public static buildSdkException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 4
    .param p0, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    .prologue
    .line 63
    new-instance v2, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->RpcBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v2, v3, p0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V

    .line 64
    .local v2, "ex":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getErrorData()Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;

    move-result-object v0

    .line 65
    .local v0, "data":Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;-><init>()V

    .line 67
    .local v1, "error":Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;
    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/response/data/ErrorData;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;->setSessionId(Ljava/lang/String;)V

    .line 68
    iput-object v1, v2, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .line 70
    .end local v1    # "error":Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getApiError()Lcom/alibaba/alimei/framework/SDKError;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/exception/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mCommonProtocolError:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExceptionData()Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    return-object v0
.end method

.method public getRpcBusinessError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRpcResultCode()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v0

    goto :goto_0
.end method

.method public getRpcResultMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCommonProtocolError()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mIsCommonProtocolError:Z

    return v0
.end method

.method public isHttpStatusError()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->isHttpStatusError()Z

    move-result v0

    goto :goto_0
.end method

.method public isNetworkError()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 101
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mNetworkException:Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRpcBusinessError()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->RpcBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    iget-object v1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mApiError:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mServiceException:Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExceptionData(Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;)V
    .locals 0
    .param p1, "exceptionData"    # Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->exceptionData:Lcom/alibaba/alimei/framework/exception/ExceptionDataModel;

    .line 199
    return-void
.end method

.method public setIsCommonProtocolError(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->mIsCommonProtocolError:Z

    .line 167
    return-void
.end method
