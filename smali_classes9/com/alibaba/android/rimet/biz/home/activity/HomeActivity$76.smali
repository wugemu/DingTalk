.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 4363
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 4366
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 4367
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 4371
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4372
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$76;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 4373
    return-void
.end method
