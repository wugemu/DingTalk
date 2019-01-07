.class public final Ldgr;
.super Ldgl;
.source "ChatDetailTextViewHolder.java"


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "fromImLocal"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ldgl;-><init>(Landroid/app/Activity;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Z)V
    .locals 8
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "isFromSearch"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v6, p0, Ldgr;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v6, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v6, p0, Ldgr;->c:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 35
    iget-object v6, p0, Ldgr;->c:Landroid/view/View;

    sget v7, Lctk$f;->tv_content:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 36
    .local v5, "tvContent":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 38
    iget-object v6, p0, Ldgr;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 39
    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    .line 43
    .local v1, "emojiUtil":Lcok;
    iget-object v6, p0, Ldgr;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcok;->a(Ljava/lang/String;)Z

    move-result v2

    .line 44
    .local v2, "isAllEmotion":Z
    iget-object v6, p0, Ldgr;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    invoke-static {v6, p2}, Ldgr;->a(Ljava/lang/CharSequence;Z)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;

    move-result-object v3

    .line 46
    .local v3, "result":Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;
    if-eqz v3, :cond_3

    iget-object v0, v3, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$a;->a:Ljava/lang/CharSequence;

    .line 48
    .local v0, "content":Ljava/lang/CharSequence;
    :goto_1
    iget-object v7, p0, Ldgr;->d:Landroid/app/Activity;

    if-eqz v2, :cond_4

    const/high16 v6, 0x41f00000    # 30.0f

    :goto_2
    invoke-virtual {v1, v7, v0, v6}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v4

    .line 51
    .local v4, "spannableString":Landroid/text/SpannableString;
    if-eqz p2, :cond_5

    .line 52
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 46
    .end local v0    # "content":Ljava/lang/CharSequence;
    .end local v4    # "spannableString":Landroid/text/SpannableString;
    :cond_3
    iget-object v6, p0, Ldgr;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v6, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->content:Ljava/lang/String;

    goto :goto_1

    .line 48
    .restart local v0    # "content":Ljava/lang/CharSequence;
    :cond_4
    const/high16 v6, 0x41c00000    # 24.0f

    goto :goto_2

    .line 54
    .restart local v4    # "spannableString":Landroid/text/SpannableString;
    :cond_5
    invoke-static {}, Ldds;->a()Ldds;

    move-result-object v6

    iget-object v7, p0, Ldgr;->d:Landroid/app/Activity;

    invoke-virtual {v6, v4, v5, v7}, Ldds;->a(Ljava/lang/CharSequence;Landroid/widget/TextView;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lctk$g;->view_chat_detail_item_text:I

    return v0
.end method
