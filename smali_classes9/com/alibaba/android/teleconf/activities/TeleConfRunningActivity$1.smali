.class final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v3, Leuj$l;->conf_txt_create_failed_tip:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1034
    const/4 v3, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Leuv;->a(JLjava/lang/String;I)V

    .line 257
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 258
    .local v0, "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_TIMEOUT:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 259
    invoke-static {}, Levi;->p()Levi;

    move-result-object v1

    invoke-virtual {v1}, Levi;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 260
    const-string/jumbo v1, "line"

    iput-object v1, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 262
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 263
    return-void
.end method
