.class Lcom/taobao/weex/devtools/debug/DebugServerProxy$1$1;
.super Ljava/lang/Object;
.source "DebugServerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/taobao/weex/devtools/debug/DebugServerProxy$1$1;->this$1:Lcom/taobao/weex/devtools/debug/DebugServerProxy$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    const-string/jumbo v1, "debug server connected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    return-void
.end method
