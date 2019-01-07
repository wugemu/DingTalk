.class public final Lbiw;
.super Lbin;
.source "UnReadViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lbin;-><init>(Landroid/app/Activity;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    sget v0, Laxp$g;->ding_notify_center_list_item_unread:I

    return v0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 8
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isLastPosition"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v6}, Lbiw;->a(JZ)V

    .line 42
    iget-object v3, p0, Lbiw;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Lcog;->a(JZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v3, p0, Lbiw;->g:Landroid/widget/TextView;

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    .line 46
    .local v1, "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    instance-of v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v3, :cond_2

    .line 47
    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .end local v1    # "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v3

    iget-object v4, p0, Lbiw;->c:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    .line 50
    .local v2, "spannableString":Landroid/text/SpannableString;
    iget-object v3, p0, Lbiw;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "spannableString":Landroid/text/SpannableString;
    :cond_1
    :goto_1
    invoke-static {p1}, Lbkh;->E(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    iget-object v3, p0, Lbiw;->d:Landroid/view/View;

    sget v4, Laxp$e;->ding_bg_yellow_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    :goto_2
    if-eqz p2, :cond_4

    .line 63
    iget-object v3, p0, Lbiw;->h:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :goto_3
    invoke-virtual {p0, p1, v6, v7}, Lbiw;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZ)V

    goto :goto_0

    .line 52
    .restart local v1    # "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_2
    instance-of v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v3, :cond_1

    .line 53
    iget-object v3, p0, Lbiw;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lbiw;->c:Landroid/app/Activity;

    sget v5, Laxp$i;->ding_abstract_audio_message:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 59
    .end local v1    # "objectDingContent":Lcom/alibaba/android/ding/base/objects/ObjectDingContent;
    :cond_3
    iget-object v3, p0, Lbiw;->d:Landroid/view/View;

    sget v4, Laxp$e;->common_white_cell_selector:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 65
    :cond_4
    iget-object v3, p0, Lbiw;->h:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
