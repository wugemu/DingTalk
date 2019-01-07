.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "editable"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v6, 0x1f4

    const/4 v1, 0x0

    .line 865
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->t(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->u(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)I

    move-result v3

    invoke-interface {p1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 868
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v6, :cond_2

    const/4 v0, 0x1

    .line 869
    .local v0, "nOverMaxLength":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 870
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v3, Laxp$i;->ding_comment_num_limit:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 871
    invoke-virtual {v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/high16 v5, 0x43020000    # 130.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 870
    invoke-static {v2, v3, v1, v4}, Lcms;->a(Ljava/lang/String;III)V

    .line 872
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v6, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 873
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 875
    :cond_1
    return-void

    .end local v0    # "nOverMaxLength":Z
    :cond_2
    move v0, v1

    .line 868
    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 830
    if-nez p4, :cond_0

    .line 831
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Z)Z

    .line 832
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 833
    add-int/lit8 v0, p2, -0x1

    .line 834
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 835
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 836
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->q(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/util/Map;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    .line 837
    invoke-interface {p1, v3, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Z)Z

    .line 838
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->r(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 839
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->c(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I

    .line 840
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1, p2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I

    .line 848
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 844
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 853
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 855
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "text":Ljava/lang/String;
    if-nez p3, :cond_0

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->s(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$9;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v4, Laxp$i;->ding_members_tilte_at:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1491
    if-eqz v1, :cond_0

    .line 1494
    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v4, "https://qr.dingtalk.com/ding/members"

    new-instance v5, Lbjv$3;

    invoke-direct {v5, v2, v3}, Lbjv$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 861
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method
