.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment$2;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->l()Lbsw$c;

    move-result-object v0

    instance-of v0, v0, Lbsz;

    if-eqz v0, :cond_0

    .line 393
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "alpha_request_auth_cancel"

    invoke-interface {v0, v2, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 395
    :cond_0
    return-void
.end method
