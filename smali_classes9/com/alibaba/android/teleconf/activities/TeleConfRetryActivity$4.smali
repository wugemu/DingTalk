.class final Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$4;
.super Ljava/lang/Object;
.source "TeleConfRetryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "bizcall_fixed_line_block_page_switch_voip_call_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$4;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->finish()V

    .line 218
    return-void
.end method
