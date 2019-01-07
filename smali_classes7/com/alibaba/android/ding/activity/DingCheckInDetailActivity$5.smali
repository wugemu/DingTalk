.class final Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;
.super Ljava/lang/Object;
.source "DingCheckInDetailActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 182
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1186
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->d(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1187
    const-string/jumbo v0, "[DingCheckInDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    .line 1194
    :goto_0
    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->d(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1192
    const-string/jumbo v0, "[DingCheckInDetailPage]retrieveDing failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    goto :goto_0

    .line 1196
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->e(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->f(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->g(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->h(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 210
    const-string/jumbo v0, "[DingCheckInDetailPage]retrieveDing failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$5;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->finish()V

    .line 212
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 206
    return-void
.end method
