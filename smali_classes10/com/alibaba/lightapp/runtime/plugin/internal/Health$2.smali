.class Lcom/alibaba/lightapp/runtime/plugin/internal/Health$2;
.super Ljava/lang/Object;
.source "Health.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/plugin/sensor/StepCountManager$StepUploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Health;->enableStepCountSync(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Health;

.field final synthetic val$stepCountCallbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Health;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Health;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Health$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Health;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Health$2;->val$stepCountCallbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepsUploaded(Z)V
    .locals 3
    .param p1, "success"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Health$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Health;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Health$2;->val$stepCountCallbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Health;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Health;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 53
    return-void
.end method
