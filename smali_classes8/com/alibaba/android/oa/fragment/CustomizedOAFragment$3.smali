.class final Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;
.super Lcmi;
.source "CustomizedOAFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    iput-object p2, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 348
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, "CustomizedOAFragment"

    .line 350
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "RuntimeWebViewLayout addPageErrorView exception: "

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "code= "

    .line 351
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "reason= "

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 321
    check-cast p1, Landroid/view/View;

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1327
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;-><init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 321
    :cond_1
    return-void
.end method
