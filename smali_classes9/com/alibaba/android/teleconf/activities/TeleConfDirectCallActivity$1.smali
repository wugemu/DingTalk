.class final Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;
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
        "Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;",
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
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 123
    check-cast p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1126
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mBeValid:Z

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lewb;->a(Landroid/content/Context;JLcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    .line 1134
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    .line 123
    return-void

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lewb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 144
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity$1;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfDirectCallActivity;->finish()V

    .line 147
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 140
    return-void
.end method
