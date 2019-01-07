.class Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;
.super Ljava/lang/Object;
.source "CSpace.java"

# interfaces
.implements Lgqt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->onDataReceived(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 162
    const-string/jumbo v0, "600001"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "-1"

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "12"

    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(JJ)V
    .locals 9
    .param p1, "total"    # J
    .param p3, "completed"    # J

    .prologue
    .line 135
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    const/4 v3, 0x4

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;IJJ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 140
    .local v0, "mResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 141
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 9
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "12"

    const-string/jumbo v5, "no result"

    invoke-static {v4, v5}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    const/4 v3, 0x4

    iget-wide v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iget-wide v6, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static/range {v1 .. v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;IJJ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 152
    .local v0, "mResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 153
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$opeId:Ljava/lang/String;

    iget-object v6, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace$2;->val$callbackId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/CSpace;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method
