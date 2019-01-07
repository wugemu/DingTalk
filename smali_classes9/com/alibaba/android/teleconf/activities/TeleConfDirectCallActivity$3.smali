.class final Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$3;
.super Ljava/lang/Object;
.source "TeleConfDirectCallActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgws;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    check-cast p1, Lgws;

    .line 1220
    if-eqz p1, :cond_1

    .line 1221
    iget-boolean v0, p1, Lgws;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lgws;->a:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lgws;->b:I

    if-eqz v0, :cond_1

    iget v0, p1, Lgws;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    .line 216
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 237
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Quick call list fail "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 238
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    .line 241
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 233
    return-void
.end method
