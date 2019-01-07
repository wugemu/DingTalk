.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lezd;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;->a:Lezd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1241
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_voip_conference_avatar_remove_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1243
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Kickout user"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;->a:Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1248
    :cond_0
    return-void
.end method
