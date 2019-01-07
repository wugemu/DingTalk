.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;
.super Ljava/lang/Object;
.source "AnchorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->codeLevel:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1148
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 2098
    iget-boolean v0, v0, Lbtq;->e:Z

    .line 1148
    if-nez v0, :cond_0

    .line 1152
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    .line 2102
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbtq;->e:Z

    .line 1154
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b$4;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$b;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbtp$g;->dt_lv_anchor_fps_slow_warning:I

    .line 1155
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbtp$g;->dt_common_i_know:I

    const/4 v2, 0x0

    .line 1156
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1157
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method
