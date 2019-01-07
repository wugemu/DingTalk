.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;
.super Ljava/lang/Object;
.source "TeleBusinessConfChooseTimeActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 197
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 198
    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 200
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    sget v2, Leuj$l;->conf_notification_invalid_date:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V

    .line 208
    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 204
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
