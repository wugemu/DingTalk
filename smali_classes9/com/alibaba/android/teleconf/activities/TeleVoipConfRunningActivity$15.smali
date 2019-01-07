.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Stop ring after media starting"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;->a:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->f()V

    .line 606
    :cond_0
    return-void
.end method
