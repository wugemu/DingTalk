.class final Lapd$1$1;
.super Ljava/lang/Object;
.source "CalendarAlertManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapd$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapb;

.field final synthetic b:Lapd$1;


# direct methods
.method constructor <init>(Lapd$1;Lapb;)V
    .locals 0
    .param p1, "this$1"    # Lapd$1;

    .prologue
    .line 60
    iput-object p1, p0, Lapd$1$1;->b:Lapd$1;

    iput-object p2, p0, Lapd$1$1;->a:Lapb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 63
    iget-object v6, p0, Lapd$1$1;->a:Lapb;

    iget-object v0, p0, Lapd$1$1;->b:Lapd$1;

    iget v0, v0, Lapd$1;->a:I

    .line 1031
    invoke-static {}, Lawa;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1066
    if-nez v6, :cond_2

    .line 1067
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarFloatWindowUtil] showSystemAlertPopupWindow calendarAlert is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 65
    :goto_0
    iget-object v0, p0, Lapd$1$1;->b:Lapd$1;

    iget v0, v0, Lapd$1;->a:I

    if-nez v0, :cond_1

    .line 66
    invoke-static {}, Laul;->a()Laul;

    move-result-object v0

    iget-object v1, p0, Lapd$1$1;->a:Lapb;

    iget-object v2, p0, Lapd$1$1;->b:Lapd$1;

    iget-wide v2, v2, Lapd$1;->b:J

    .line 18049
    if-eqz v1, :cond_1

    .line 18052
    iget-boolean v0, v0, Laul;->a:Z

    if-nez v0, :cond_1

    .line 18055
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 19051
    iget-object v0, v1, Lapb;->c:Ljava/lang/String;

    .line 18057
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x14

    if-le v1, v5, :cond_0

    .line 18058
    const/4 v1, 0x0

    const/16 v5, 0x14

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 18060
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    sget v5, Laow$f;->dt_calendar_common_alert_title:I

    .line 18061
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "https://qr.dingtalk.com/ding/system_event_detail"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "?"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "system_event_id"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "="

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 18067
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    .line 18063
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18060
    invoke-virtual {v1, v4, v0, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    return-void

    .line 1071
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 1072
    new-instance v7, Lcjs$a;

    const/16 v2, 0x9

    .line 2047
    iget-wide v4, v6, Lapb;->b:J

    .line 1072
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v2, v3, v1}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 1073
    new-instance v1, Lavp$2;

    invoke-direct {v1, v0, v6}, Lavp$2;-><init>(ILapb;)V

    .line 2081
    iput-object v1, v7, Lcjs$a;->a:Lcjs$b;

    .line 3032
    if-nez v6, :cond_4

    .line 3033
    const/4 v0, 0x0

    .line 14086
    :cond_3
    :goto_1
    iput-object v0, v7, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 1092
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v0

    invoke-virtual {v7}, Lcjs$a;->a()Lcjs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcjq;->a(Lcjs;)V

    goto/16 :goto_0

    .line 3036
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 3038
    sget v1, Laow$f;->icon_calendar_fill:I

    sget v2, Laow$a;->ui_common_warming_text_color:I

    sget v3, Laow$f;->dt_calendar_common_alert_title:I

    sget v4, Laow$a;->ui_common_warming_text_color:I

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lawb;->a(Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;IIIIZ)V

    .line 3271
    if-eqz v6, :cond_7

    .line 3274
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 3275
    invoke-static {v2}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v1

    .line 4043
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 4071
    iget v1, v6, Lapb;->f:I

    .line 3277
    int-to-long v4, v1

    .line 5071
    iget v1, v6, Lapb;->f:I

    .line 3278
    div-int/lit8 v1, v1, 0x3c

    int-to-long v8, v1

    .line 6071
    iget v1, v6, Lapb;->f:I

    .line 3279
    div-int/lit8 v1, v1, 0x3c

    div-int/lit8 v1, v1, 0x18

    int-to-long v10, v1

    .line 3280
    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-nez v1, :cond_8

    .line 3281
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laow$f;->dt_ding_alert_right_now:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6131
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 9051
    :cond_5
    :goto_2
    iget-object v1, v6, Lapb;->c:Ljava/lang/String;

    .line 3298
    if-eqz v1, :cond_6

    .line 3299
    new-instance v1, Landroid/text/SpannableString;

    .line 10051
    iget-object v3, v6, Lapb;->c:Ljava/lang/String;

    .line 3299
    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10139
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 3302
    :cond_6
    new-instance v1, Lawb$9;

    invoke-direct {v1, v6}, Lawb$9;-><init>(Lapb;)V

    .line 10155
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 11140
    :cond_7
    if-eqz v6, :cond_3

    .line 11143
    new-instance v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 11144
    invoke-static {v1}, Lawb;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 12051
    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 11145
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12168
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 11148
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 11149
    new-instance v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 11150
    new-instance v4, Landroid/text/SpannableString;

    sget v5, Laow$f;->dt_calendar_alert_view_detail:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12191
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 11151
    sget-object v1, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;->LINK:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 12207
    iput-object v1, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$ActionStyle;

    .line 11152
    new-instance v1, Lawb$1;

    invoke-direct {v1, v6}, Lawb$1;-><init>(Lapb;)V

    .line 13199
    iput-object v1, v3, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 11162
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3282
    :cond_8
    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-lez v1, :cond_5

    .line 7075
    iget-boolean v1, v6, Lapb;->g:Z

    .line 3283
    if-eqz v1, :cond_9

    .line 3284
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laow$f;->dt_ding_calendar_alert_upcoming_day_at:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7131
    iput-object v1, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    goto :goto_2

    .line 3287
    :cond_9
    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-lez v1, :cond_a

    .line 3288
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laow$f;->dt_ding_calendar_alert_upcoming_day_at:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3294
    :goto_3
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8131
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    goto/16 :goto_2

    .line 3289
    :cond_a
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_b

    .line 3290
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laow$f;->dt_ding_calendar_alert_upcoming_hour_at:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 3292
    :cond_b
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laow$f;->dt_ding_calendar_alert_upcoming_fmt:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-virtual {v1, v3, v8}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 14089
    :cond_c
    if-nez v6, :cond_d

    .line 14090
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarPopupWindowUtil] showSystemAlertPopupWindow calendarAlert is null "

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14094
    :cond_d
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 14095
    sget-object v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->CALENDAR_ALERT:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 15033
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 15047
    iget-wide v2, v6, Lapb;->b:J

    .line 14096
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 16045
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 17041
    iput-object v6, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 14098
    new-instance v2, Lavt$2;

    invoke-direct {v2, v0, v6}, Lavt$2;-><init>(ILapb;)V

    .line 18037
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 14129
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    goto/16 :goto_0
.end method
