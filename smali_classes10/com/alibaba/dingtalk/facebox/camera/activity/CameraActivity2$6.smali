.class final Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;
.super Ljava/lang/Object;
.source "CameraActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    .prologue
    .line 842
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    iput-object p2, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 845
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->a()Landroid/app/AlertDialog;

    .line 846
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2$6;->b:Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/facebox/camera/activity/CameraActivity2;->finish()V

    .line 847
    return-void
.end method
