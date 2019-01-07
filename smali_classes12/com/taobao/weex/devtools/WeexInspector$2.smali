.class final Lcom/taobao/weex/devtools/WeexInspector$2;
.super Ljava/lang/Object;
.source "WeexInspector.java"

# interfaces
.implements Lcom/taobao/weex/devtools/InspectorModulesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/WeexInspector;->defaultInspectorModulesProvider(Landroid/content/Context;)Lcom/taobao/weex/devtools/InspectorModulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/taobao/weex/devtools/WeexInspector$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Iterable;
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
    .line 127
    new-instance v0, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;

    iget-object v1, p0, Lcom/taobao/weex/devtools/WeexInspector$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/WeexInspector$DefaultInspectorModulesBuilder;->finish()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
