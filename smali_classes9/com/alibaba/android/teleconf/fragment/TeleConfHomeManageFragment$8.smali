.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;
.super Ljava/lang/Object;
.source "TeleConfHomeManageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-wide p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 694
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment$8;->b:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeManageFragment;J)V

    .line 695
    return-void
.end method
