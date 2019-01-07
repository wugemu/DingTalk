.class Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;
.super Ljava/lang/Object;
.source "WXExpressionBindingModule.java"

# interfaces
.implements Lanu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->createBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v0, p1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method
