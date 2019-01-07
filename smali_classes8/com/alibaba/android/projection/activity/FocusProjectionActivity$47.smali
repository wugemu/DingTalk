.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 2630
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

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
    .line 2633
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "focus_local_mode_change_clarity_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2634
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    sget-object v2, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->CLARITY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 2635
    const-string/jumbo v1, "focus_key_projection_mode"

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    move-result-object v2

    invoke-virtual {v2}, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->ordinal()I

    move-result v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;I)V

    .line 2636
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->R(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 3035
    const-string/jumbo v1, "key_focus_first_enter_mode_change"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 3036
    if-eqz v1, :cond_0

    .line 3037
    const-string/jumbo v2, "key_focus_first_enter_mode_change"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2639
    :cond_0
    if-eqz v1, :cond_1

    .line 2641
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Legm$e;->dt_focus_mode_change_content_for_local:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2642
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$47;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Ljava/lang/String;)V

    .line 2644
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    return-void
.end method
