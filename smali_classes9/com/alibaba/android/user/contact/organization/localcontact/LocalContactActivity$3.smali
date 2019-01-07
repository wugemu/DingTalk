.class final Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "LocalContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$3;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 147
    if-eqz p2, :cond_0

    .line 148
    const-string/jumbo v1, "com.workapp.org.external.added"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "flag":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$3;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    const-string/jumbo v5, "org_id"

    invoke-virtual {p2, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/content/Context;J)V

    .line 161
    .end local v0    # "flag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string/jumbo v1, "action_friend_request_status_changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string/jumbo v1, "user_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 155
    .local v2, "uid":J
    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 156
    invoke-static {}, Lfjo;->a()Lfjo;

    move-result-object v4

    .line 1040
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v6

    .line 1041
    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    .line 1045
    iget-object v5, v4, Lfjo;->a:Ljava/util/Map;

    monitor-enter v5

    .line 1046
    :try_start_0
    iget-object v1, v4, Lfjo;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1047
    if-nez v1, :cond_2

    .line 1048
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1049
    iget-object v4, v4, Lfjo;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1052
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity$3;->a:Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;->b(Lcom/alibaba/android/user/contact/organization/localcontact/LocalContactActivity;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->H()V

    goto :goto_0

    .line 1052
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
