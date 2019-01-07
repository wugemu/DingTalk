.class final Lcom/alipay/mobile/verifyidentity/utils/a;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(ZLjava/util/HashMap;)V
    .locals 1

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

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
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    :try_start_0
    const-string/jumbo v1, "ReportHelper"

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    const-string/jumbo v0, ""

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->a:Z

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    monitor-exit v1

    .line 135
    :goto_0
    return-void

    .line 110
    :cond_0
    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 111
    const-string/jumbo v0, "ReportHelper"

    const-string/jumbo v2, "5s\u7b49\u5f85\u7ed3\u675f\uff0c\u5f00\u59cb\u51c6\u5907\u4e0a\u62a5"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 113
    new-instance v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;

    invoke-direct {v2}, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;-><init>()V

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    .line 115
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a()Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-boolean v4, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->a:Z

    invoke-static {v3, v4}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    monitor-exit v1

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v1, "ReportHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :cond_1
    :try_start_3
    iget-object v4, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    const-string/jumbo v5, "envData"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iget-object v4, v2, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/utils/a;->b:Ljava/util/HashMap;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    :cond_2
    const-string/jumbo v4, "ReportHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[ENV_INFO_FOR_REPORTER] : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;

    move-result-object v0

    .line 125
    const-string/jumbo v2, "ReportHelper"

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;)V

    .line 128
    sget-object v0, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "md5"

    invoke-static {v3, v0}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/utils/CipherHelper;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/utils/ReportHelper;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
