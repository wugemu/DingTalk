.class Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;
.super Ljava/lang/Object;
.source "VerifyLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

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
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u6838\u8eab\u57cb\u70b9\u5668\u542f\u52a8"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;

    move-object v9, v0

    .line 140
    iget-object v1, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    const-string/jumbo v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v2, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    iget-object v4, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    iget-object v7, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v8, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$600(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$700(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$800(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V

    .line 148
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->reportDispersedLog(Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 150
    :cond_1
    :try_start_3
    iget-object v1, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    const-string/jumbo v2, "verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v2, "UC-MobileIC-150810-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$900(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;)V

    .line 154
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getAndReportData()V

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v2, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->type:Ljava/lang/String;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    iget-object v4, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    iget-object v7, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v8, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    monitor-exit p0

    goto/16 :goto_0

    .line 159
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1100(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 162
    :cond_3
    iget-object v1, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v2, "UC-MobileIC-170823-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    monitor-exit p0

    goto/16 :goto_0

    .line 164
    :cond_4
    iget-object v1, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v2, "UC-MobileIC-150810-4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    iget-object v7, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param2:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1, v7}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V

    .line 167
    iget-object v8, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v2, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    iget-object v5, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v6, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1300(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v7, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    invoke-static {v1, v7}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1500(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u7ed3\u675f\u540e\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u5220\u9664\u5bf9\u5e94\u6682\u7559\u65e5\u5fd7"

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->remove(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->reportBehaviorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v2, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->userCaseID:Ljava/lang/String;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    iget-object v5, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->param3:Ljava/lang/String;

    iget-object v6, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->extParams:Ljava/util/Map;

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1600(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1000(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    monitor-exit p0

    goto/16 :goto_0

    .line 179
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1200(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$1;->this$0:Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;

    iget-object v3, v9, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger$VerifyLogTask;->verifyId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;->access$1400(Lcom/alipay/mobile/verifyidentity/log/behavior/VerifyLogger;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
