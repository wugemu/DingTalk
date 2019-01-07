.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;
.super Ljava/lang/Object;
.source "FaceBox.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->startRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;Z)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

.field final synthetic val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

.field final synthetic val$requestUUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$requestUUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    const-string/jumbo v1, "cameraFacing"

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->cameraType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "front"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v0, "groupId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$requestUUID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v0, "deviceUid"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->deviceUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string/jumbo v0, "corpId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v0, "from"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->from:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v0, "recordTips"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->recordTips:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v0, "microAppAgentId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->microAppAgentId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v0, "settingMode"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->settingMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const-string/jumbo v0, "faceMagic"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->faceMagic:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    return-object p1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$1;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->cameraType:Ljava/lang/String;

    goto :goto_0
.end method
