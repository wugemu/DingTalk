.class public Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;
.super Ljava/lang/Object;
.source "RhinoDetectingRuntimeReplFactory.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRhinoJsUnexpectedError:Ljava/lang/RuntimeException;

.field private mRhinoReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

.field private mSearchedForRhinoJs:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mRhinoJsUnexpectedError:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method private static findRhinoReplFactory(Landroid/content/Context;)Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 70
    :try_start_0
    const-string/jumbo v3, "com.facebook.stetho.rhino.JsRuntimeReplFactoryBuilder"

    .line 71
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 72
    .local v2, "jsRuntimeReplFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "defaultFactory"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    .line 73
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 74
    .local v0, "defaultFactoryMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 77
    .end local v0    # "defaultFactoryMethod":Ljava/lang/reflect/Method;
    .end local v2    # "jsRuntimeReplFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 76
    :catch_0
    move-exception v3

    const-string/jumbo v3, "Error finding stetho-js-rhino, cannot enable console evaluation!"

    invoke-static {v3}, Lcom/taobao/weex/devtools/common/LogUtil;->i(Ljava/lang/String;)V

    move-object v3, v4

    .line 77
    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 80
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 82
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public newInstance()Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mSearchedForRhinoJs:Z

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mSearchedForRhinoJs:Z

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->findRhinoReplFactory(Landroid/content/Context;)Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mRhinoReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mRhinoReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mRhinoReplFactory:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    invoke-interface {v1}, Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;->newInstance()Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;

    move-result-object v1

    .line 54
    :goto_1
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->mRhinoJsUnexpectedError:Ljava/lang/RuntimeException;

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v1, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory$1;-><init>(Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;)V

    goto :goto_1
.end method
