.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;
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
    .line 2617
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2620
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "focus_local_mode_change_fluency_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2621
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    sget-object v1, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->FLUENCY_FIRST:Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    invoke-static {v0, v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    .line 2622
    const-string/jumbo v0, "focus_key_projection_mode"

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->h(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;

    move-result-object v1

    invoke-virtual {v1}, Lali/mmpc/pwp/PwpClient$ADAPTION_STRETEGY;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;I)V

    .line 2623
    iget-object v0, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$46;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->R(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V

    .line 2625
    return-void
.end method
