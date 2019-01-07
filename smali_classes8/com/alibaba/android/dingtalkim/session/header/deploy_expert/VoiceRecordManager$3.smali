.class public final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;
.super Landroid/content/BroadcastReceiver;
.source "VoiceRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 229
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mInCallReceiver, action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->d:Ldzh;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 1054
    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->c:J

    .line 231
    invoke-interface {v1, v2, v3}, Ldzh;->c(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 2054
    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a()Lcom/google/gson/Gson;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 3054
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 232
    invoke-static {v1, v2, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mInCallReceiver, data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "pref_key_im_deploy_record_interrupted_v2"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$3;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 4405
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_stop_deployment_record"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4406
    const-string/jumbo v3, "orderId"

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->c:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4407
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 238
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method
