.class final Lcom/alibaba/android/user/settings/activity/FeedbackActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "choose_picture_ids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->a(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FeedbackActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/FeedbackActivity;->b(Lcom/alibaba/android/user/settings/activity/FeedbackActivity;)V

    .line 86
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
