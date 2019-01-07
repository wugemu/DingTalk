.class final Leur$4;
.super Ljava/lang/Object;
.source "TeleConfRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field final synthetic b:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

.field final synthetic c:Leur;


# direct methods
.method constructor <init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;)V
    .locals 0
    .param p1, "this$0"    # Leur;

    .prologue
    .line 695
    iput-object p1, p0, Leur$4;->c:Leur;

    iput-object p2, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iput-object p3, p0, Leur$4;->b:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 698
    iget-object v3, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 699
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_dingmsg_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 700
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "clk show ding message"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Leur$4;->c:Leur;

    invoke-static {v3}, Leur;->a(Leur;)Lexi$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 702
    iget-object v3, p0, Leur$4;->c:Leur;

    invoke-static {v3}, Leur;->a(Leur;)Lexi$c;

    move-result-object v3

    iget-object v4, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lexi$c;->a(Ljava/lang/String;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lewh;->a()Lewh;

    iget-object v3, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    iget-object v4, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    invoke-static {v3, v4, v5}, Lewh;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 705
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_feedback_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "clk show feedback"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Leur$4;->c:Leur;

    invoke-static {v3}, Leur;->a(Leur;)Lexi$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 708
    iget-object v3, p0, Leur$4;->c:Leur;

    invoke-static {v3}, Leur;->a(Leur;)Lexi$c;

    move-result-object v3

    iget-object v4, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    iget-object v5, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v6, v5, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    invoke-interface {v3, v4, v6, v7}, Lexi$c;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 711
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_invite_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 712
    const-string/jumbo v3, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "clk show invite"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v3, p0, Leur$4;->c:Leur;

    invoke-static {v3}, Leur;->a(Leur;)Lexi$c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 714
    iget-object v3, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v6, v3, :cond_0

    .line 715
    iget-object v3, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-static {v3, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "uids":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ne v3, v6, :cond_0

    .line 717
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 718
    .local v0, "uid":J
    iget-object v3, p0, Leur$4;->c:Leur;

    invoke-static {v3}, Leur;->a(Leur;)Lexi$c;

    move-result-object v3

    iget-object v4, p0, Leur$4;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-interface {v3, v0, v1, v4}, Lexi$c;->a(JLjava/lang/String;)V

    goto/16 :goto_0
.end method
