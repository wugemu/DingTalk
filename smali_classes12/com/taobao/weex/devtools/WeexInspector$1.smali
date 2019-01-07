.class final Lcom/taobao/weex/devtools/WeexInspector$1;
.super Lcom/taobao/weex/devtools/WeexInspector$Initializer;
.source "WeexInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/WeexInspector;->initializeWithDefaults(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    iput-object p2, p0, Lcom/taobao/weex/devtools/WeexInspector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/WeexInspector$Initializer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final getInspectorModules()Ljava/lang/Iterable;
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    iget-object v1, p0, Lcom/taobao/weex/devtools/WeexInspector$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
