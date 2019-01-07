.class public abstract Lczv;
.super Lctv;
.source "UserSpaceVideoViewHolder.java"


# instance fields
.field protected S:Lcom/alibaba/doraemon/image/ImageMagician;

.field protected Y:Landroid/widget/ImageView;

.field protected Z:Landroid/widget/TextView;

.field private a:Lpl/droidsonroids/gif/GifImageView;

.field protected aa:Landroid/widget/TextView;

.field protected ab:Landroid/widget/ImageView;

.field protected ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isTo"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lctv;-><init>(Z)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 57
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 58
    return-void
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
    .line 62
    iget-object v0, p0, Lczv;->r:Landroid/view/View;

    sget v1, Lctk$f;->chatting_content_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczv;->Y:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lczv;->r:Landroid/view/View;

    sget v1, Lctk$f;->video_size:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczv;->Z:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lczv;->r:Landroid/view/View;

    sget v1, Lctk$f;->video_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lczv;->aa:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lczv;->r:Landroid/view/View;

    sget v1, Lctk$f;->cspace_watermark:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lczv;->ab:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lczv;->ab:Landroid/widget/ImageView;

    invoke-static {}, Lczx;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lczv;->ab:Landroid/widget/ImageView;

    new-instance v1, Lczv$1;

    invoke-direct {v1, p0}, Lczv$1;-><init>(Lczv;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    sget v0, Lctk$f;->iv_remind:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lpl/droidsonroids/gif/GifImageView;

    iput-object v0, p0, Lczv;->a:Lpl/droidsonroids/gif/GifImageView;

    .line 74
    iget-object v0, p0, Lczv;->Y:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lczv;->a(Landroid/widget/ImageView;)V

    .line 75
    invoke-virtual {p0, p2}, Lczv;->c(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method protected abstract a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;I)V
    .locals 22
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "position"    # I

    .prologue
    .line 84
    if-eqz p2, :cond_4

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v4, :cond_4

    move-object/from16 v4, p2

    .line 85
    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 86
    .local v20, "thirdPartyDo":Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v4, :cond_4

    move-object/from16 v19, v20

    .line 87
    check-cast v19, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 88
    .local v19, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lczv;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1078
    new-instance v15, Lhcg$a;

    invoke-direct {v15}, Lhcg$a;-><init>()V

    .line 91
    .local v15, "imageProperty":Lhcg$a;
    const/4 v4, 0x0

    .line 1109
    iput-boolean v4, v15, Lhcg$a;->c:Z

    .line 92
    const/4 v4, 0x0

    .line 1119
    iput v4, v15, Lhcg$a;->f:I

    .line 93
    const/4 v4, 0x1

    .line 1124
    iput-boolean v4, v15, Lhcg$a;->d:Z

    .line 95
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 96
    .local v21, "url":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    move-object/from16 v0, v19

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    .line 98
    .local v13, "authMediaId":Ljava/lang/String;
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v4

    invoke-virtual {v4, v13}, Ldjv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 99
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    :try_start_0
    invoke-static {v13}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 106
    :cond_0
    :goto_0
    const-string/jumbo v4, "DINGDRIVE"

    .line 107
    invoke-static/range {v19 .. v19}, Lczx;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthCode:Ljava/lang/String;

    const/4 v7, 0x0

    .line 106
    invoke-static {v4, v5, v6, v7}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    .line 108
    .local v18, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 111
    .end local v13    # "authMediaId":Ljava/lang/String;
    .end local v18    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->d:Landroid/app/Activity;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v4, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v17

    .line 112
    .local v17, "minSize":I
    move-object/from16 v0, v19

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    move/from16 v0, v17

    if-lt v4, v0, :cond_2

    move-object/from16 v0, v19

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    :cond_2
    const/16 v16, 0x1

    .line 113
    .local v16, "isSmallThumbnail":Z
    :goto_1
    if-eqz v16, :cond_d

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, Lczv;->Y:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lczv;->L:Landroid/view/View;

    check-cast v7, Landroid/widget/AbsListView;

    .line 1132
    if-eqz p1, :cond_3

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v15, :cond_3

    if-eqz v5, :cond_3

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v4, :cond_6

    .line 119
    .end local v21    # "url":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->Z:Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-static {v6, v7}, Lhcs;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->aa:Landroid/widget/TextView;

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->duration:J

    invoke-static {v6, v7}, Lebk;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v15    # "imageProperty":Lhcg$a;
    .end local v16    # "isSmallThumbnail":Z
    .end local v17    # "minSize":I
    .end local v19    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v20    # "thirdPartyDo":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->Y:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lczv;->V:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v6, v7}, Lczw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lcts;J)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->Y:Landroid/widget/ImageView;

    sget-object v5, Lczv;->c:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 126
    invoke-virtual/range {p0 .. p2}, Lczv;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->Y:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lczv;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->a:Lpl/droidsonroids/gif/GifImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4}, Ldiw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;Lpl/droidsonroids/gif/GifImageView;)V

    .line 129
    return-void

    .line 102
    .restart local v13    # "authMediaId":Ljava/lang/String;
    .restart local v15    # "imageProperty":Lhcg$a;
    .restart local v19    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .restart local v20    # "thirdPartyDo":Ljava/lang/Object;
    .restart local v21    # "url":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 103
    .local v14, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v14}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 112
    .end local v13    # "authMediaId":Ljava/lang/String;
    .end local v14    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v17    # "minSize":I
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1137
    .restart local v16    # "isSmallThumbnail":Z
    :cond_6
    invoke-static/range {p1 .. p1}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v4

    .line 1138
    const/high16 v6, 0x42f00000    # 120.0f

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v6

    .line 1139
    new-instance v8, Lhcg$c;

    .line 1184
    iget-object v4, v4, Lhcg$c;->a:Lhcg$b;

    .line 1139
    new-instance v9, Lhcg$b;

    invoke-direct {v9, v6, v6}, Lhcg$b;-><init>(II)V

    invoke-direct {v8, v4, v9}, Lhcg$c;-><init>(Lhcg$b;Lhcg$b;)V

    .line 1140
    new-instance v4, Lhcg$b;

    move-object/from16 v0, p0

    iget-object v6, v0, Lczv;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v6, v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lczv;->ac:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v9, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picHeight:I

    invoke-direct {v4, v6, v9}, Lhcg$b;-><init>(II)V

    invoke-static {v8, v4}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v4

    .line 2164
    iget v10, v4, Lhcg$b;->a:I

    .line 2184
    iget-object v6, v8, Lhcg$c;->a:Lhcg$b;

    .line 1142
    invoke-static {v6, v4}, Lhcg;->a(Lhcg$b;Lhcg$b;)Lhcg$b;

    move-result-object v4

    .line 1144
    iget-boolean v6, v15, Lhcg$a;->b:Z

    if-eqz v6, :cond_8

    .line 1145
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1146
    if-eqz v6, :cond_8

    .line 3164
    iget v8, v4, Lhcg$b;->a:I

    .line 1147
    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3168
    iget v4, v4, Lhcg$b;->b:I

    .line 1148
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1150
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v4, v8, :cond_7

    .line 1151
    invoke-virtual {v5}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v4

    .line 1152
    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v8, :cond_7

    if-lez v4, :cond_7

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v4, v8, :cond_7

    .line 1153
    int-to-float v8, v4

    iget v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1154
    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1155
    iget v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1161
    :cond_7
    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    :cond_8
    iget-boolean v4, v15, Lhcg$a;->c:Z

    if-eqz v4, :cond_a

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v6, 0x0

    iget-object v8, v15, Lhcg$a;->l:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 1173
    :goto_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "file:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    const/4 v4, 0x1

    .line 1174
    :goto_5
    if-nez v4, :cond_f

    if-eqz v10, :cond_f

    iget-boolean v4, v15, Lhcg$a;->d:Z

    if-eqz v4, :cond_f

    .line 1175
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v4

    iget v6, v15, Lhcg$a;->a:I

    const/16 v8, 0x2710

    const/4 v9, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v6, v8, v9}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v21

    .end local v21    # "url":Ljava/lang/String;
    move-object/from16 v6, v21

    .line 1178
    :goto_6
    iget-boolean v4, v15, Lhcg$a;->c:Z

    if-eqz v4, :cond_c

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    iget v8, v15, Lhcg$a;->f:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v15, Lhcg$a;->l:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 1169
    .restart local v21    # "url":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v6, 0x0

    iget-object v8, v15, Lhcg$a;->l:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_4

    .line 1173
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 1181
    .end local v21    # "url":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    iget v8, v15, Lhcg$a;->f:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, v15, Lhcg$a;->l:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-interface/range {v4 .. v12}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 3186
    .restart local v21    # "url":Ljava/lang/String;
    :cond_d
    if-eqz p2, :cond_3

    .line 3189
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3190
    move-object/from16 v0, p0

    iget-object v5, v0, Lczv;->Y:Landroid/widget/ImageView;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v9, v0, Lczv;->L:Landroid/view/View;

    check-cast v9, Landroid/widget/AbsListView;

    move-object/from16 v4, p1

    move-object/from16 v7, v21

    move-object v10, v15

    invoke-static/range {v4 .. v10}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto/16 :goto_2

    .line 3192
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lczv;->Y:Landroid/widget/ImageView;

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lczv;->S:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v9, v0, Lczv;->L:Landroid/view/View;

    check-cast v9, Landroid/widget/AbsListView;

    move-object/from16 v4, p1

    move-object/from16 v7, v21

    move-object v10, v15

    invoke-static/range {v4 .. v10}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto/16 :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_3

    :cond_f
    move-object/from16 v6, v21

    goto/16 :goto_6
.end method

.method protected abstract c(Landroid/view/View;)V
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lczv;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lctk$i;->dt_accessibility_conversation_send_video:I

    invoke-static {v2}, Lczv;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lczv;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczv;->a(Landroid/widget/TextView;)Ljava/lang/String;

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
    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lctk$i;->dt_accessibility_message_type_video:I

    invoke-static {v2}, Lczv;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lczv;->Z:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lczv;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
