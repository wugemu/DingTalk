.class public Lcom/taobao/weex/ui/SimpleComponentHolder;
.super Ljava/lang/Object;
.source "SimpleComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/IFComponentHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleComponentHolder"


# instance fields
.field private final mClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mCreator:Lcom/taobao/weex/ui/ComponentCreator;

.field private mMethodInvokers:Ljava/util/Map;
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

.field private mPropertyInvokers:Ljava/util/Map;
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V
    .locals 0
    .param p2, "customCreator"    # Lcom/taobao/weex/ui/ComponentCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;",
            "Lcom/taobao/weex/ui/ComponentCreator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    .line 111
    iput-object p2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mCreator:Lcom/taobao/weex/ui/ComponentCreator;

    .line 112
    return-void
.end method

.method private declared-synchronized generate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, "SimpleComponentHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Generate Component:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    invoke-static {v1}, Lcom/taobao/weex/ui/SimpleComponentHolder;->getMethods(Ljava/lang/Class;)Landroid/util/Pair;

    move-result-object v0

    .line 134
    .local v0, "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    .line 135
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "methodPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getMethods(Ljava/lang/Class;)Landroid/util/Pair;
    .locals 16
    .param p0, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/Invoker;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v9, "methods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v6, "mInvokers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/weex/bridge/Invoker;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v13, :cond_4

    aget-object v7, v12, v11
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    .local v7, "method":Ljava/lang/reflect/Method;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 148
    .local v2, "annotations":[Ljava/lang/annotation/Annotation;
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v3, v2

    .line 149
    .local v3, "annotationsCount":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 150
    aget-object v1, v2, v5

    .line 151
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_3

    .line 154
    instance-of v14, v1, Lcom/taobao/weex/ui/component/WXComponentProp;

    if-eqz v14, :cond_1

    .line 155
    check-cast v1, Lcom/taobao/weex/ui/component/WXComponentProp;

    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    invoke-interface {v1}, Lcom/taobao/weex/ui/component/WXComponentProp;->name()Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "name":Ljava/lang/String;
    new-instance v14, Lcom/taobao/weex/bridge/MethodInvoker;

    const/4 v15, 0x1

    invoke-direct {v14, v7, v15}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v9, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "annotationsCount":I
    .end local v5    # "i":I
    .end local v10    # "name":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 158
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v3    # "annotationsCount":I
    .restart local v5    # "i":I
    :cond_1
    instance-of v14, v1, Lcom/taobao/weex/annotation/JSMethod;

    if-eqz v14, :cond_3

    .line 159
    move-object v0, v1

    check-cast v0, Lcom/taobao/weex/annotation/JSMethod;

    move-object v8, v0

    .line 160
    .local v8, "methodAnno":Lcom/taobao/weex/annotation/JSMethod;
    invoke-interface {v8}, Lcom/taobao/weex/annotation/JSMethod;->alias()Ljava/lang/String;

    move-result-object v10

    .line 161
    .restart local v10    # "name":Ljava/lang/String;
    const-string/jumbo v14, "_"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 162
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    .line 164
    :cond_2
    new-instance v14, Lcom/taobao/weex/bridge/MethodInvoker;

    invoke-interface {v8}, Lcom/taobao/weex/annotation/JSMethod;->uiThread()Z

    move-result v15

    invoke-direct {v14, v7, v15}, Lcom/taobao/weex/bridge/MethodInvoker;-><init>(Ljava/lang/reflect/Method;Z)V

    invoke-interface {v6, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "annotationsCount":I
    .end local v5    # "i":I
    .end local v8    # "methodAnno":Lcom/taobao/weex/annotation/JSMethod;
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_2

    .line 149
    .restart local v1    # "anno":Ljava/lang/annotation/Annotation;
    .restart local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .restart local v3    # "annotationsCount":I
    .restart local v5    # "i":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 172
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    .end local v2    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v3    # "annotationsCount":I
    .end local v5    # "i":I
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v4

    .line 173
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v4}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 178
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    :goto_3
    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v11

    .line 175
    :catch_2
    move-exception v4

    .line 176
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "SimpleComponentHolder"

    invoke-static {v11, v4}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v7    # "method":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v14

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mCreator:Lcom/taobao/weex/ui/ComponentCreator;

    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/ui/ComponentCreator;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 187
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-object v0

    .line 185
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;

    return-object v0
.end method

.method public declared-synchronized getMethods()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 214
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 210
    .end local v0    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mPropertyInvokers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/bridge/Invoker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadIfNonLazy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mClz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 118
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 119
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v4, v0, Lcom/taobao/weex/annotation/Component;

    if-eqz v4, :cond_1

    .line 120
    check-cast v0, Lcom/taobao/weex/annotation/Component;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lcom/taobao/weex/annotation/Component;->lazyload()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder;->mMethodInvokers:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;->generate()V

    .line 126
    :cond_0
    return-void

    .line 118
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
