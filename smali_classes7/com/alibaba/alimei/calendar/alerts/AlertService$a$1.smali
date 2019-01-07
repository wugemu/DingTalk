.class final Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;
.super Ljava/lang/Object;
.source "AlertService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/calendar/alerts/AlertService$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/calendar/alerts/AlertService$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/calendar/alerts/AlertService$a;Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/alerts/AlertService$a;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->c:Lcom/alibaba/alimei/calendar/alerts/AlertService$a;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->a:Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    iput-object p3, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->a:Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    iget-object v12, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->a:Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    iget-wide v4, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->event_id:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->a:Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->begin:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;->a:Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->end:J

    .line 1106
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "config_switch_ding_show_float_window"

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1107
    invoke-static {}, Lcjq;->a()Lcjq;

    invoke-static {}, Lcjq;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1035
    :goto_0
    if-eqz v2, :cond_3

    .line 2026
    new-instance v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    invoke-direct {v10}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;-><init>()V

    .line 2039
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;-><init>()V

    .line 2040
    invoke-static {v2}, Lrk;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 3035
    iput-object v3, v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->a:Lcrm;

    .line 2041
    sget v3, Laxo$i;->icon_cmail:I

    .line 3075
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->b:I

    .line 2042
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v11, Laxo$c;->ui_common_warming_text_color:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3083
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->c:I

    .line 2043
    new-instance v3, Landroid/text/SpannableString;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    sget v14, Laxo$i;->dt_alimei_alert_title:I

    invoke-virtual {v11, v14}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3091
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->d:Landroid/text/SpannableString;

    .line 2044
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v11, Laxo$c;->ui_common_warming_text_color:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 3099
    iput v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$d;->e:I

    .line 4056
    new-instance v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;-><init>()V

    .line 4057
    invoke-static {v11}, Lrk;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v2

    .line 5043
    iput-object v2, v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->b:Lcrm;

    .line 4058
    new-instance v3, Landroid/text/SpannableString;

    if-nez v12, :cond_2

    const-string/jumbo v2, ""

    :goto_1
    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5131
    iput-object v3, v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->b:Landroid/text/SpannableString;

    .line 4059
    if-eqz v13, :cond_0

    .line 4060
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5139
    iput-object v2, v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->c:Landroid/text/SpannableString;

    .line 4062
    :cond_0
    new-instance v3, Lrk$1;

    invoke-direct/range {v3 .. v9}, Lrk$1;-><init>(JJJ)V

    .line 5155
    iput-object v3, v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$b;->e:Landroid/view/View$OnClickListener;

    .line 6077
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;-><init>()V

    .line 6078
    invoke-static {v2}, Lrk;->a(Ljava/lang/Object;)Lcrm;

    move-result-object v3

    .line 7051
    iput-object v3, v10, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;->c:Lcrm;

    .line 6079
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7168
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$c;->a:Ljava/util/List;

    .line 6082
    invoke-static {}, Lrk;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6083
    new-instance v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;

    invoke-direct {v11}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;-><init>()V

    .line 6084
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6085
    new-instance v3, Landroid/text/SpannableString;

    sget v14, Laxo$i;->dt_calendar_alert_view_detail:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7191
    iput-object v3, v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->a:Landroid/text/SpannableString;

    .line 6086
    new-instance v3, Lrk$2;

    invoke-direct/range {v3 .. v9}, Lrk$2;-><init>(JJJ)V

    .line 7199
    iput-object v3, v11, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject$a;->b:Landroid/view/View$OnClickListener;

    .line 1040
    new-instance v2, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/floatwindow/FloatCommonView;-><init>(Landroid/content/Context;)V

    .line 1041
    new-instance v3, Lcjs$a;

    const/16 v11, 0x9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v11, v14, v2}, Lcjs$a;-><init>(ILjava/lang/String;Lcom/alibaba/android/dingtalkbase/floatwindow/FloatBaseView;)V

    .line 1042
    new-instance v2, Lrg$1;

    invoke-direct {v2}, Lrg$1;-><init>()V

    .line 8081
    iput-object v2, v3, Lcjs$a;->a:Lcjs$b;

    .line 8086
    iput-object v10, v3, Lcjs$a;->b:Lcom/alibaba/android/dingtalkbase/floatwindow/FloatDisplayAsyncObject;

    .line 1061
    invoke-static {}, Lcjq;->a()Lcjq;

    move-result-object v2

    invoke-virtual {v3}, Lcjs$a;->a()Lcjs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcjq;->a(Lcjs;)V

    .line 1098
    :goto_2
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v10, "[alarm] show alert, title:"

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v10, ", desc:"

    aput-object v10, v2, v3

    const/4 v3, 0x3

    aput-object v13, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v10, ", eventId:"

    aput-object v10, v2, v3

    const/4 v3, 0x5

    .line 1100
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, ", begin:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    .line 1101
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ", end:"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    .line 1102
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1098
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafg;->a(Ljava/lang/String;)V

    .line 235
    return-void

    .line 1107
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    move-object v2, v12

    .line 4058
    goto/16 :goto_1

    .line 1063
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;-><init>()V

    .line 1064
    sget-object v3, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;->CALENDAR_ALERT:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 9033
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->c:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;

    .line 1065
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 9045
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->e:Ljava/lang/String;

    .line 1066
    const/4 v3, 0x0

    .line 10041
    iput-object v3, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->d:Ljava/lang/Object;

    .line 1067
    new-instance v11, Lrg$2;

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    invoke-direct/range {v11 .. v19}, Lrg$2;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 11037
    iput-object v11, v2, Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;->b:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$a;

    .line 1096
    invoke-static {}, Lcmw;->a()Lcmv;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcmv;->a(Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;)V

    goto :goto_2
.end method
