.class final Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;
.super Ljava/lang/Object;
.source "TeleConfCallingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 211
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 212
    .local v4, "nick":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v5, v5, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .line 215
    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v6, v6, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v6, v6, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .line 216
    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 212
    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;)V

    .line 221
    :cond_0
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Create sys call when calling "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 211
    .end local v0    # "finished":Z
    .end local v4    # "nick":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_0
.end method
