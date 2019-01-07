.class public Lcom/taobao/weex/common/WXJSExceptionInfo;
.super Ljava/lang/Object;
.source "WXJSExceptionInfo.java"


# instance fields
.field private mBundleUrl:Ljava/lang/String;

.field private mErrCode:Lcom/taobao/weex/common/WXErrorCode;

.field private mException:Ljava/lang/String;

.field private mExtParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFunction:Ljava/lang/String;

.field private mInstanceId:Ljava/lang/String;

.field private mJsFrameworkVersion:Ljava/lang/String;

.field private mWeexVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "bundleUrl"    # Ljava/lang/String;
    .param p3, "errCode"    # Lcom/taobao/weex/common/WXErrorCode;
    .param p4, "function"    # Ljava/lang/String;
    .param p5, "exception"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p6, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mWeexVersion:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mJsFrameworkVersion:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    .line 68
    iput-object p4, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method public getBundleUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Lcom/taobao/weex/common/WXErrorCode;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    return-object v0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    return-object v0
.end method

.method public getFunction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFrameworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mJsFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getWeexVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mWeexVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleUrl"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setErrCode(Lcom/taobao/weex/common/WXErrorCode;)V
    .locals 0
    .param p1, "errCode"    # Lcom/taobao/weex/common/WXErrorCode;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    .line 95
    return-void
.end method

.method public setException(Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setExtParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public setFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "WeexSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mWeexVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " JSFrameworkVersion:"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mJsFrameworkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " instanceId:"

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " bundleUrl:"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mBundleUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " errCode:"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mErrCode:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " function:"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mFunction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " exception:"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mException:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " extParams:"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXJSExceptionInfo;->mExtParams:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
