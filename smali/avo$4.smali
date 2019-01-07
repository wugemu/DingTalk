.class final Lavo$4;
.super Ljava/lang/Object;
.source "CalendarEventUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavo;->a(Landroid/support/v4/app/Fragment;ZLawv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawv;

.field final synthetic b:Landroid/support/v4/app/Fragment;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lawv;Landroid/support/v4/app/Fragment;Z)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lavo$4;->a:Lawv;

    iput-object p2, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    iput-boolean p3, p0, Lavo$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 172
    iget-object v3, p0, Lavo$4;->a:Lawv;

    instance-of v3, v3, Lasv;

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.WRITE_CALENDAR"

    aput-object v6, v4, v5

    new-instance v5, Lavo$4$1;

    invoke-direct {v5, p0}, Lavo$4$1;-><init>(Lavo$4;)V

    invoke-static {v3, v8, v4, v5}, Lbyy;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v3, p0, Lavo$4;->a:Lawv;

    instance-of v3, v3, Lawq;

    if-eqz v3, :cond_2

    .line 190
    iget-object v3, p0, Lavo$4;->a:Lawv;

    check-cast v3, Lawq;

    .line 1029
    iget-object v1, v3, Lawq;->a:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 191
    .local v1, "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v1, :cond_0

    .line 195
    iget-object v3, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lavo;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)V

    goto :goto_0

    .line 196
    .end local v1    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    :cond_2
    iget-object v3, p0, Lavo$4;->a:Lawv;

    instance-of v3, v3, Lcom/alibaba/android/calendar/data/object/MailEvent;

    if-eqz v3, :cond_5

    .line 197
    iget-object v2, p0, Lavo$4;->a:Lawv;

    check-cast v2, Lcom/alibaba/android/calendar/data/object/MailEvent;

    .line 198
    .local v2, "mailEvent":Lcom/alibaba/android/calendar/data/object/MailEvent;
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/MailEvent;->getMailEventInstance()Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    move-result-object v0

    .line 199
    .local v0, "eventInstanceObject":Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v2}, Lcom/alibaba/android/calendar/data/object/MailEvent;->isRepeatEvent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 1369
    new-instance v4, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {v4, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 1370
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1371
    new-instance v6, Lcng;

    sget v7, Laow$f;->dt_delete_this_time_schedule:I

    invoke-direct {v6, v8, v7}, Lcng;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1372
    new-instance v6, Lcng;

    sget v7, Laow$f;->dt_delete_all_relative_schedule:I

    invoke-direct {v6, v9, v7}, Lcng;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 1374
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v6, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1375
    sget v7, Laow$f;->dt_repeat_schedule_desc:I

    invoke-static {v7}, Leda;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lavo$9;

    invoke-direct {v8, v5, v4, v3, v0}, Lavo$9;-><init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Landroid/app/Activity;Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;)V

    .line 1376
    invoke-virtual {v7, v4, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1394
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 206
    :cond_3
    iget-object v3, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 2398
    if-eqz v0, :cond_0

    .line 2402
    new-instance v3, Lavo$10;

    invoke-direct {v3, v4}, Lavo$10;-><init>(Landroid/app/Activity;)V

    .line 2419
    if-eqz v4, :cond_4

    .line 2420
    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-static {v3, v5, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/Callback;

    .line 2423
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->k()Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getOwerAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/MailCalendarInterface;->a(Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 208
    .end local v0    # "eventInstanceObject":Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;
    .end local v2    # "mailEvent":Lcom/alibaba/android/calendar/data/object/MailEvent;
    :cond_5
    iget-object v3, p0, Lavo$4;->a:Lawv;

    instance-of v3, v3, Lawx;

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lavo$4;->a:Lawv;

    check-cast v3, Lawx;

    .line 3058
    iget-object v1, v3, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 210
    .restart local v1    # "instanceShowObject":Lcom/alibaba/android/calendar/data/object/InstanceShowObject;
    if-eqz v1, :cond_0

    .line 214
    iget-boolean v3, p0, Lavo$4;->c:Z

    if-eqz v3, :cond_7

    .line 215
    invoke-static {}, Lavq;->h()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 216
    invoke-static {v1}, Lawc;->h(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 217
    :cond_6
    invoke-static {v1}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 218
    invoke-static {v1}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 220
    :cond_7
    iget-object v3, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lavo;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)V

    .line 225
    :goto_1
    invoke-static {v1}, Lawc;->l(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 226
    invoke-static {v1}, Lawc;->i(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5257
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5258
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5259
    const-string/jumbo v4, "calendar_list_delete"

    invoke-static {v4, v3}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 222
    :cond_8
    iget-object v3, p0, Lavo$4;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 4248
    new-instance v4, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-direct {v4, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 4249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 4250
    new-instance v6, Lcng;

    sget v7, Laow$f;->dt_meeting_repeat_confirm_dialog_only_one:I

    invoke-direct {v6, v8, v7}, Lcng;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4251
    new-instance v6, Lcng;

    sget v7, Laow$f;->dt_meeting_repeat_confirm_dialog_follow_all:I

    invoke-direct {v6, v9, v7}, Lcng;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4252
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 4253
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v6, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4254
    sget v7, Laow$f;->dt_meeting_repeat_confirm_dialog_title:I

    invoke-static {v7}, Leda;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lavo$5;

    invoke-direct {v8, v5, v4, v1, v3}, Lavo$5;-><init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;Landroid/app/Activity;)V

    .line 4255
    invoke-virtual {v7, v4, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4293
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1

    .line 228
    :cond_9
    invoke-static {v1}, Lawc;->c(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5270
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5271
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "3"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5272
    const-string/jumbo v4, "calendar_list_delete"

    invoke-static {v4, v3}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 230
    :cond_a
    invoke-static {v1}, Lawc;->d(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lavo$4;->a:Lawv;

    invoke-interface {v3}, Lawv;->isRepeatEvent()Z

    move-result v3

    .line 6263
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6264
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "2"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6265
    const-string/jumbo v5, "repeat"

    if-eqz v3, :cond_b

    const-string/jumbo v3, "1"

    :goto_2
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6266
    const-string/jumbo v3, "calendar_list_delete"

    invoke-static {v3, v4}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 6265
    :cond_b
    const-string/jumbo v3, "0"

    goto :goto_2

    .line 233
    :cond_c
    invoke-static {v1}, Lawc;->k(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6276
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6277
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "4"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6278
    const-string/jumbo v4, "calendar_list_delete"

    invoke-static {v4, v3}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 235
    :cond_d
    invoke-static {v1}, Lawc;->m(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 6294
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6295
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "7"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6296
    const-string/jumbo v4, "calendar_list_delete"

    invoke-static {v4, v3}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 237
    :cond_e
    invoke-static {v1}, Lawc;->n(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6300
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6301
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "8"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6302
    const-string/jumbo v4, "calendar_list_delete"

    invoke-static {v4, v3}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
