.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$7;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$7;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 266
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "contact_exter_list_case_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$7;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$7;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->b(Lcom/alibaba/android/user/external/list/ExternalListFragment;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Landroid/app/Activity;J)V

    .line 268
    return-void
.end method
