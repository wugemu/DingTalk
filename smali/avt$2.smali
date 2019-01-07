.class public final Lavt$2;
.super Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;
.source "CalendarPopupWindowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lapb;


# direct methods
.method public constructor <init>(ILapb;)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lavt$2;->a:I

    iput-object p2, p0, Lavt$2;->b:Lapb;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cachedPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarAlert] show"

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p2

    instance-of v2, v0, Lcrn;

    if-nez v2, :cond_0

    .line 114
    new-instance p2, Lcrn;

    .end local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcrn;-><init>(Landroid/app/Activity;)V

    .restart local p2    # "cachedPopupWindow":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
    :cond_0
    move-object/from16 v8, p2

    .line 116
    check-cast v8, Lcrn;

    move-object/from16 v0, p0

    iget-object v9, v0, Lavt$2;->b:Lapb;

    .line 2030
    if-eqz p1, :cond_1

    if-nez v9, :cond_3

    .line 2031
    :cond_1
    const/4 v2, 0x0

    .line 116
    :cond_2
    :goto_0
    invoke-virtual {v8, v2}, Lcrn;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;)V

    .line 117
    const/4 v2, 0x0

    invoke-static {v2}, Lavw;->a(Z)V

    .line 118
    return-object p2

    .line 2034
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;-><init>()V

    .line 2036
    sget v3, Laow$f;->icon_calendar_fill:I

    sget v4, Laow$a;->ui_common_warming_text_color:I

    sget v5, Laow$f;->dt_calendar_common_alert_title:I

    sget v6, Laow$a;->ui_common_warming_text_color:I

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lawe;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;IIIIZ)V

    .line 2271
    if-eqz p1, :cond_4

    if-nez v9, :cond_5

    .line 10139
    :cond_4
    :goto_1
    if-eqz p1, :cond_2

    if-eqz v9, :cond_2

    .line 10142
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;-><init>()V

    .line 10143
    invoke-static {v3}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v4

    .line 11048
    iput-object v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->c:Lcrm;

    .line 10144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11173
    iput-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 10147
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 10148
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;-><init>()V

    .line 10149
    new-instance v6, Landroid/text/SpannableString;

    sget v7, Laow$f;->dt_calendar_alert_view_detail:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11196
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 10150
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;->LINK:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 11212
    iput-object v3, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$ActionStyle;

    .line 10151
    new-instance v3, Lawe$1;

    move-object/from16 v0, p1

    invoke-direct {v3, v9, v0}, Lawe$1;-><init>(Lapb;Landroid/app/Activity;)V

    .line 12204
    iput-object v3, v5, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 10161
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2274
    :cond_5
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;-><init>()V

    .line 2275
    invoke-static {v4}, Lawe;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 3040
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;->b:Lcrm;

    .line 3071
    iget v3, v9, Lapb;->f:I

    .line 2277
    int-to-long v6, v3

    .line 4071
    iget v3, v9, Lapb;->f:I

    .line 2278
    div-int/lit8 v3, v3, 0x3c

    int-to-long v10, v3

    .line 5071
    iget v3, v9, Lapb;->f:I

    .line 2279
    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x18

    int-to-long v12, v3

    .line 2280
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-nez v3, :cond_8

    .line 2281
    new-instance v3, Landroid/text/SpannableString;

    sget v5, Laow$f;->dt_ding_alert_right_now:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5136
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 8051
    :cond_6
    :goto_2
    iget-object v3, v9, Lapb;->c:Ljava/lang/String;

    .line 2298
    if-eqz v3, :cond_7

    .line 2299
    new-instance v3, Landroid/text/SpannableString;

    .line 9051
    iget-object v5, v9, Lapb;->c:Ljava/lang/String;

    .line 2299
    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 9144
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 2302
    :cond_7
    new-instance v3, Lawe$9;

    move-object/from16 v0, p1

    invoke-direct {v3, v9, v0}, Lawe$9;-><init>(Lapb;Landroid/app/Activity;)V

    .line 9160
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    goto/16 :goto_1

    .line 2282
    :cond_8
    const-wide/16 v14, 0x0

    cmp-long v3, v6, v14

    if-lez v3, :cond_6

    .line 6075
    iget-boolean v3, v9, Lapb;->g:Z

    .line 2283
    if-eqz v3, :cond_9

    .line 2284
    new-instance v3, Landroid/text/SpannableString;

    sget v5, Laow$f;->dt_ding_calendar_alert_upcoming_day_at:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6136
    iput-object v3, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    goto :goto_2

    .line 2287
    :cond_9
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_a

    .line 2288
    sget v3, Laow$f;->dt_ding_calendar_alert_upcoming_day_at:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2294
    :goto_3
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7136
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    goto :goto_2

    .line 2289
    :cond_a
    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_b

    .line 2290
    sget v3, Laow$f;->dt_ding_calendar_alert_upcoming_hour_at:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 2292
    :cond_b
    sget v3, Laow$f;->dt_ding_calendar_alert_upcoming_fmt:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)V
    .locals 0
    .param p1, "ddPopupWindow"    # Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 126
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 106
    iget v0, p0, Lavt$2;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lavt$2;->b:Lapb;

    .line 1047
    iget-wide v0, v0, Lapb;->b:J

    .line 107
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lapu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)Z
    .locals 1
    .param p1, "popWindow"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
