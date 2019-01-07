.class public final Lxh;
.super Ljava/lang/Object;
.source "ErrorCodeProcess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 2
    .param p0, "errorCode"    # J

    .prologue
    .line 13
    const-wide/32 v0, 0x103b461

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 14
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 15
    :cond_0
    const-wide/32 v0, 0x103b460

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 16
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_1
    const-wide/32 v0, 0x103b465    # 8.409E-317

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 18
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteRightError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    goto :goto_0

    .line 19
    :cond_2
    const-wide/32 v0, 0x103c018

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 20
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteNotFoundError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    goto :goto_0
.end method
