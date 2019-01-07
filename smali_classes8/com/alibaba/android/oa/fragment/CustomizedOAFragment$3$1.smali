.class final Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;
.super Ljava/lang/Object;
.source "CustomizedOAFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iput-object p2, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v1, v1, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->c(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    invoke-static {v0}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->b(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;->a(Lcom/alibaba/android/oa/fragment/CustomizedOAFragment;Landroid/view/View;)Landroid/view/View;

    .line 338
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3$1;->b:Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;

    iget-object v1, v1, Lcom/alibaba/android/oa/fragment/CustomizedOAFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->reportAppMalfunction(Ljava/lang/String;)V

    .line 340
    :cond_1
    return-void
.end method
