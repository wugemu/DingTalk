.class public abstract Lcyd;
.super Lctv;
.source "UserCommonVideoViewHolder.java"


# instance fields
.field protected S:Landroid/widget/ImageView;

.field protected Y:Landroid/widget/TextView;

.field protected Z:Landroid/widget/TextView;

.field protected final a:Z

.field protected aa:Landroid/widget/ImageView;

.field protected ab:Landroid/widget/ProgressBar;

.field protected ac:Landroid/widget/ImageView;

.field protected ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

.field protected ae:Landroid/os/Handler;

.field protected b:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isTo"    # Z

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcyd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 65
    new-instance v0, Lcyd$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcyd$1;-><init>(Lcyd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcyd;->ae:Landroid/os/Handler;

    .line 177
    iput-boolean p1, p0, Lcyd;->a:Z

    .line 178
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcyd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 179
    return-void
.end method

.method static synthetic a(Lcyd;)V
    .locals 2
    .param p0, "x0"    # Lcyd;

    .prologue
    const/4 v1, 0x0

    .line 45
    .line 4137
    invoke-direct {p0, v1}, Lcyd;->e(Z)V

    .line 4138
    iget-object v0, p0, Lcyd;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcyd;I)V
    .locals 2
    .param p0, "x0"    # Lcyd;
    .param p1, "x1"    # I

    .prologue
    const/16 v0, 0x64

    .line 45
    .line 3142
    if-gez p1, :cond_1

    .line 3143
    const/4 p1, 0x0

    .line 3147
    .end local p1    # "x1":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcyd;->ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a(II)V

    .line 3148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcyd;->e(Z)V

    .line 3149
    iget-object v0, p0, Lcyd;->ac:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void

    .line 3144
    .restart local p1    # "x1":I
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    .line 3145
    goto :goto_0
.end method

.method static synthetic a(Lcyd;Z)V
    .locals 1
    .param p0, "x0"    # Lcyd;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcyd;->e(Z)V

    return-void
.end method

