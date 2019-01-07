.class final Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;
.super Ljava/lang/Object;
.source "TeleConfDialActivity.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 468
    check-cast p1, Ljava/lang/String;

    .line 1471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    const-string/jumbo v0, "?corpId=%s&token=%s&onePage=true&dd_progress=false&showmenu=false#/pay"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1475
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "https://callapp.dingtalk.com/businessCall/index.html"

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1476
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Biz call recharge for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mCorpId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity$7;->a:Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 482
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfDialActivity;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Create token for biz call recharge "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 488
    .local v0, "errCode":J
    const-wide/16 v2, 0x198

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 489
    sget v2, Leuj$l;->dt_conference_no_network_exp:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .end local v0    # "errCode":J
    :catch_0
    move-exception v2

    goto :goto_0

    .line 490
    .restart local v0    # "errCode":J
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
