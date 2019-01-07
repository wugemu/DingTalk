.class public Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;
.super Landroid/app/Service;
.source "DDEudemonService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    const/16 v9, 0xa

    shr-long v6, v10, v9

    .line 221
    .local v6, "totalMemory":J
    invoke-static {}, Lcom/alibaba/doraemon/utils/MemoryUtil;->getHeapDalvik()[J

    move-result-object v8

    .line 223
    .local v8, "usedMemory":[J
    long-to-float v10, v6

    .line 2270
    const-class v9, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v9}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v11, "dd_base"

    const-string/jumbo v12, "process_resume_memory_level"

    .line 2271
    invoke-interface {v9, v11, v12}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v9

    .line 2272
    if-nez v9, :cond_0

    .line 2273
    const/16 v9, 0x3c

    .line 223
    :goto_0
    int-to-float v9, v9

    const/high16 v11, 0x42c80000    # 100.0f

    div-float/2addr v9, v11

    mul-float v2, v10, v9

    .line 226
    .local v2, "memoryLevel":F
    const-string/jumbo v9, "dingtalkbase"

    const-string/jumbo v10, ""

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "DDEudemonService to resume usedMemory="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v14, v8, v13

    .line 227
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " memoryLevel="

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v9, 0x1

    aget-wide v10, v8, v9

    long-to-float v9, v10

    cmpl-float v9, v9, v2

    if-ltz v9, :cond_1

    .line 229
    const/4 v9, 0x1

    .line 253
    :goto_1
    return v9

    .line 2275
    .end local v2    # "memoryLevel":F
    :cond_0
    invoke-interface {v9}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 2276
    invoke-static {v9}, Ligb;->f(Ljava/lang/String;)I

    move-result v9

    goto :goto_0

    .line 2282
    .restart local v2    # "memoryLevel":F
    :cond_1
    const-class v9, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v9}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v10, "dd_base"

    const-string/jumbo v11, "process_resume_memory_value"

    .line 2283
    invoke-interface {v9, v10, v11}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v9

    .line 2284
    if-nez v9, :cond_2

    .line 2285
    const/16 v3, 0x3c

    .line 234
    .local v3, "memoryThreshold":I
    :goto_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    const/16 v9, 0x14

    shr-long v0, v10, v9

    .line 236
    .local v0, "javaHeap":J
    const-string/jumbo v9, "dingtalkbase"

    const-string/jumbo v10, ""

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "DDEudemonService to resume javaheap="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 237
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 236
    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    int-to-long v10, v3

    cmp-long v9, v0, v10

    if-lez v9, :cond_3

    .line 239
    const/4 v9, 0x1

    goto :goto_1

    .line 2287
    .end local v0    # "javaHeap":J
    .end local v3    # "memoryThreshold":I
    :cond_2
    invoke-interface {v9}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 2288
    invoke-static {v9}, Ligb;->f(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 243
    .restart local v0    # "javaHeap":J
    .restart local v3    # "memoryThreshold":I
    :cond_3
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v10

    const/16 v9, 0x14

    shr-long v4, v10, v9

    .line 245
    .local v4, "nativeHeap":J
    const-string/jumbo v9, "dingtalkbase"

    const-string/jumbo v10, ""

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "DDEudemonService to resume nativeHeap="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 246
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 245
    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    int-to-long v10, v3

    cmp-long v9, v4, v10

    if-lez v9, :cond_4

    .line 250
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 253
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    .prologue
    const/4 v1, 0x1

    .line 3258
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dd_base"

    const-string/jumbo v3, "process_resume_switch"

    .line 3259
    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 3260
    if-nez v0, :cond_0

    move v0, v1

    .line 3264
    :goto_0
    return v0

    .line 3263
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 3264
    invoke-static {v0}, Ligb;->f(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 43
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 68
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-static {}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->getInstance()Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$1;-><init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger;->addTriggerListener(Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;)V

    .line 142
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 146
    if-eqz p1, :cond_0

    .line 147
    const-string/jumbo v3, "resume_service_command"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "cmd":I
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, ""

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "DDEudemonService cmd="

    aput-object v6, v5, v8

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-ne v10, v0, :cond_1

    .line 153
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "DD"

    const-string/jumbo v5, "ProcessResume"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 156
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/alibaba/android/dingtalkbase/service/DDBabysitterService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v2, "stopIntent":Landroid/content/Intent;
    const-string/jumbo v3, "resume_service_command"

    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, ""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "DDEudemonService to resume pid="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 162
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "cmd":I
    .end local v2    # "stopIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3

    .line 163
    .restart local v0    # "cmd":I
    .restart local v2    # "stopIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "dingtalkbase"

    const/4 v4, 0x0

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "start DDBabysitterService failed, error="

    aput-object v6, v5, v8

    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "stopIntent":Landroid/content/Intent;
    :cond_1
    if-ne v11, v0, :cond_0

    .line 168
    const-string/jumbo v3, "dingtalkbase"

    const-string/jumbo v4, ""

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "DDEudemonService to kill process! pid="

    aput-object v6, v5, v8

    .line 169
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string/jumbo v3, "THREAD"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1295
    const-string/jumbo v4, "DDEudemonService"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1296
    invoke-interface {v3, v9}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1298
    new-instance v4, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$3;-><init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 174
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$2;-><init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)V

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
