.class final Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;
.super Ljava/lang/Object;
.source "TeleConfDirectCallActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 348
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1351
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {v0, v1, v2, p1}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1360
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    .line 348
    return-void

    .line 1355
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-static {v1, v0, v2}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 370
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    .line 373
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 366
    return-void
.end method
