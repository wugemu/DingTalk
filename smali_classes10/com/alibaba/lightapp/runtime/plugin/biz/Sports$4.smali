.class Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$4;
.super Ljava/lang/Object;
.source "Sports.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->getTodaysStepCount(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

.field final synthetic val$stepCountCallbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$4;->val$stepCountCallbackId:Ljava/lang/String;

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
    .line 147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager;->getCountingStatusObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 148
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$4;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports$4;->val$stepCountCallbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Sports;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 149
    return-void
.end method
