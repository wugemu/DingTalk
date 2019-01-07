.class final Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$2;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/jsonrpc/DisconnectReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->getSession(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$peer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;


# direct methods
.method constructor <init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$2;->val$peer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisconnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->access$100()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$2;->val$peer:Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcPeer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
