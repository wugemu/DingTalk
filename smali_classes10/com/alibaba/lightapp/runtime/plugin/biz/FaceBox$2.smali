.class Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;
.super Ljava/lang/Object;
.source "FaceBox.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;->startPictureRecord(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
    .line 197
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$requestUUID:Ljava/lang/String;

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
    .line 200
    const-string/jumbo v0, "userId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string/jumbo v0, "groupId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$requestUUID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string/jumbo v0, "deviceUid"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->deviceUid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string/jumbo v0, "corpId"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->corpId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v0, "from"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->from:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$2;->val$recordModel:Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/FaceBox$JsFaceBoxRecordModel;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    return-object p1
.end method
