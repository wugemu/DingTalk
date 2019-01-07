.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$4;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbjv;->a(Landroid/app/Activity;)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$4;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 305
    return-void
.end method
