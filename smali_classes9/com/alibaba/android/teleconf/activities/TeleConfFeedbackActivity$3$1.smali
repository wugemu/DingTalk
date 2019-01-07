.class final Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;
.super Ljava/lang/Object;
.source "TeleConfFeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    iput p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    sget v2, Leuj$l;->conf_txt_quality_score_times_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "timeInfo":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;Ljava/lang/String;)V

    .line 228
    return-void
.end method
