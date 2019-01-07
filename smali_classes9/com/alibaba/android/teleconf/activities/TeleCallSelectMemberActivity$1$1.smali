.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 352
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "phone_launch_servicephone_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 354
    .local v0, "numInfo":Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 355
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1$1;->b:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    .line 357
    return-void
.end method
