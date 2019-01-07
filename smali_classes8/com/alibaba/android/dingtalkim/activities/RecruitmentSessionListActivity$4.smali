.class final Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;
.super Ljava/lang/Object;
.source "RecruitmentSessionListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string/jumbo v0, "conversation_id"

    .line 182
    invoke-static {}, Ldyq;->a()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :cond_0
    :goto_0
    const-string/jumbo v0, "conversation_title"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v0, "intent_key_enable_show_mute"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    return-object p1

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RecruitmentSessionListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "conversation_id"

    .line 185
    invoke-static {}, Ldyq;->b()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
