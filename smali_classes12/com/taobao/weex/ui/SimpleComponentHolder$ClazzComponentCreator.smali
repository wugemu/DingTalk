.class public Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;
.super Ljava/lang/Object;
.source "SimpleComponentHolder.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/SimpleComponentHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClazzComponentCreator"
.end annotation


# instance fields
.field private final mCompClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
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
            "<+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method private loadConstructor()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    iget-object v0, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mCompClz:Ljava/lang/Class;

    .line 67
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/taobao/weex/WXSDKInstance;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/taobao/weex/ui/component/WXVContainer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/taobao/weex/ui/action/BasicComponentData;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    :goto_0
    iput-object v1, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 83
    return-void

    .line 69
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    :catch_0
    move-exception v2

    const-string/jumbo v2, "ClazzComponentCreator"

    const-string/jumbo v3, "Use deprecated component constructor"

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v2, 0x4

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/taobao/weex/WXSDKInstance;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/taobao/weex/ui/component/WXVContainer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/taobao/weex/ui/action/BasicComponentData;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    goto :goto_0

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    :catch_1
    move-exception v2

    .line 76
    const/4 v2, 0x5

    :try_start_2
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/taobao/weex/WXSDKInstance;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/taobao/weex/ui/component/WXVContainer;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lcom/taobao/weex/ui/action/BasicComponentData;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    goto :goto_0

    .line 78
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/taobao/weex/ui/component/WXComponent;>;"
    :catch_2
    move-exception v2

    new-instance v2, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v3, "Can\'t find constructor of component."

    invoke-direct {v2, v3}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->loadConstructor()V

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v1, v2

    .line 93
    .local v1, "parameters":I
    if-ne v1, v5, :cond_1

    .line 94
    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 101
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    :goto_0
    return-object v0

    .line 95
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_1
    if-ne v1, v3, :cond_2

    .line 96
    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .restart local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    goto :goto_0

    .line 99
    .end local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/SimpleComponentHolder$ClazzComponentCreator;->mConstructor:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v6

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .restart local v0    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    goto :goto_0
.end method
