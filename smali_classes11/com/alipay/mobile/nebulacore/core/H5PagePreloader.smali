.class public final Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;
.super Ljava/lang/Object;
.source "H5PagePreloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PagePreloader"

.field private static sIsAbandoned:Z

.field private static sIsActivityOnTarget:Z

.field private static sPrecreatedActivity:Landroid/app/Activity;

.field private static sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

.field private static sPreloadedPageFactory:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

.field private static sUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsAbandoned:Z

    .line 37
    sput-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsActivityOnTarget:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static abandon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string/jumbo v0, "H5PagePreloader"

    const-string/jumbo v1, "abandon preload h5page"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsAbandoned:Z

    .line 121
    sput-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPreloadedPageFactory:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 122
    sput-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 123
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->preloadH5Page()V

    return-void
.end method

.method static synthetic access$100()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 31
    sput-object p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsAbandoned:Z

    return v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .prologue
    .line 31
    sput-object p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPreloadedPageFactory:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    return-object p0
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .prologue
    .line 31
    sput-object p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->logH5PreloadException(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->getCurrentInstrumentation()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentInstrumentation()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 235
    :try_start_0
    const-string/jumbo v6, "android.app.ActivityThread"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 236
    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "currentActivityThread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 237
    .local v2, "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 238
    const/4 v6, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "currentActivityThread":Ljava/lang/Object;
    const-string/jumbo v6, "mInstrumentation"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 240
    .local v3, "mInstrumentationField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 246
    .end local v1    # "currentActivityThread":Ljava/lang/Object;
    .end local v2    # "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    .end local v3    # "mInstrumentationField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 243
    :catch_0
    move-exception v5

    .line 244
    .local v5, "thr":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5PagePreloader"

    const-string/jumbo v7, "getCurrentInstrumentation error!"

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getPreloadedViewHolder(Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 8
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 163
    :try_start_0
    sget-boolean v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsActivityOnTarget:Z

    if-nez v6, :cond_0

    move-object v4, v5

    .line 186
    :goto_0
    return-object v4

    .line 166
    :cond_0
    sget-boolean v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsAbandoned:Z

    if-nez v6, :cond_1

    sget-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    if-nez v6, :cond_2

    :cond_1
    move-object v4, v5

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    sget-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v0

    .line 170
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    if-nez v0, :cond_3

    move-object v4, v5

    .line 171
    goto :goto_0

    .line 173
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 174
    .local v2, "time":J
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setUpPage(Landroid/os/Bundle;)V

    .line 175
    const-string/jumbo v6, "create_page"

    const-string/jumbo v7, "h5Page.setUpPage"

    invoke-static {v6, v7, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 176
    sget-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPreloadedPageFactory:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    sget-object v7, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-virtual {v6, v7, p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->setUpPage(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/os/Bundle;)V

    .line 177
    const-string/jumbo v6, "create_page"

    const-string/jumbo v7, "h5PageFactory.setUpPage"

    invoke-static {v6, v7, v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5TimeUtil;->timeLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 178
    sget-object v4, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 179
    .local v4, "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    const/4 v6, 0x0

    sput-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedViewHolder:Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 180
    const/4 v6, 0x0

    sput-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPreloadedPageFactory:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 181
    const/4 v6, 0x0

    sput-object v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local v2    # "time":J
    .end local v4    # "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5PagePreloader"

    const-string/jumbo v7, "set up preloaded H5Page error!"

    invoke-static {v6, v7, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const-string/jumbo v6, "set_up_page_error"

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->logH5PreloadException(Ljava/lang/String;)V

    move-object v4, v5

    .line 186
    goto :goto_0
.end method

.method private static logH5PreloadException(Ljava/lang/String;)V
    .locals 6
    .param p0, "exception"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    const-string/jumbo v2, "com.alipay.mobile.liteprocess.perf.PerformanceLogger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 153
    .local v1, "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "logH5PreloadException"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 154
    .local v0, "logMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "logMethod":Ljava/lang/reflect/Method;
    .end local v1    # "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static onH5ActivityCreated(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;

    if-eq p0, v2, :cond_3

    .line 129
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->abandon()V

    .line 130
    const/4 v2, 0x0

    sput-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;

    .line 131
    instance-of v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_0

    .line 132
    const-string/jumbo v2, "activity_not_start"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->logH5PreloadException(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->getCurrentInstrumentation()Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "quinoxInstrumentation":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 136
    const-string/jumbo v2, "H5PagePreloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "instrumentation class type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1
    const-string/jumbo v2, "H5PagePreloader"

    const-string/jumbo v3, "onH5ActivityCreated not hit"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v1    # "quinoxInstrumentation":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 140
    :cond_3
    sget-object v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sPrecreatedActivity:Landroid/app/Activity;

    if-ne p0, v2, :cond_2

    .line 142
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sIsActivityOnTarget:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "H5PagePreloader"

    const-string/jumbo v3, "onH5ActivityCreated error!"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static precreateH5Activity()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method private static preloadH5Page()V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "H5PagePreloader"

    const-string/jumbo v1, "preloadH5Page enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-boolean v0, Liog;->a:Z

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->registerUcInitSuccessReceiver()V

    .line 92
    :cond_0
    return-void
.end method

.method private static registerUcInitSuccessReceiver()V
    .locals 4

    .prologue
    .line 65
    const-string/jumbo v0, "H5PagePreloader"

    const-string/jumbo v1, "registerUcInitSuccessReceiver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    invoke-static {}, Lcom/alipay/mobile/framework/b;->a()Lcom/alipay/mobile/framework/b;

    invoke-static {}, Lcom/alipay/mobile/framework/b;->d()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->sUcInitSuccessReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "h5_action_uc_init_finish"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method public static startPreload()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "H5PagePreloader"

    const-string/jumbo v1, "startPreload enter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
