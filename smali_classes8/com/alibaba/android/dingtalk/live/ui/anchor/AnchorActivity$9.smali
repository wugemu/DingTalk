.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;
.super Landroid/view/OrientationEventListener;
.source "AnchorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 259
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    const/16 v1, 0xf

    if-lt p1, v1, :cond_2

    const/16 v1, 0x159

    if-gt p1, v1, :cond_2

    const/16 v1, 0xa5

    if-le p1, v1, :cond_3

    const/16 v1, 0xc3

    if-ge p1, v1, :cond_3

    .line 274
    :cond_2
    sget v0, Lbtp$g;->dt_lv_live_landscape_warning_tips:I

    .line 284
    :cond_3
    :goto_1
    if-lez v0, :cond_0

    .line 285
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;Z)Z

    .line 286
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;)V

    .line 287
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity$9;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/AnchorActivity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lbtp$g;->dt_common_i_know:I

    const/4 v3, 0x0

    .line 289
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 278
    :cond_4
    const/16 v1, 0x4b

    if-le p1, v1, :cond_5

    const/16 v1, 0x69

    if-lt p1, v1, :cond_6

    :cond_5
    const/16 v1, 0xff

    if-le p1, v1, :cond_3

    const/16 v1, 0x11d

    if-ge p1, v1, :cond_3

    .line 281
    :cond_6
    sget v0, Lbtp$g;->dt_lv_live_portrait_warning_tips:I

    goto :goto_1
.end method
