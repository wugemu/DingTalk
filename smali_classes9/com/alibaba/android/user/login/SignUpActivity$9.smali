.class final Lcom/alibaba/android/user/login/SignUpActivity$9;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpActivity;->b(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/login/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity;Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    iput-object p3, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 522
    check-cast p1, Ljava/lang/String;

    .line 1525
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->f(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 1526
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1527
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1528
    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v_code:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1533
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "vcode_apply_success"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->c:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;J)J

    .line 522
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 546
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x345b

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 547
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "exception, time:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 548
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 549
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, ",code:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 550
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 551
    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v_code:%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    const-string/jumbo v0, "11022"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->f(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 555
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/login/SignUpActivity;->a(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 557
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "11011"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->f(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 559
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/login/SignUpActivity;->c(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 561
    :cond_1
    const-string/jumbo v0, "12306"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->f(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 564
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    sget v1, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/login/SignUpActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 571
    .end local p2    # "reason":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/SignUpActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 569
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->f(Lcom/alibaba/android/user/login/SignUpActivity;)V

    .line 570
    invoke-static {}, Lcom/alibaba/android/user/login/SignUpActivity;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getSMSCode failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$9;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->server_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 542
    return-void
.end method
