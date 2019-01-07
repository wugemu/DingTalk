.class final Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;
.super Ljava/lang/Object;
.source "FocusDevicesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusDevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

.field final synthetic c:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;->c:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;->b:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;->c:Lcom/alibaba/android/projection/activity/FocusDevicesActivity;

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusDevicesActivity$1;->b:Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusDevicesActivity;->a(Lcom/alibaba/android/projection/activity/FocusDevicesActivity;Lcom/alibaba/android/projection/data/FocusDeviceObjectListItem;)V

    .line 91
    return-void
.end method
