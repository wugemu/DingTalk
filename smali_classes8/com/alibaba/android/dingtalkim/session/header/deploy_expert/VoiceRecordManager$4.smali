.class final Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;
.super Ljava/lang/Object;
.source "VoiceRecordManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->j:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "VoiceRecordManager"

    const-string/jumbo v2, "deploy_expert_record_continue_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 335
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    .line 1054
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->a:Landroid/app/Activity;

    .line 335
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$4;->a:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;->g:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;

    .line 1380
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$a;->a:Ljava/lang/String;

    .line 335
    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method
