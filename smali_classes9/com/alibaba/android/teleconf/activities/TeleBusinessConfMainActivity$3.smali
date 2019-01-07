.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;
.super Ljava/lang/Object;
.source "TeleBusinessConfMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 599
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Banner-recharge for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 603
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v1, :cond_0

    .line 604
    const-string/jumbo v2, "call_history_microapp_quota_warn_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    .line 608
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 610
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-direct {v0, v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)V

    .line 611
    .local v0, "quotaInfo":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a:J

    .line 612
    iput-boolean v6, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->c:Z

    .line 613
    iput-boolean v6, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->d:Z

    .line 614
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->n(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->b:Ljava/lang/String;

    .line 616
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .end local v0    # "quotaInfo":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$a;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 620
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity$3;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;->o(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfMainActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 622
    :cond_2
    return-void
.end method
