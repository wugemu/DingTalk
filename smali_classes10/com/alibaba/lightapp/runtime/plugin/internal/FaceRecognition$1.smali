.class Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;
.super Landroid/content/BroadcastReceiver;
.source "FaceRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 122
    const-string/jumbo v1, "action_face_box_face_detected"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo v1, "intent_key_face_box_face_detect_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 124
    .local v0, "detectResult":Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    if-eqz v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$002(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;J)J

    .line 126
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/alibaba/dingtalk/facebox/model/DetectResult;->callbackId:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$102(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Z)Z

    .line 127
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Landroid/content/Context;

    move-result-object v1

    .line 1031
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lhrp;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 128
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$402(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)Lcom/alibaba/dingtalk/facebox/model/DetectResult;

    .line 129
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v1, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Lcom/alibaba/dingtalk/facebox/model/DetectResult;)V

    .line 134
    .end local v0    # "detectResult":Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    :cond_0
    :goto_1
    return-void

    .line 126
    .restart local v0    # "detectResult":Lcom/alibaba/dingtalk/facebox/model/DetectResult;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    const/4 v2, 0x3

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/FaceRecognition;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1
.end method
