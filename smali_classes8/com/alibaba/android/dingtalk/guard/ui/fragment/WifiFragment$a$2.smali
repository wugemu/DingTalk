.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;
.super Ljava/lang/Object;
.source "WifiFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->c:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a;->b:Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WifiFragment$a$2;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 497
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "WifiFragment"

    const-string/jumbo v2, "oa_bravo_attendance_wifi_list_cancel_click"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 498
    return-void
.end method
