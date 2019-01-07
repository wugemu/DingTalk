.class final Lcom/alibaba/android/ding/activity/CreateEventActivity$7$1;
.super Ljava/lang/Object;
.source "CreateEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/CreateEventActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/ding/activity/CreateEventActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/CreateEventActivity$7;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7$1;->b:Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1187
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbhg;->a(I)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7$1;->b:Lcom/alibaba/android/ding/activity/CreateEventActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7;->a:Lcom/alibaba/android/ding/activity/CreateEventActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/CreateEventActivity;->a(Lcom/alibaba/android/ding/activity/CreateEventActivity;)Lbac$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lbac$a;->b(Z)V

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/CreateEventActivity$7$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1191
    return-void
.end method
