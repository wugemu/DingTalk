.class final Lfbr$3;
.super Ljava/lang/Object;
.source "ChannelApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbr;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

.field final synthetic c:Lfbr;


# direct methods
.method constructor <init>(Lfbr;ILcom/alibaba/android/user/channel/model/ChannelApplyObject;)V
    .locals 0
    .param p1, "this$0"    # Lfbr;

    .prologue
    .line 175
    iput-object p1, p0, Lfbr$3;->c:Lfbr;

    iput p2, p0, Lfbr$3;->a:I

    iput-object p3, p0, Lfbr$3;->b:Lcom/alibaba/android/user/channel/model/ChannelApplyObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 178
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lfbr$3;->c:Lfbr;

    invoke-static {v1}, Lfbr;->a(Lfbr;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v1, p0, Lfbr$3;->c:Lfbr;

    invoke-static {v1}, Lfbr;->a(Lfbr;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_channel_delete_apply:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lfbr$3;->c:Lfbr;

    invoke-static {v2}, Lfbr;->a(Lfbr;)Landroid/app/Activity;

    move-result-object v2

    sget v3, Lezg$l;->cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 180
    iget-object v1, p0, Lfbr$3;->c:Lfbr;

    invoke-static {v1}, Lfbr;->a(Lfbr;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfbr$3$1;

    invoke-direct {v2, p0}, Lfbr$3$1;-><init>(Lfbr$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 210
    return v4
.end method
