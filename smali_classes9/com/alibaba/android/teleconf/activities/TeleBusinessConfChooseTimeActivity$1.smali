.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;
.super Ljava/lang/Object;
.source "TeleBusinessConfChooseTimeActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


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
    .line 146
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 9
    .param p1, "datePicker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 151
    .local v0, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 152
    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 154
    invoke-virtual {v0, v8, p4}, Ljava/util/Calendar;->set(II)V

    .line 156
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    sget v2, Leuj$l;->conf_notification_invalid_date:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)V

    .line 165
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 161
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfChooseTimeActivity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v8, p4}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method
