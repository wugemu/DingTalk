.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 2088
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2088
    check-cast p1, Ljava/util/List;

    .line 3091
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3092
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3093
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3094
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 3097
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 3098
    if-eqz v0, :cond_0

    .line 3099
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3102
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lewh;->a()Lewh;

    invoke-static {}, Lewh;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3104
    const-string/jumbo v3, "conversation_id"

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    const-string/jumbo v0, "conf_type"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3106
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0, v1, v2}, Lewb;->b(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    .line 3126
    :goto_2
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 3127
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 2088
    return-void

    .line 3104
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3108
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3109
    const-string/jumbo v2, "isFromService"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3110
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_caller"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const-string/jumbo v2, "conf_video_to_user_type"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3112
    const-string/jumbo v2, "conf_video_auto"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3113
    const-string/jumbo v2, "conf_video_3g_remind_flag"

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3114
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->a:Z

    if-eqz v2, :cond_4

    .line 3115
    const-string/jumbo v2, "conf_video_camera_status"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3117
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3118
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v2, v1, v0}, Lewb;->c(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    .line 3123
    :cond_6
    sget v0, Leuj$l;->dt_conference_start_conf_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2137
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Create video fail"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 2138
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2137
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    sget v0, Leuj$l;->dt_conference_start_conf_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2141
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levi;->a(I)V

    .line 2142
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$40;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 2143
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2133
    return-void
.end method
