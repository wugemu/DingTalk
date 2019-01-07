.class public final Ldey;
.super Ldet;
.source "UnreadMemberTipManager.java"


# instance fields
.field public h:Lcom/alibaba/wukong/im/Conversation;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chatMsgListModel"    # Ldqq;
    .param p3, "chatMsgListView"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Ldet;-><init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 11
    .param p1, "itemView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    if-nez v8, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    sget v8, Lctk$f;->chatting_unreadcount_tv1:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 68
    .local v7, "unreadButton":Landroid/view/View;
    sget v8, Lctk$f;->rl_tips:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    .local v3, "otherTipView":Landroid/view/View;
    const v5, -0x39e3c000    # -10000.0f

    .line 72
    .local v5, "tipX":F
    const v6, -0x39e3c000    # -10000.0f

    .line 73
    .local v6, "tipY":F
    if-eqz v7, :cond_7

    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lez v8, :cond_7

    .line 74
    iget-object v8, p0, Ldey;->j:Landroid/graphics/Rect;

    if-nez v8, :cond_2

    .line 75
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Ldey;->j:Landroid/graphics/Rect;

    .line 78
    :cond_2
    iget-object v8, p0, Ldey;->i:Landroid/graphics/Rect;

    if-nez v8, :cond_3

    .line 79
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Ldey;->i:Landroid/graphics/Rect;

    .line 82
    :cond_3
    iget-object v8, p0, Ldey;->j:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 83
    iget-object v8, p0, Ldey;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 85
    iget-object v8, p0, Ldey;->j:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Ldey;->i:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v5, v8

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    iget-object v9, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v8, v9, v8

    int-to-float v6, v8

    .line 87
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    .line 88
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v8

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 92
    :cond_4
    iget-object v8, p0, Ldey;->c:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lctk$d;->small_text_tip_screen_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 93
    .local v4, "tipScreenPadding":F
    cmpg-float v8, v5, v4

    if-gez v8, :cond_7

    .line 94
    sub-float v1, v4, v5

    .line 95
    .local v1, "diff":F
    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    sget v9, Lctk$f;->small_text_tip_arrow:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "arrow":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 98
    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    .line 99
    .local v2, "diffLimit":F
    cmpl-float v8, v1, v2

    if-lez v8, :cond_5

    .line 100
    move v1, v2

    .line 102
    :cond_5
    neg-float v8, v1

    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 104
    .end local v2    # "diffLimit":F
    :cond_6
    add-float/2addr v5, v1

    .line 108
    .end local v0    # "arrow":Landroid/view/View;
    .end local v1    # "diff":F
    .end local v4    # "tipScreenPadding":F
    :cond_7
    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v8, p0, Ldey;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v9

    add-float/2addr v9, v6

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method protected final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Ldey;->h:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Ldey;->c:Landroid/app/Activity;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->o:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Ldey;->h:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/alibaba/android/dingtalkim/IMConstant;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    iget-object v0, p0, Ldey;->h:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->chat_unread_member_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Ldey;->h:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_unread_button_guide_tips:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->chat_unread_member_tip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final d(Lcom/alibaba/wukong/im/Message;)Z
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 117
    iget-boolean v0, p0, Ldey;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldey;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Ldey;->e:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Ldey;->d()V

    .line 123
    :cond_0
    return-void
.end method
