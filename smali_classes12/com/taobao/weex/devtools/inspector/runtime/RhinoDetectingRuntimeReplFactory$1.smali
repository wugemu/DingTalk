.class Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory$1;
.super Ljava/lang/Object;
.source "RhinoDetectingRuntimeReplFactory.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->newInstance()Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory$1;->this$0:Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory$1;->this$0:Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->access$000(Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stetho-js-rhino threw: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory$1;->this$0:Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;

    invoke-static {v1}, Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;->access$000(Lcom/taobao/weex/devtools/inspector/runtime/RhinoDetectingRuntimeReplFactory;)Ljava/lang/RuntimeException;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Not supported without stetho-js-rhino dependency"

    goto :goto_0
.end method
