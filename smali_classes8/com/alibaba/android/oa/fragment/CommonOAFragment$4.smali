.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    iput-object p2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    iput-object p3, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 953
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->dismiss()V

    .line 954
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->c:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$4;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    return-void
.end method
