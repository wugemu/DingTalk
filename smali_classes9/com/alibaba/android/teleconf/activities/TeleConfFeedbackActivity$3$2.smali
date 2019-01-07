.class final Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$2;
.super Ljava/lang/Object;
.source "TeleConfFeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 239
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    return-void
.end method
