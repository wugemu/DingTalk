.class final Leur$7;
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

.field final synthetic b:Leur;


# direct methods
.method constructor <init>(Leur;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 0
    .param p1, "this$0"    # Leur;

    .prologue
    .line 746
    iput-object p1, p0, Leur$7;->b:Leur;

    iput-object p2, p0, Leur$7;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 749
    iget-object v1, p0, Leur$7;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Goto profile "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Leur$7;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v6, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v4, "call_record_profile_click"

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 753
    const-wide/16 v2, 0x0

    .line 755
    .local v2, "uid":J
    :try_start_0
    iget-object v1, p0, Leur$7;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 759
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 760
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Goto profile uid <= 0"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .end local v2    # "uid":J
    :cond_0
    :goto_1
    return-void

    .line 756
    .restart local v2    # "uid":J
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Goto profile exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 763
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v4, p0, Leur$7;->b:Leur;

    iget-object v4, v4, Leur;->b:Landroid/app/Activity;

    invoke-virtual {v1, v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto :goto_1

    .line 764
    .end local v2    # "uid":J
    :cond_2
    iget-object v1, p0, Leur$7;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isMultiUserCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Leur$7;->b:Leur;

    invoke-static {v1}, Leur;->a(Leur;)Lexi$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 766
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Leur;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Goto profile detail page"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v4, "call_record_avatar_info_click"

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Leur$7;->b:Leur;

    invoke-static {v1}, Leur;->a(Leur;)Lexi$c;

    move-result-object v1

    iget-object v4, p0, Leur$7;->a:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-interface {v1, v4}, Lexi$c;->a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    goto :goto_1
.end method
