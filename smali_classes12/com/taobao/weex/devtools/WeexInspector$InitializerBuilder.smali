.class public Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;
.super Ljava/lang/Object;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/WeexInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializerBuilder"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;->mContext:Landroid/content/Context;

    .line 315
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/taobao/weex/devtools/WeexInspector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/WeexInspector$1;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/taobao/weex/devtools/WeexInspector$Initializer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 323
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/WeexInspector$BuilderBasedInitializer;-><init>(Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;Lcom/taobao/weex/devtools/WeexInspector$1;)V

    return-object v0
.end method

.method public enableWebKitInspector(Lcom/taobao/weex/devtools/InspectorModulesProvider;)Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;
    .locals 0
    .param p1, "modules"    # Lcom/taobao/weex/devtools/InspectorModulesProvider;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/taobao/weex/devtools/WeexInspector$InitializerBuilder;->mInspectorModules:Lcom/taobao/weex/devtools/InspectorModulesProvider;

    .line 319
    return-object p0
.end method
