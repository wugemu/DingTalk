.class Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;
.super Ljava/lang/Object;
.source "DOM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->setInspectModeEnabled(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

.field final synthetic val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;->this$0:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;->access$300(Lcom/taobao/weex/devtools/inspector/protocol/module/DOM;)Lcom/taobao/weex/devtools/inspector/elements/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$6;->val$request:Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;

    iget-boolean v1, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/DOM$SetInspectModeEnabledRequest;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/Document;->setInspectModeEnabled(Z)V

    .line 206
    return-void
.end method
