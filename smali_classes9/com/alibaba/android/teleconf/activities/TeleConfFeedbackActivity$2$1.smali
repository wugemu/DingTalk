.class final Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2$1;
.super Ljava/lang/Object;
.source "TeleConfFeedbackActivity.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ResultModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 182
    .line 1185
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "feedback submit success"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    sget v0, Leuj$l;->conf_txt_commit_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity$2;->a:Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->finish()V

    .line 182
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfFeedbackActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "feedback submit fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget v0, Leuj$l;->conf_txt_commit_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 195
    return-void
.end method
