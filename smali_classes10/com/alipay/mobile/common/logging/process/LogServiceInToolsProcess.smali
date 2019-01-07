.class public Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;
.super Landroid/app/IntentService;
.source "LogServiceInToolsProcess.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "LogServiceInTools"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 135
    const-string/jumbo v0, "channelId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->k(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v0, "releaseType"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    const-string/jumbo v0, "releaseCode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    const-string/jumbo v0, "productID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_3
    const-string/jumbo v0, "productVersion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    const-string/jumbo v0, "userID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->p(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_5
    const-string/jumbo v0, "clientID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_6
    const-string/jumbo v0, "utdid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->r(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_7
    const-string/jumbo v0, "language"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->s(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_8
    const-string/jumbo v0, "hotpatchVersion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_9
    const-string/jumbo v0, "bundleVersion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 166
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->u(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_a
    const-string/jumbo v0, "birdNestVersion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_b
    const-string/jumbo v0, "packageId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 172
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_c
    const-string/jumbo v0, "userSessionId"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 175
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->p(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_d
    const-string/jumbo v0, "logHost"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0, p1}, Lijz;->x(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_e
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "LogServiceInTools"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "not mapping, type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 32
    sget-boolean v0, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->a:Z

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->a:Z

    .line 35
    invoke-static {p0}, Lika;->a(Landroid/content/Context;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2025
    invoke-static {}, Liui;->a()V

    .line 49
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const-string/jumbo v1, "applog"

    invoke-interface {v0, v1, v2}, Lijz;->b(Ljava/lang/String;Z)V

    .line 50
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lijz;->b(Ljava/lang/String;Z)V

    .line 51
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 52
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 3025
    invoke-static {}, Liui;->a()V

    .line 58
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.upload.mdaplog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const-string/jumbo v0, "logCategory"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v1

    invoke-interface {v1, v0}, Lijz;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.UPDATE_LOG_STRATEGY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    const-string/jumbo v0, "strategy"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v1

    invoke-interface {v1, v0}, Lijz;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.UPDATE_LOG_CONTEXT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    const-string/jumbo v0, "type"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "LogServiceInTools"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", type: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.UPDATE_LOG_CONTEXT_BATCH"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 92
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v3, "LogServiceInTools"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_5
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v0

    invoke-interface {v0}, Lijz;->r()V

    goto/16 :goto_0

    .line 100
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.TRACE_NATIVE_CRASH"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 102
    const-string/jumbo v0, "filePath"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "callStack"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string/jumbo v3, "isBoot"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 105
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lijz;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 108
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".monitor.action.DYNAMIC_RELEASE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 110
    const-string/jumbo v1, "isForce"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 112
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_8

    .line 113
    const-string/jumbo v0, "hotpatchVersion"

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/process/LogServiceInToolsProcess;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.DynamicReleaseProcessor"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 118
    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 119
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 121
    const-string/jumbo v4, "start"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 122
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "LogServiceInTools"

    invoke-interface {v1, v2, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 129
    :cond_9
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v2, "LogServiceInTools"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no such action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1025
    invoke-static {}, Liui;->a()V

    .line 43
    invoke-super {p0}, Landroid/app/IntentService;->onLowMemory()V

    .line 44
    return-void
.end method
