.class Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

.field final synthetic val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

.field final synthetic val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 1

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "moduleNoNeedToCallback"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NO NEED to notifyVerifyTaskResult result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bizName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 217
    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyVerifyTaskResult result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verifyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bizName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 222
    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$100(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifyVerifyTaskResult result is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string/jumbo v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$100(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0
.end method
