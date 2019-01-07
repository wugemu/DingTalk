.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;
.super Ljava/lang/Object;
.source "SpaceRoSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;
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
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcma;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;Ljava/util/Map;Ljava/lang/Long;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->b:Ljava/lang/Long;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    check-cast p1, Lghz;

    .line 1188
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->dismissLoadingDialog()V

    .line 1194
    if-eqz p1, :cond_0

    .line 1198
    iget-object v0, p1, Lghz;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1198
    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 1200
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->a:Ljava/util/Map;

    const-string/jumbo v1, "doc_readonly"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v3}, Lfzv;->a(Ljava/lang/Long;Z)V

    .line 1206
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->a:Ljava/util/Map;

    const-string/jumbo v1, "watermark"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v3}, Lfzv;->b(Ljava/lang/Long;Z)V

    .line 1212
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.alibaba.dingtalk.space.read.only.change"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1214
    const-string/jumbo v3, "doc_readonly"

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->a:Ljava/util/Map;

    const-string/jumbo v4, "doc_readonly"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v0, "space_id"

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->b:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1216
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1217
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1219
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->c:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1220
    :cond_0
    :goto_2
    return-void

    .line 1203
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lfzv;->a(Ljava/lang/Long;Z)V

    goto :goto_0

    .line 1209
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lfzv;->b(Ljava/lang/Long;Z)V

    goto :goto_1

    .line 1221
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->c:Lcma;

    iget-object v1, p1, Lghz;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lghz;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->d:Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity;->dismissLoadingDialog()V

    .line 237
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceRoSettingActivity$3;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 228
    return-void
.end method
