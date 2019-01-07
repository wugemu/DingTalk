.class public final Ldev;
.super Ldet;
.source "OnlineEditTipManager.java"


# instance fields
.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chatMsgListModel"    # Ldqq;
    .param p3, "chatMsgListView"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Ldet;-><init>(Landroid/app/Activity;Ldqq;Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 13
    .param p1, "itemView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    if-eqz p1, :cond_0

    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    if-nez v10, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget v10, Lctk$f;->chatting_content_view_container:I

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 64
    .local v6, "spaceFileView":Landroid/view/View;
    sget v10, Lctk$f;->chatting_content_view_stub:I

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, "spaceFileContentView":Landroid/view/View;
    sget v10, Lctk$f;->operation_view:I

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 66
    .local v4, "operationView":Landroid/view/View;
    if-nez v4, :cond_7

    const/4 v3, 0x0

    .line 69
    .local v3, "editButton":Landroid/view/View;
    :goto_1
    const v8, -0x39e3c000    # -10000.0f

    .line 70
    .local v8, "tipX":F
    const v9, -0x39e3c000    # -10000.0f

    .line 72
    .local v9, "tipY":F
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-lez v10, :cond_6

    .line 73
    iget-object v10, p0, Ldev;->i:Landroid/graphics/Rect;

    if-nez v10, :cond_2

    .line 74
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Ldev;->i:Landroid/graphics/Rect;

    .line 77
    :cond_2
    iget-object v10, p0, Ldev;->h:Landroid/graphics/Rect;

    if-nez v10, :cond_3

    .line 78
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Ldev;->h:Landroid/graphics/Rect;

    .line 81
    :cond_3
    iget-object v10, p0, Ldev;->i:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 82
    iget-object v10, p0, Ldev;->h:Landroid/graphics/Rect;

    invoke-virtual {p1, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 84
    iget-object v10, p0, Ldev;->i:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Ldev;->h:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    int-to-float v8, v10

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v11

    add-float/2addr v10, v11

    .line 86
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v12, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget-object v11, p0, Ldev;->c:Landroid/app/Activity;

    const/high16 v12, 0x40400000    # 3.0f

    .line 87
    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    add-float v9, v10, v11

    .line 90
    iget-object v10, p0, Ldev;->c:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lctk$d;->small_text_tip_screen_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 91
    .local v7, "tipScreenPadding":F
    cmpg-float v10, v8, v7

    if-gez v10, :cond_6

    .line 92
    sub-float v1, v7, v8

    .line 93
    .local v1, "diff":F
    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    sget v11, Lctk$f;->small_text_tip_arrow:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "arrow":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 97
    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    int-to-float v2, v10

    .line 98
    .local v2, "diffLimit":F
    cmpl-float v10, v1, v2

    if-lez v10, :cond_4

    .line 99
    move v1, v2

    .line 101
    :cond_4
    neg-float v10, v1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    .end local v2    # "diffLimit":F
    :cond_5
    add-float/2addr v8, v1

    .line 107
    .end local v0    # "arrow":Landroid/view/View;
    .end local v1    # "diff":F
    .end local v7    # "tipScreenPadding":F
    :cond_6
    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 108
    iget-object v10, p0, Ldev;->f:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 66
    .end local v3    # "editButton":Landroid/view/View;
    .end local v8    # "tipX":F
    .end local v9    # "tipY":F
    :cond_7
    sget v10, Lctk$f;->tv_left:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_1
.end method

.method protected final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    const-string/jumbo v0, "im_online_edit_guide_first_show"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_space_bubble_onlineedit_tips:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d(Lcom/alibaba/wukong/im/Message;)Z
    .locals 3
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 40
    .local v0, "type":I
    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1f5

    if-ne v0, v2, :cond_0

    .line 44
    :cond_2
    invoke-static {p1}, Ldkc;->G(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method public final e(Lcom/alibaba/wukong/im/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 113
    iget-boolean v0, p0, Ldev;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Ldev;->e:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Ldev;->d()V

    .line 119
    :cond_0
    return-void
.end method
