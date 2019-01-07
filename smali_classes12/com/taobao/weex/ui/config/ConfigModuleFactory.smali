.class public Lcom/taobao/weex/ui/config/ConfigModuleFactory;
.super Ljava/lang/Object;
.source "ConfigModuleFactory.java"

# interfaces
.implements Lcom/taobao/weex/bridge/ModuleFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taobao/weex/common/WXModule;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/bridge/ModuleFactory",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WeexScanConfigRegister"


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mClassName:Ljava/lang/String;

.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private methods:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mClassName"    # Ljava/lang/String;
    .param p3, "methods"    # [Ljava/lang/String;

    .prologue
    .line 57
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassName:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->methods:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigModuleFactory;
    .locals 9
    .param p0, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 131
    if-nez p0, :cond_0

    move-object v5, v6

    .line 148
    :goto_0
    return-object v5

    .line 135
    :cond_0
    :try_start_0
    const-string/jumbo v5, "name"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "className"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v5, "methods"

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 138
    .local v3, "methods":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v5, v6

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 142
    .local v0, "arrays":[Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    const-string/jumbo v5, "WeexScanConfigRegister"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " resolve module "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " className "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " methods "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_3
    new-instance v7, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v7, v4, v1, v5}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    goto :goto_0

    .line 146
    .end local v0    # "arrays":[Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v3    # "methods":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WeexScanConfigRegister"

    invoke-static {v5, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v6

    .line 148
    goto :goto_0
.end method

.method private generateMethodMap()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    const/4 v8, 0x0

    .line 100
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    const-string/jumbo v7, "WeexScanConfigRegister"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "extractMethodNames:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v5, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v3, v10, v9

    .line 107
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    array-length v13, v12

    move v7, v8

    :goto_1
    if-ge v7, v13, :cond_1

    aget-object v1, v12, v7

    .line 108
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_5

    .line 109
    instance-of v14, v1, Lcom/taobao/weex/annotation/JSMethod;

    if-eqz v14, :cond_3

    .line 110
    move-object v0, v1

    check-cast v0, Lcom/taobao/weex/annotation/JSMethod;

    move-object v4, v0

    .line 111
    .local v4, "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    const-string/jumbo v7, "_"

    invoke-interface {v4}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "name":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v4}, Lcom/taobao/weex/annotation/JSMethod;->uiThread()Z

    move-result v12

    invoke-direct {v7, v3, v12}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v4    # "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 111
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v4    # "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    :cond_2
    invoke-interface {v4}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 114
    .end local v4    # "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    :cond_3
    instance-of v14, v1, Lcom/taobao/weex/common/WXModuleAnno;

    if-eqz v14, :cond_5

    .line 115
    move-object v0, v1

    check-cast v0, Lcom/taobao/weex/common/WXModuleAnno;

    move-object v4, v0

    .line 116
    .local v4, "methodAnnotation":Lcom/taobao/weex/common/WXModuleAnno;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v12, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v4}, Lcom/taobao/weex/common/WXModuleAnno;->runOnUIThread()Z

    move-result v13

    invoke-direct {v12, v3, v13}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v5, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 122
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodAnnotation":Lcom/taobao/weex/common/WXModuleAnno;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "[WXModuleManager] extractMethodNames:"

    invoke-static {v7, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    iput-object v5, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mMethodMap:Ljava/util/Map;

    .line 126
    return-void

    .line 107
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildInstance()Lcom/taobao/weex/common/WXModule;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassName:Ljava/lang/String;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;->getModuleClass(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    return-object v0
.end method

.method public buildInstance(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXModule;
    .locals 4
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->buildInstance()Lcom/taobao/weex/common/WXModule;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 92
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getClassLoaderAdapter()Lcom/taobao/weex/adapter/ClassLoaderAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/adapter/ClassLoaderAdapter;->getModuleClass(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    .line 93
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClassLoader:Ljava/lang/ClassLoader;

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    goto :goto_0
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 73
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mMethodMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->generateMethodMap()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->methods:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->methods:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lcom/taobao/weex/ui/config/ConfigModuleFactory;, "Lcom/taobao/weex/ui/config/ConfigModuleFactory<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
