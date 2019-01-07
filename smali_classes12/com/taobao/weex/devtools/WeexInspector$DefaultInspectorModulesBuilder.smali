.class public final Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;
.super Ljava/lang/Object;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/WeexInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultInspectorModulesBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/app/Application;

.field private final mDelegate:Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation
.end field

.field private mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRuntimeRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;-><init>(Lcom/taobao/weex/devtools/WeexInspector$1;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDelegate:Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mContext:Landroid/app/Application;

    .line 188
    return-void
.end method

.method private provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;
    .locals 2
    .param p1, "module"    # Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDelegate:Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->provideIfDesired(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    return-object p0
.end method

.method private resolveDocumentProvider()Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    .line 276
    :goto_0
    return-object v0

    .line 273
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 274
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProviderFactory;

    iget-object v1, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mContext:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProviderFactory;-><init>(Landroid/app/Application;)V

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final documentProvider(Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;
    .locals 0
    .param p1, "factory"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDocumentProvider:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    .line 199
    return-object p0
.end method

.method public final finish()Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Console;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Console;-><init>()V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 247
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Debugger;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Debugger;-><init>()V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 248
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/WxDebug;-><init>()V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 249
    invoke-direct {p0}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->resolveDocumentProvider()Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;

    move-result-object v1

    .line 250
    .local v1, "documentModel":Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;
    if-eqz v1, :cond_0

    .line 251
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Document;

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;-><init>(Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderFactory;)V

    .line 252
    .local v0, "document":Lcom/taobao/weex/devtools/inspector/elements/Document;
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-direct {v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 253
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;

    invoke-direct {v2, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/CSS;-><init>(Lcom/taobao/weex/devtools/inspector/elements/Document;)V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 255
    .end local v0    # "document":Lcom/taobao/weex/devtools/inspector/elements/Document;
    :cond_0
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Input;-><init>()V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 256
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Inspector;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Inspector;-><init>()V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 257
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;

    iget-object v3, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mContext:Landroid/app/Application;

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Network;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 258
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;

    iget-object v3, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mContext:Landroid/app/Application;

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 259
    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;

    iget-object v2, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mRuntimeRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mRuntimeRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    :goto_0
    invoke-direct {v3, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;-><init>(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)V

    invoke-direct {p0, v3}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 264
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Worker;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Worker;-><init>()V

    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->provideIfDesired(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    .line 265
    iget-object v2, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDelegate:Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;

    invoke-virtual {v2}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v2

    return-object v2

    .line 259
    :cond_1
    new-instance v2, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    iget-object v4, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mContext:Landroid/app/Application;

    invoke-direct {v2, v4}, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final provide(Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;
    .locals 2
    .param p1, "module"    # Lcom/taobao/weex/devtools/inspector/protocol/ChromeDevtoolsDomain;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDelegate:Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->provide(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mDelegate:Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/devtools/WeexInspector$PluginBuilder;->remove(Ljava/lang/String;)V

    .line 242
    return-object p0
.end method

.method public final runtimeRepl(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;
    .locals 0
    .param p1, "factory"    # Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->mRuntimeRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;

    .line 211
    return-object p0
.end method
