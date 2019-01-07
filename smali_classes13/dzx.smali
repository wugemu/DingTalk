.class public final Ldzx;
.super Ldzl;
.source "LiveHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lctk$g;->layout_session_live_header:I

    return v0
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Ldzx;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzx;->f:Landroid/widget/TextView;

    .line 30
    iget-object v0, p0, Ldzx;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldzx;->g:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Ldzx;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method public final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 37
    iget-object v3, p0, Ldzx;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v3, p0, Ldzx;->d:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 44
    iget-object v1, p0, Ldzx;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 45
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 46
    .local v2, "size":I
    if-ne v2, v6, :cond_2

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_2

    .line 47
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 48
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v3, p0, Ldzx;->f:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, p0, Ldzx;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :goto_1
    iget-object v3, p0, Ldzx;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, p0, Ldzx;->g:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v3, p0, Ldzx;->f:Landroid/widget/TextView;

    iget-object v4, p0, Ldzx;->c:Landroid/app/Activity;

    sget v5, Lctk$i;->dt_lv_current_lives_tips:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->LIVE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v2, p0, Ldzx;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    iget-object v2, p0, Ldzx;->d:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 74
    iget-object v1, p0, Ldzx;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 75
    .local v1, "list":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 79
    .end local v1    # "list":Ljava/util/List;
    .restart local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_1
    if-eqz v0, :cond_2

    .line 80
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v3, p0, Ldzx;->c:Landroid/app/Activity;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ldzx$1;

    invoke-direct {v5, p0}, Ldzx$1;-><init>(Ldzx;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    iget-object v3, p0, Ldzx;->c:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
