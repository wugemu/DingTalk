.class Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;
.super Ljava/lang/Object;
.source "LogReportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

.field final synthetic val$memoryData:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;

.field final synthetic val$verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$verifyId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 109
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 110
    new-instance v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;

    invoke-direct {v2}, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;-><init>()V

    .line 111
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$params:Ljava/util/Map;

    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    .line 112
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;

    move-result-object v1

    .line 113
    iget-boolean v1, v1, Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;->success:Z

    if-nez v1, :cond_1

    .line 115
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6838\u8eab\u5185\u5b58\u6682\u7559\u65e5\u5fd7\u4e0a\u62a5\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u6682\u7559\u65e5\u5fd7\u9700\u8981\u5b58\u5230\u672c\u5730"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getLogFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 117
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u6838\u8eab\u5185\u5b58\u6682\u7559\u65e5\u5fd7\u4e0a\u62a5\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getDispersedLogFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rpc got an RPC exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u6682\u7559\u65e5\u5fd7\u9700\u8981\u5b58\u5230\u672c\u5730"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getLogFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getDispersedLogFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rpc got an exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u6682\u7559\u65e5\u5fd7\u9700\u8981\u5b58\u5230\u672c\u5730"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$verifyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 129
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getLogFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 131
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getDispersedLogFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6682\u7559\u65e5\u5fd7\u9700\u8981\u5b58\u5230\u672c\u5730"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$verifyId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 129
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getLogFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    :goto_2
    throw v0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getDispersedLogFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$1;->val$memoryData:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method
