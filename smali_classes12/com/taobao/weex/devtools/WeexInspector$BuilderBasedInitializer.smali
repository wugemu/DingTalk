.class Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;
.super Lcom/taobao/weex/devtools/WeexInspector$Initializer;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/WeexInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderBasedInitializer"
.end annotation


# instance fields
.field private final mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;)V
    .locals 1
    .param p1, "b"    # Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;

    .prologue
    .line 331
    iget-object v0, p1, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/WeexInspector$Initializer;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v0, p1, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;->mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;->mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;Lcom/taobao/weex/devtools/WeexInspector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/WeexInspector$1;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;-><init>(Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;)V

    return-void
.end method


# virtual methods
.method protected getInspectorModules()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;->mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;->mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;

    invoke-interface {v0}, Lcom/taobao/weex/devtools/InspectorModulesProvider;->get()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
