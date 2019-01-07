.class public Lcom/taobao/weex/common/TypeModuleFactory;
.super Ljava/lang/Object;
.source "TypeModuleFactory.java"

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
.field public static final TAG:Ljava/lang/String; = "TypeModuleFactory"


# instance fields
.field mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mMethodMap:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/taobao/weex/common/TypeModuleFactory;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mClazz:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method private generateMethodMap()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/common/TypeModuleFactory;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    const/4 v8, 0x0

    .line 48
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 49
    const-string/jumbo v7, "TypeModuleFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "extractMethodNames:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v5, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    move v9, v8

    :goto_0
    if-ge v9, v11, :cond_4

    aget-object v3, v10, v9

    .line 55
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    array-length v13, v12

    move v7, v8

    :goto_1
    if-ge v7, v13, :cond_1

    aget-object v1, v12, v7

    .line 56
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_5

    .line 57
    instance-of v14, v1, Lcom/taobao/weex/annotation/JSMethod;

    if-eqz v14, :cond_3

    .line 58
    move-object v0, v1

    check-cast v0, Lcom/taobao/weex/annotation/JSMethod;

    move-object v4, v0

    .line 59
    .local v4, "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    const-string/jumbo v7, "_"

    invoke-interface {v4}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "name":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v4}, Lcom/taobao/weex/annotation/JSMethod;->uiThread()Z

    move-result v12

    invoke-direct {v7, v3, v12}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v4    # "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    .line 59
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v4    # "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    :cond_2
    invoke-interface {v4}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 62
    .end local v4    # "methodAnnotation":Lcom/taobao/weex/annotation/JSMethod;
    :cond_3
    instance-of v14, v1, Lcom/taobao/weex/common/WXModuleAnno;

    if-eqz v14, :cond_5

    .line 63
    move-object v0, v1

    check-cast v0, Lcom/taobao/weex/common/WXModuleAnno;

    move-object v4, v0

    .line 64
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

    .line 70
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "methodAnnotation":Lcom/taobao/weex/common/WXModuleAnno;
    :catch_0
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "[WXModuleManager] extractMethodNames:"

    invoke-static {v7, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    iput-object v5, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mMethodMap:Ljava/util/Map;

    .line 74
    return-void

    .line 55
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method


# virtual methods
.method public buildInstance()Lcom/taobao/weex/common/WXModule;
    .locals 1
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

    .prologue
    .line 79
    .local p0, "this":Lcom/taobao/weex/common/TypeModuleFactory;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXModule;

    return-object v0
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    .local p0, "this":Lcom/taobao/weex/common/TypeModuleFactory;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mMethodMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/taobao/weex/common/TypeModuleFactory;->generateMethodMap()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    .local p0, "this":Lcom/taobao/weex/common/TypeModuleFactory;, "Lcom/taobao/weex/common/TypeModuleFactory<TT;>;"
    iget-object v1, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mMethodMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/taobao/weex/common/TypeModuleFactory;->generateMethodMap()V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/common/TypeModuleFactory;->mMethodMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 88
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method
