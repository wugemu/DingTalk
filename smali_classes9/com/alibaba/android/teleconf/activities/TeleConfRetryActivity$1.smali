.class final Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$1;
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
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "tele_createcall_systemcall_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;)Z

    move-result v0

    .line 105
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfRetryActivity;->finish()V

    .line 108
    :cond_0
    return-void
.end method
