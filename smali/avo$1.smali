.class public final Lavo$1;
.super Ljava/lang/Object;
.source "CalendarEventUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

.field final synthetic c:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(ZLcom/alibaba/android/calendar/data/object/InstanceShowObject;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lavo$1;->a:Z

    iput-object p2, p0, Lavo$1;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    iput-object p3, p0, Lavo$1;->c:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 105
    invoke-static {}, Lavq;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lavo$1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavo$1;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    invoke-static {v0}, Lawc;->h(Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lavo$1;->c:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lavo$1;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 1122
    new-instance v2, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 1123
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1124
    new-instance v4, Lcng;

    const/4 v5, 0x4

    sget v6, Laow$f;->dt_meeting_repeat_confirm_dialog_only_one:I

    invoke-direct {v4, v5, v6}, Lcng;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    new-instance v4, Lcng;

    const/4 v5, 0x5

    sget v6, Laow$f;->dt_meeting_repeat_confirm_dialog_follow_all:I

    invoke-direct {v4, v5, v6}, Lcng;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Ljava/util/List;)V

    .line 1127
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1128
    sget v5, Laow$f;->dt_meeting_repeat_confirm_dialog_title:I

    invoke-static {v5}, Leda;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lavo$3;

    invoke-direct {v6, v3, v2, v0, v1}, Lavo$3;-><init>(Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Landroid/support/v4/app/Fragment;Lcom/alibaba/android/calendar/data/object/InstanceShowObject;)V

    .line 1129
    invoke-virtual {v5, v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1159
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v0

    iget-object v1, p0, Lavo$1;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lavo$1;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 110
    invoke-virtual {v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getBizId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lavo$1;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 111
    invoke-virtual {v4}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lavo$1;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 112
    invoke-virtual {v5}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->getRecurrenceIdOrStartTime()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    .line 108
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
