.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 271
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v3, v3, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->l(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)J

    move-result-wide v0

    .line 272
    .local v0, "createStartTime":J
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v3, v3, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "intent_key_selected_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v3, v3, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 1118
    const-string/jumbo v3, "ding_filter_button_click_conference_and_schedule"

    invoke-static {v3}, Lbjz;->a(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$2;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v3, v3, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v3}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->a(Z)V

    .line 277
    return-void
.end method
