.class final Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$4;
.super Ljava/lang/Object;
.source "CommonSecondarySessionListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

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
    .line 158
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->c(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v0, "conversation_title"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;->b(Lcom/alibaba/android/dingtalkim/activities/CommonSecondarySessionListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v0, "intent_key_enable_show_mute"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    return-object p1
.end method
