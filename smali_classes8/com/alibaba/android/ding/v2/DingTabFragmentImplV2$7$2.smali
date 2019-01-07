.class final Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

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
    .line 301
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v1, v1, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v1, v1, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1118
    const-string/jumbo v1, "ding_filter_button_click_conference_and_schedule"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7$2;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;

    iget-object v1, v1, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2$7;->a:Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;->l(Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 305
    return-void
.end method
