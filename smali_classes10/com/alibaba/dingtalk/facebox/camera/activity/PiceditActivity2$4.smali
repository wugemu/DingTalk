.class final Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;
.super Ljava/lang/Object;
.source "PiceditActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;

    invoke-static {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;->a(Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2;)V

    .line 196
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/PiceditActivity2$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 197
    return-void
.end method