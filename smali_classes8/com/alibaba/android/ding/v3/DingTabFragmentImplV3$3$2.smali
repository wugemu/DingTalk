.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;
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
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1118
    const-string/jumbo v1, "ding_filter_button_click_conference_and_schedule"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$2;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 280
    return-void
.end method
