.class public abstract Ldah;
.super Lctv;
.source "UserVideoViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected final a:Z

.field protected b:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Ldah;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 59
    iput-boolean p1, p0, Ldah;->a:Z

    .line 60
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldah;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 61
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p0}, Ldah;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 227
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Ldah;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldah;->S:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Ldah;->r:Landroid/view/View;

    sget v1, Lctk$f;->video_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldah;->Y:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Ldah;->r:Landroid/view/View;

    sget v1, Lctk$f;->video_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldah;->Z:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Ldah;->S:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Ldah;->a(Landroid/widget/ImageView;)V

    .line 69
    invoke-virtual {p0, p2}, Ldah;->c(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 20
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 1078
    new-instance v13, Lhcg$a;

    invoke-direct {v13}, Lhcg$a;-><init>()V

    .line 81
    .local v13, "imageProperty":Lhcg$a;
    const/4 v4, 0x0

    .line 1114
    iput v4, v13, Lhcg$a;->e:I

    .line 82
    const/4 v4, 0x0

    .line 2109
    iput-boolean v4, v13, Lhcg$a;->c:Z

    .line 83
    const/4 v4, 0x0

    .line 2119
    iput v4, v13, Lhcg$a;->f:I

    .line 84
    const/4 v4, 0x1

    .line 2124
    iput-boolean v4, v13, Lhcg$a;->d:Z

    .line 85
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0x67

    if-eq v4, v5, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfd

    if-ne v4, v5, :cond_6

    .line 86
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 87
    .local v11, "content":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    const-string/jumbo v4, "IM"

    .line 88
    invoke-static/range {p2 .. p2}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v9

    invoke-static {v4, v5, v7, v9}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 89
    .local v8, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v13, v8}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 92
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "authPicUrl":Ljava/lang/String;
    move-object v14, v10

    .local v14, "key":Ljava/lang/String;
    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    :try_start_0
    invoke-static {v14}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 102
    :cond_1
    :goto_0
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v4

    invoke-virtual {v4, v14}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, "url":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    move-object/from16 v17, v10

    .line 109
    :cond_2
    move-object/from16 v6, v17

    .line 110
    .local v6, "adapterUrl":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ldah;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 111
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lctk$d;->chat_item_video_width:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v9, Lctk$d;->chat_item_video_height:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v7, v9}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v6

    .line 113
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Ldah;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v5, v0, Ldah;->S:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Ldah;->L:Landroid/view/View;

    check-cast v7, Landroid/widget/AbsListView;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Ldah;->Y:Landroid/widget/TextView;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->size()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v4, v0, Ldah;->Z:Landroid/widget/TextView;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->duration()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lebk;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicWidth()I

    move-result v16

    .line 119
    .local v16, "picWidth":I
    if-gtz v16, :cond_4

    .line 120
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getWidth()I

    move-result v16

    .line 122
    :cond_4
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getPicHeight()I

    move-result v15

    .line 123
    .local v15, "picHeight":I
    if-gtz v15, :cond_5

    .line 124
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getHeight()I

    move-result v15

    .line 126
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Ldah;->S:Landroid/widget/ImageView;

    move/from16 v0, v16

    invoke-static {v4, v0, v15}, Lebr;->a(Landroid/widget/ImageView;II)V

    .line 128
    .end local v6    # "adapterUrl":Ljava/lang/String;
    .end local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "authPicUrl":Ljava/lang/String;
    .end local v11    # "content":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "picHeight":I
    .end local v16    # "picWidth":I
    .end local v17    # "url":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Ldah;->S:Landroid/widget/ImageView;

    new-instance v5, Ldah$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Ldah$1;-><init>(Ldah;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Ldah;->S:Landroid/widget/ImageView;

    sget-object v5, Ldah;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 221
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    invoke-virtual/range {p0 .. p2}, Ldah;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v4, v0, Ldah;->S:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Ldah;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 224
    return-void

    .line 97
    .restart local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "authPicUrl":Ljava/lang/String;
    .restart local v11    # "content":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    .restart local v14    # "key":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 98
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ldah;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_video:I

    invoke-static {v2}, Ldah;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ldah;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldah;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_message_type_video:I

    invoke-static {v2}, Ldah;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Ldah;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Ldah;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
