.class public final Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;
.super Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
.source "TeleConfAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 231
    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "alarmAction <==> "

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, " id :"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " alarmType :"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 233
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->value()I

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x5

    const-string/jumbo v2, " actUid:"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string/jumbo v2, " actTime :"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->d:J

    .line 235
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string/jumbo v2, " actType :"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string/jumbo v2, " actReason :"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$b;->f:Ljava/lang/String;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string/jumbo v2, " callerId :"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string/jumbo v2, "0"

    .line 238
    aput-object v2, v1, v0

    const/16 v0, 0xf

    const-string/jumbo v2, " confId :"

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-string/jumbo v2, "timeoutId :"

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-string/jumbo v2, "0"

    .line 240
    aput-object v2, v1, v0

    .line 231
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
