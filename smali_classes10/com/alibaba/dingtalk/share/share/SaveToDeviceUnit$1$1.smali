.class final Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;
.super Ljava/lang/Object;
.source "SaveToDeviceUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    .line 1102
    iget-object v2, v1, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1103
    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;

    iget-object v2, v2, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;->b:Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lgvn$h;->save_to_phone:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "toastText":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 87
    return-void
.end method
