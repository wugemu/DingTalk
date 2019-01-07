.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MineFoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/found/MineFoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 662
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "pref_key_recommend_info_first_show_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 667
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->m(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    goto :goto_0

    .line 668
    :cond_2
    const-string/jumbo v1, "action_config_switch_key_ready"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "action_config_switch_work_circle_entry_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$2;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->n(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    goto :goto_0
.end method
