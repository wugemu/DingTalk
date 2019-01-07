.class final Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DiagnosticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$1;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

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
    .line 60
    const-string/jumbo v1, "intent_action_forward_pick_data"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$1;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->a(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activity_identify"

    .line 62
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v1, "intent_key_forward_pick_data"

    .line 64
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    .local v0, "dataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity$1;->a:Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;->a(Lcom/alibaba/android/user/settings/activity/DiagnosticsActivity;Ljava/util/ArrayList;)V

    .line 68
    .end local v0    # "dataObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    :cond_0
    return-void
.end method
