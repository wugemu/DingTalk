.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Lcpi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4
    .param p1, "granted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 143
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mini window after click"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-nez p1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    sget v2, Leuj$l;->dt_conference_notification_enter_warn:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    const-string/jumbo v2, "200"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    .line 149
    return-void
.end method
