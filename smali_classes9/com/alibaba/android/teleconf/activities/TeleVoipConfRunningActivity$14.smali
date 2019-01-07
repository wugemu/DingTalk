.class final Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;
.super Ljava/lang/Object;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    iput p2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->a:I

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
    .line 580
    iget v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    sget v2, Leuj$l;->dt_conference_voip_conf_ending_tip:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "toast":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    iget v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v0    # "toast":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;->b:Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    .line 587
    :cond_1
    return-void
.end method
