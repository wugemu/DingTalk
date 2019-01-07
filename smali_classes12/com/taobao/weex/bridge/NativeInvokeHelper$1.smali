.class Lcom/taobao/weex/bridge/NativeInvokeHelper$1;
.super Ljava/lang/Object;
.source "NativeInvokeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field final synthetic val$invoker:Lcom/taobao/weex/bridge/Invoker;

.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$target:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/NativeInvokeHelper;Lcom/taobao/weex/bridge/Invoker;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/bridge/NativeInvokeHelper;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->this$0:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iput-object p2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    iput-object p3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$target:Ljava/lang/Object;

    iput-object p4, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    if-eqz v1, :cond_0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    iget-object v2, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$target:Ljava/lang/Object;

    iget-object v3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$params:[Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$target:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Invoker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/bridge/NativeInvokeHelper$1;->val$invoker:Lcom/taobao/weex/bridge/Invoker;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