.method static synthetic b(Lcyd;I)V
    .locals 4
    .param p0, "x0"    # Lcyd;
    .param p1, "x1"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 45
    .line 4153
    iget-object v1, p0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_2

    .line 4156
    if-gez p1, :cond_0

    move p1, v0

    .line 4159
    .end local p1    # "x1":I
    :cond_0
    iget-object v1, p0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Ldkc;->B(Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v2, :cond_3

    .line 4160
    :cond_1
    invoke-direct {p0, v0}, Lcyd;->e(Z)V

    .line 4161
    iget-object v1, p0, Lcyd;->ac:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4166
    :goto_0
    iget-object v0, p0, Lcyd;->ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->a(II)V

    .line 4167
    iget-object v0, p0, Lcyd;->ab:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4168
    invoke-virtual {p0}, Lcyd;->p()V

    .line 45
    :cond_2
    return-void

    .line 4163
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcyd;->e(Z)V

    .line 4164
    iget-object v0, p0, Lcyd;->ac:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 3
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 335
    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcyd;->ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcyd;->aa:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcyd;->ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcyd;->aa:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

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
    .line 183
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcyd;->S:Landroid/widget/ImageView;

    .line 184
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->video_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyd;->Y:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->video_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcyd;->Z:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->progress_compress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcyd;->ab:Landroid/widget/ProgressBar;

    .line 187
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->img_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcyd;->aa:Landroid/widget/ImageView;

    .line 188
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->img_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcyd;->ac:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lcyd;->r:Landroid/view/View;

    sget v1, Lctk$f;->round_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    iput-object v0, p0, Lcyd;->ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 190
    invoke-virtual {p0, p2}, Lcyd;->c(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcyd;->S:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcyd;->a(Landroid/widget/ImageView;)V

    .line 192
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 22
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 1078
    new-instance v13, Lhcg$a;

    invoke-direct {v13}, Lhcg$a;-><init>()V

    .line 203
    .local v13, "imageProperty":Lhcg$a;
    const/4 v4, 0x0

    .line 1114
    iput v4, v13, Lhcg$a;->e:I

    .line 204
    const/4 v4, 0x0

    .line 2109
    iput-boolean v4, v13, Lhcg$a;->c:Z

    .line 205
    const/4 v4, 0x0

    .line 2119
    iput v4, v13, Lhcg$a;->f:I

    .line 206
    const/4 v4, 0x1

    .line 2124
    iput-boolean v4, v13, Lhcg$a;->d:Z

    .line 208
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xca

    if-eq v4, v5, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfe

    if-ne v4, v5, :cond_7

    .line 210
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 212
    .local v11, "content":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    const-string/jumbo v4, "IM"

    invoke-static/range {p2 .. p2}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v9

    invoke-static {v4, v5, v7, v9}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 213
    .local v8, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v13, v8}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v11, v4}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "authPicUrl":Ljava/lang/String;
    move-object v14, v10

    .local v14, "key":Ljava/lang/String;
    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 220
    :try_start_0
    invoke-static {v14}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 226
    :cond_1
    :goto_0
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v4

    invoke-virtual {v4, v14}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 229
    .local v17, "url":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 230
    move-object/from16 v17, v10

    .line 233
    :cond_2
    move-object/from16 v6, v17

    .line 234
    .local v6, "adapterUrl":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lebj;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 235
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

    .line 237
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->S:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcyd;->L:Landroid/view/View;

    check-cast v7, Landroid/widget/AbsListView;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->Y:Landroid/widget/TextView;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->size()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v4, v18, v20

    if-nez v4, :cond_8

    const-string/jumbo v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->Z:Landroid/widget/TextView;

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->duration()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lebk;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v11, v4}, Ldiq;->b(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v5

    .line 2345
    move-object/from16 v0, p0

    iget-object v7, v0, Lcyd;->ab:Landroid/widget/ProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v7, v0, Lcyd;->aa:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2347
    move-object/from16 v0, p0

    iget-object v7, v0, Lcyd;->ad:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->setVisibility(I)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v7, v0, Lcyd;->ac:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2350
    sget-object v7, Lcyd$6;->a:[I

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/Message$MessageStatus;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 243
    :cond_4
    :goto_2
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicWidth()I

    move-result v16

    .line 244
    .local v16, "picWidth":I
    if-gtz v16, :cond_5

    .line 245
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getWidth()I

    move-result v16

    .line 247
    :cond_5
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getPicHeight()I

    move-result v15

    .line 248
    .local v15, "picHeight":I
    if-gtz v15, :cond_6

    .line 249
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getHeight()I

    move-result v15

    .line 251
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->S:Landroid/widget/ImageView;

    move/from16 v0, v16

    invoke-static {v4, v0, v15}, Lebr;->a(Landroid/widget/ImageView;II)V

    .line 253
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->aa:Landroid/widget/ImageView;

    new-instance v5, Lcyd$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1, v11}, Lcyd$2;-><init>(Lcyd;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .end local v6    # "adapterUrl":Ljava/lang/String;
    .end local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "authPicUrl":Ljava/lang/String;
    .end local v11    # "content":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "picHeight":I
    .end local v16    # "picWidth":I
    .end local v17    # "url":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->S:Landroid/widget/ImageView;

    new-instance v5, Lcyd$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcyd$3;-><init>(Lcyd;Lcom/alibaba/wukong/im/Message;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcyd;->S:Landroid/widget/ImageView;

    sget-object v5, Lcyd;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 331
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    .line 330
    invoke-virtual/range {p0 .. p2}, Lcyd;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 332
    return-void

    .line 221
    .restart local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "authPicUrl":Ljava/lang/String;
    .restart local v11    # "content":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .restart local v14    # "key":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 222
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v6    # "adapterUrl":Ljava/lang/String;
    .restart local v17    # "url":Ljava/lang/String;
    :cond_8
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->size()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 2352
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->ab:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->ac:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2354
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcyd;->e(Z)V

    .line 2355
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcyd;->d:Landroid/app/Activity;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v7, v0, v1}, Lebl;->a(IJ)V

    .line 2357
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->ab:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2358
    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->ac:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2359
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcyd;->e(Z)V

    .line 2360
    invoke-static {}, Lebn;->a()Lebn;

    move-result-object v5

    invoke-virtual {v5, v4}, Lebn;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2361
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcyd;->d:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v0, v1}, Lebl;->a(IJ)V

    goto/16 :goto_2

    .line 2365
    :pswitch_2
    new-instance v7, Lcyd$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcyd$4;-><init>(Lcyd;)V

    .line 2386
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcyd;->d:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->hashCode()I

    move-result v18

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v9, v0, v1, v2, v7}, Lebl;->a(IJLcma;)V

    .line 2387
    new-instance v7, Lcyd$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcyd$5;-><init>(Lcyd;Lcom/alibaba/wukong/im/Message;)V

    .line 3100
    const-string/jumbo v9, "Video"

    invoke-static {v9}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v9

    new-instance v18, Lebj$1;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5, v7}, Lebj$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 2350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcyd;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_video:I

    invoke-static {v2}, Lcyd;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcyd;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyd;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_message_type_video:I

    invoke-static {v2}, Lcyd;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcyd;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcyd;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
