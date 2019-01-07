.class public Ldoc;
.super Landroid/text/style/ReplacementSpan;
.source "ImageSpanAdapter.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;

.field public c:Lcom/alibaba/doraemon/image/ImageMagician;

.field public d:Ljava/lang/String;

.field private e:Lcom/alibaba/wukong/im/Message;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/AbsListView;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private final n:I

.field private o:F

.field private p:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Landroid/widget/AbsListView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p6, "absListView"    # Landroid/widget/AbsListView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/doraemon/image/ImageMagician;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Landroid/widget/AbsListView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 194
    new-instance v1, Ldoc$2;

    invoke-direct {v1, p0}, Ldoc$2;-><init>(Ldoc;)V

    iput-object v1, p0, Ldoc;->p:Landroid/graphics/drawable/Drawable$Callback;

    .line 64
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ImageSpanAdapter params cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$d;->im_md_inner_img_diff:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Ldoc;->n:I

    .line 68
    new-instance v1, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ldoc;->b:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;

    .line 69
    iput-object p2, p0, Ldoc;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 70
    iput-object p3, p0, Ldoc;->d:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Ldoc;->e:Lcom/alibaba/wukong/im/Message;

    .line 72
    iput-object p5, p0, Ldoc;->f:Ljava/util/Map;

    .line 73
    iput-object p6, p0, Ldoc;->g:Landroid/widget/AbsListView;

    .line 74
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$e;->chatting_default_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Ldoc;->h:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 76
    .local v0, "initSize":I
    iget-object v1, p0, Ldoc;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Ldoc;->o:F

    .line 78
    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldoc;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic a(Ldoc;)V
    .locals 2
    .param p0, "x0"    # Ldoc;

    .prologue
    const/4 v1, 0x0

    .line 43
    .line 1188
    iget-object v0, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1190
    iput-object v1, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic a(Ldoc;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "x0"    # Ldoc;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 43
    .line 2177
    if-eqz p1, :cond_0

    .line 2178
    iput-object p1, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    .line 2179
    iget-object v0, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Ldoc;->l:I

    iget v2, p0, Ldoc;->k:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2180
    iget-object v0, p0, Ldoc;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Ldoc;->p:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2181
    iget-object v0, p0, Ldoc;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2182
    iget-object v0, p0, Ldoc;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 43
    :cond_0
    return-void
.end method

.method static synthetic b(Ldoc;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Ldoc;

    .prologue
    .line 43
    iget-object v0, p0, Ldoc;->a:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 23
    .param p1, "forceClear"    # Z

    .prologue
    .line 89
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Ldoc;->j:Z

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->n:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->m:I

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->h:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iget v8, v0, Ldoc;->m:I

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->b:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;

    new-instance v4, Ldoc$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ldoc$1;-><init>(Ldoc;)V

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;->setImageListener(Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate$a;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Ldoc;->d:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 102
    .local v22, "usingUrl":Ljava/lang/String;
    const/4 v12, 0x0

    .line 103
    .local v12, "authMediaId":Ljava/lang/String;
    const/4 v11, 0x0

    .line 105
    .local v11, "authCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->f:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->f:Ljava/util/Map;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 107
    .local v13, "authMediaParam":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    if-eqz v13, :cond_0

    .line 108
    iget-object v12, v13, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 109
    iget-object v11, v13, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    .line 112
    .end local v13    # "authMediaParam":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    move-object/from16 v22, v12

    .line 115
    :cond_1
    const/4 v5, 0x0

    .line 116
    .local v5, "finalUrl":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ldjy;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    invoke-static/range {v22 .. v22}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 119
    .local v16, "mediaId":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v17

    .line 120
    .local v17, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    if-lez v3, :cond_6

    .line 121
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_b

    .line 122
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->m:I

    if-lt v3, v4, :cond_a

    .line 123
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->m:I

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 124
    .local v18, "ratio":F
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->l:I

    .line 125
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float v3, v3, v18

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->k:I

    .line 142
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->k:I

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->l:I

    if-gtz v3, :cond_3

    .line 143
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->k:I

    .line 144
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->l:I

    .line 147
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->k:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->o:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v20, v0

    .line 148
    .local v20, "targetHeightDp":I
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->l:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->o:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    .line 149
    .local v21, "targetWidthDp":I
    if-lez v20, :cond_4

    if-gtz v21, :cond_5

    .line 150
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Ldoc;->k:I

    move/from16 v20, v0

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Ldoc;->l:I

    move/from16 v21, v0

    .line 154
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 155
    .local v15, "imageUrl":Ljava/lang/String;
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v19

    .line 156
    .local v19, "strategy":Lhcj;
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v15, v1, v2}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 162
    .end local v15    # "imageUrl":Ljava/lang/String;
    .end local v16    # "mediaId":Ljava/lang/String;
    .end local v17    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v18    # "ratio":F
    .end local v19    # "strategy":Lhcj;
    .end local v20    # "targetHeightDp":I
    .end local v21    # "targetWidthDp":I
    :cond_6
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->k:I

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->l:I

    if-gtz v3, :cond_8

    .line 163
    :cond_7
    move-object/from16 v5, v22

    .line 164
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->k:I

    .line 165
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->l:I

    .line 167
    :cond_8
    const/4 v10, 0x0

    .line 168
    .local v10, "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v3, :cond_9

    .line 169
    const-string/jumbo v3, "IM"

    move-object/from16 v0, p0

    iget-object v4, v0, Ldoc;->e:Lcom/alibaba/wukong/im/Message;

    invoke-static {v4}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ldoc;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v6

    invoke-static {v3, v4, v11, v6}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    .line 171
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, p0

    iget-object v4, v0, Ldoc;->b:Lcom/alibaba/android/dingtalkim/mdrender/view/ImageViewDelegate;

    move-object/from16 v0, p0

    iget-object v6, v0, Ldoc;->g:Landroid/widget/AbsListView;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Ldoc;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 174
    return-void

    .line 127
    .end local v10    # "authParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "mediaId":Ljava/lang/String;
    .restart local v17    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 128
    .restart local v18    # "ratio":F
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->l:I

    .line 129
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->k:I
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 158
    .end local v17    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v18    # "ratio":F
    :catch_0
    move-exception v14

    .line 159
    .local v14, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v14}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 132
    .end local v14    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v17    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    :cond_b
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->m:I

    if-lt v3, v4, :cond_c

    .line 133
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Ldoc;->m:I

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 134
    .restart local v18    # "ratio":F
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->k:I

    .line 135
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float v3, v3, v18

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->l:I

    goto/16 :goto_0

    .line 137
    .end local v18    # "ratio":F
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v18, v3, v4

    .line 138
    .restart local v18    # "ratio":F
    move-object/from16 v0, p0

    iget v3, v0, Ldoc;->m:I

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->k:I

    .line 139
    invoke-virtual/range {v17 .. v17}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v18

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Ldoc;->l:I
    :try_end_2
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    invoke-direct {p0}, Ldoc;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 246
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 247
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 248
    .local v2, "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v5, v6

    .line 249
    .local v3, "fontHeight":I
    iget v5, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v5, p7

    div-int/lit8 v6, v3, 0x2

    sub-int v0, v5, v6

    .line 250
    .local v0, "centerY":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v4, v0, v5

    .line 251
    .local v4, "transY":I
    int-to-float v5, v4

    invoke-virtual {p1, p5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 254
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    invoke-direct {p0}, Ldoc;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 228
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 229
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz p5, :cond_0

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 231
    .local v3, "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v4, v6, v7

    .line 232
    .local v4, "fontHeight":I
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int v1, v6, v7

    .line 233
    .local v1, "drHeight":I
    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    div-int/lit8 v7, v4, 0x2

    add-int v0, v6, v7

    .line 235
    .local v0, "centerY":I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, v0, v6

    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 236
    iget v6, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 237
    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v0

    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 238
    iget v6, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v6, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 240
    .end local v0    # "centerY":I
    .end local v1    # "drHeight":I
    .end local v3    # "fmPaint":Landroid/graphics/Paint$FontMetricsInt;
    .end local v4    # "fontHeight":I
    :cond_0
    iget v6, v5, Landroid/graphics/Rect;->right:I

    return v6
.end method
