.class final Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CategoryBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

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
    .line 84
    if-eqz p2, :cond_0

    const-string/jumbo v1, "intent_action_forward_pick_data"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string/jumbo v1, "intent_key_menu_seed"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 86
    .local v2, "seed":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 92
    .end local v2    # "seed":J
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v2    # "seed":J
    :cond_1
    const-string/jumbo v1, "intent_key_forward_pick_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    .local v0, "recipientDataObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryBaseActivity;->b(Ljava/util/List;)V

    goto :goto_0
.end method
