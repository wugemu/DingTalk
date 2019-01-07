.class final Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;
.super Ljava/lang/Object;
.source "MeetingScheduleCreateActivity.java"

# interfaces
.implements Lhlk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lhll;)V
    .locals 8
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "callback"    # Lhll;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    const/4 v0, 0x7

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "MeetingScheduleCreateActivity"

    aput-object v0, v6, v1

    const-string/jumbo v0, ", onCallNative, nameSpace:"

    aput-object v0, v6, v2

    aput-object p1, v6, v3

    const-string/jumbo v0, ", eventName:"

    aput-object v0, v6, v4

    aput-object p2, v6, v5

    const/4 v0, 0x5

    const-string/jumbo v7, ", data:"

    aput-object v7, v6, v0

    const/4 v7, 0x6

    if-nez p3, :cond_1

    const-string/jumbo v0, "null"

    .line 252
    :goto_0
    aput-object v0, v6, v7

    .line 249
    invoke-static {v6}, Lbkd;->a([Ljava/lang/String;)V

    .line 253
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 275
    :goto_2
    return-void

    .line 252
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :sswitch_0
    const-string/jumbo v2, "close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "getMyUserInfo"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "getUserInfos"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "chooseConferenceParticipants"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "selectRemind"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "selectRepeat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->finish()V

    goto :goto_2

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p4}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lhll;)V

    goto :goto_2

    .line 261
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p3, p4}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->a(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    goto :goto_2

    .line 264
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p3, p4}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->b(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    goto :goto_2

    .line 267
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p3, p4}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->c(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    goto :goto_2

    .line 270
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity$5;->a:Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-static {v0, p3, p4}, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;->d(Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;Lcom/alibaba/fastjson/JSONObject;Lhll;)V

    goto/16 :goto_2

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        -0x62e5b25 -> :sswitch_1
        0x5a5ddf8 -> :sswitch_0
        0x12716dc4 -> :sswitch_2
        0x413e2dd3 -> :sswitch_3
        0x771a5521 -> :sswitch_4
        0x771ba1b7 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
