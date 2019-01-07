.class public Lcom/ali/user/enterprise/base/provider/DataProviderFactory;
.super Ljava/lang/Object;
.source "DataProviderFactory.java"


# static fields
.field private static applicationContext:Landroid/content/Context;

.field private static dataProvider:Lcom/ali/user/enterprise/base/provider/IDataProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getApplicationContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    monitor-exit v1

    return-object v0

    .line 34
    :cond_0
    :try_start_1
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->dataProvider:Lcom/ali/user/enterprise/base/provider/IDataProvider;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->dataProvider:Lcom/ali/user/enterprise/base/provider/IDataProvider;

    invoke-interface {v0}, Lcom/ali/user/enterprise/base/provider/IDataProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->applicationContext:Landroid/content/Context;

    .line 39
    :goto_1
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->applicationContext:Landroid/content/Context;

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {}, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->getSystemApp()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->applicationContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getDataProvider()Lcom/ali/user/enterprise/base/provider/IDataProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->dataProvider:Lcom/ali/user/enterprise/base/provider/IDataProvider;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;

    invoke-direct {v0}, Lcom/ali/user/enterprise/base/provider/DefaultAppProvider;-><init>()V

    .line 24
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->dataProvider:Lcom/ali/user/enterprise/base/provider/IDataProvider;

    goto :goto_0
.end method

.method private static getSystemApp()Landroid/app/Application;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 44
    :try_start_0
    const-string/jumbo v7, "android.app.ActivityThread"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 46
    .local v0, "activitythread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "currentActivityThread"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 47
    .local v5, "m_currentActivityThread":Ljava/lang/reflect/Method;
    const-string/jumbo v7, "mInitialApplication"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 48
    .local v4, "f_mInitialApplication":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "app":Ljava/lang/Object;
    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "app":Ljava/lang/Object;
    .end local v2    # "current":Ljava/lang/Object;
    .end local v4    # "f_mInitialApplication":Ljava/lang/reflect/Field;
    .end local v5    # "m_currentActivityThread":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v6

    .line 57
    goto :goto_0
.end method

.method public static setDataProvider(Lcom/ali/user/enterprise/base/provider/IDataProvider;)V
    .locals 0
    .param p0, "dataProvider"    # Lcom/ali/user/enterprise/base/provider/IDataProvider;

    .prologue
    .line 28
    sput-object p0, Lcom/ali/user/enterprise/base/provider/DataProviderFactory;->dataProvider:Lcom/ali/user/enterprise/base/provider/IDataProvider;

    .line 29
    return-void
.end method
