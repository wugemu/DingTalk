.class public final Lcua;
.super Lctv;
.source "CardItemViewHolder.java"


# instance fields
.field private S:Landroid/widget/TextView;

.field private Y:Landroid/view/View;

.field private Z:Landroid/widget/ImageView;

.field private a:Landroid/widget/TextView;

.field private aa:Landroid/view/View;

.field private ab:Lcom/alibaba/doraemon/image/ImageMagician;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lctv;-><init>(Z)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcua;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 45
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcua;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 46
    return-void
.end method

.method static synthetic a(Lcua;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "x0"    # Lcua;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 30
    .line 1124
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Landroid/app/Activity;Landroid/net/Uri;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 141
    sget v0, Lctk$f;->chatting_content_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcua;->a:Landroid/widget/TextView;

    .line 142
    sget v0, Lctk$f;->chatting_content_tv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcua;->S:Landroid/widget/TextView;

    .line 143
    sget v0, Lctk$f;->chatting_content_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcua;->Z:Landroid/widget/ImageView;

    .line 144
    sget v0, Lctk$f;->chatting_content_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcua;->b:Landroid/widget/TextView;

    .line 145
    sget v0, Lctk$f;->chatting_content_jump:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcua;->aa:Landroid/view/View;

    .line 146
    sget v0, Lctk$f;->chatting_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcua;->Y:Landroid/view/View;

    .line 147
    return-void
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 50
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    .line 51
    .local v3, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/16 v15, 0xc9

    if-eq v14, v15, :cond_0

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v14

    const/16 v15, 0x65

    if-ne v14, v15, :cond_1

    :cond_0
    move-object v11, v3

    .line 52
    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 53
    .local v11, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2

    .line 121
    .end local v11    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_1
    :goto_0
    return-void

    .line 57
    .restart local v11    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_2
    :try_start_0
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 58
    .local v6, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "adaptedUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 60
    invoke-static/range {p1 .. p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v14

    const/high16 v15, 0x42700000    # 60.0f

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcms;->c(Landroid/content/Context;F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v13, v14

    .line 63
    .local v13, "width":F
    :try_start_1
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "mediaIdString":Ljava/lang/String;
    invoke-static {v9}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v7

    .line 66
    .local v7, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v7, :cond_5

    .line 67
    invoke-virtual {v7}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v10

    .line 68
    .local v10, "mediaIdWidth":I
    invoke-virtual {v7}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v8

    .line 69
    .local v8, "mediaIdHeight":I
    int-to-float v14, v10

    div-float v14, v13, v14

    int-to-float v15, v8

    mul-float/2addr v14, v15

    float-to-int v5, v14

    .line 74
    .end local v8    # "mediaIdHeight":I
    .end local v10    # "mediaIdWidth":I
    .local v5, "height":I
    :goto_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v14

    float-to-int v15, v13

    const/16 v16, 0x2710

    const/16 v17, 0x1

    .line 75
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v2, v15, v0, v1}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->Z:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 79
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_3

    .line 80
    float-to-int v14, v13

    iput v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    iput v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->Z:Landroid/widget/ImageView;

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcua;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcua;->Z:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->L:Landroid/view/View;

    check-cast v14, Landroid/widget/AbsListView;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v1, v14}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcua;->ab:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcua;->Z:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->L:Landroid/view/View;

    check-cast v14, Landroid/widget/AbsListView;

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v2, v14}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .end local v5    # "height":I
    .end local v7    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v9    # "mediaIdString":Ljava/lang/String;
    .end local v12    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "width":F
    :cond_4
    :goto_2
    :try_start_2
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->a:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_3
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->S:Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->b:Landroid/widget/TextView;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcog;->f(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->Y:Landroid/view/View;

    new-instance v15, Lcua$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v6, v1}, Lcua$1;-><init>(Lcua;Lcom/alibaba/wukong/im/MessageContent$LinkedContent;Landroid/app/Activity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 115
    .end local v2    # "adaptedUrl":Ljava/lang/String;
    .end local v6    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :catch_0
    move-exception v4

    .line 116
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 72
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "adaptedUrl":Ljava/lang/String;
    .restart local v6    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    .restart local v7    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .restart local v9    # "mediaIdString":Ljava/lang/String;
    .restart local v13    # "width":F
    :cond_5
    float-to-int v14, v13

    :try_start_3
    div-int/lit8 v5, v14, 0x2
    :try_end_3
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .restart local v5    # "height":I
    goto/16 :goto_1

    .line 87
    .end local v5    # "height":I
    .end local v7    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v9    # "mediaIdString":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 88
    .local v4, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :try_start_4
    invoke-virtual {v4}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 96
    .end local v4    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v13    # "width":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->a:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->a:Landroid/widget/TextView;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 103
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->S:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcua;->S:Landroid/widget/TextView;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lctk$g;->chatting_item_card:I

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcua;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcua;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcua;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcua;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcua;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcua;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcua;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcua;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcua;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcua;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcua;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcua;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
