.class public final Lavo;
.super Ljava/lang/Object;
.source "CalendarEventUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)V
    .locals 4
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .prologue
    .line 46
    .line 1324
    new-instance v0, Lavo$7;

    invoke-direct {v0}, Lavo$7;-><init>()V

    .line 1340
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1341
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getCalendarId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Latf;->a(JLcom/alibaba/wukong/Callback;)V

    .line 46
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;)V
    .locals 10
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    .param p2, "x2"    # Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;

    .prologue
    .line 46
    .line 1429
    if-eqz p1, :cond_1

    .line 1433
    new-instance v9, Lavo$2;

    invoke-direct {v9, p0}, Lavo$2;-><init>(Landroid/app/Activity;)V

    .line 1450
    if-eqz p0, :cond_0

    .line 1451
    const-class v0, Lcom/alibaba/wukong/Callback;

    invoke-static {v9, v0, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v9, v0

    .line 1454
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v6

    move-object v8, p2

    .line 1454
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Ljava/lang/String;JJJLcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface$DELETE_MODE;Lcom/alibaba/wukong/Callback;)V

    .line 46
    :cond_1
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;ZLawv;)V
    .locals 6
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "isRepeat"    # Z
    .param p2, "event"    # Lawv;

    .prologue
    .line 163
    new-instance v1, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, "menuAdapter":Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcng;>;"
    new-instance v3, Lcng;

    const/4 v4, 0x0

    sget v5, Laow$f;->ding_menu_delete:I

    invoke-direct {v3, v4, v5}, Lcng;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 168
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, "menuDDAlertDialog":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    new-instance v3, Lavo$4;

    invoke-direct {v3, p2, p0, p1}, Lavo$4;-><init>(Lawv;Landroid/support/v4/app/Fragment;Z)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 245
    return-void
.end method
