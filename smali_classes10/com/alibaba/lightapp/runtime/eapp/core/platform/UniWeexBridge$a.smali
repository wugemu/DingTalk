.class final Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;
.super Ljava/lang/Object;
.source "UniWeexBridge.java"

# interfaces
.implements Lhgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;

.field private b:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;->a:Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;->b:Lcom/taobao/weex/bridge/JSCallback;

    .line 84
    return-void
.end method


# virtual methods
.method public final a(Lhgq;)V
    .locals 2
    .param p1, "response"    # Lhgq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;->b:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/eapp/core/platform/UniWeexBridge$a;->b:Lcom/taobao/weex/bridge/JSCallback;

    .line 3092
    iget-object v1, p1, Lhgq;->a:Lcom/alibaba/fastjson/JSONObject;

    .line 93
    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method
