.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19$2;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19$2;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1679
    const-string/jumbo v0, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Cancel loading so"

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1681
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19$2;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;

    iget-object v0, v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$19;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->finish()V

    .line 1682
    return-void
.end method
