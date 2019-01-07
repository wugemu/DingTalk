.class public final Lhcg;
.super Ljava/lang/Object;
.source "ChatMsgImageCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhcg$c;,
        Lhcg$b;,
        Lhcg$a;
    }
.end annotation


# static fields
.field private static a:Lhcg$c;

.field private static b:Lhcg$c;

.field private static c:Lhcg$c;

.field private static d:Lhcg$c;

.field private static e:Lhcg$c;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lhcg;->b:Lhcg$c;

    .line 58
    sput-object v0, Lhcg;->c:Lhcg$c;

    .line 59
    sput-object v0, Lhcg;->d:Lhcg$c;

    .line 60
    sput-object v0, Lhcg;->e:Lhcg$c;

    .line 814
    const-string/jumbo v0, ".gif"

    sput-object v0, Lhcg;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static a(Lhcg$b;Lhcg$b;)Lhcg$b;
    .locals 3
    .param p0, "maxSize"    # Lhcg$b;
    .param p1, "orig"    # Lhcg$b;

    .prologue
    .line 389
    .line 5164
    iget v1, p1, Lhcg$b;->a:I

    .line 5168
    .local v1, "width":I
    iget v0, p1, Lhcg$b;->b:I

    .line 6164
    .local v0, "height":I
    iget v2, p0, Lhcg$b;->a:I

    .line 392
    if-le v1, v2, :cond_1

    .line 7164
    iget v1, p0, Lhcg$b;->a:I

    .line 398
    :cond_0
    :goto_0
    new-instance v2, Lhcg$b;

    invoke-direct {v2, v1, v0}, Lhcg$b;-><init>(II)V

    return-object v2

    .line 7168
    :cond_1
    iget v2, p0, Lhcg$b;->b:I

    .line 394
    if-le v0, v2, :cond_0

    .line 8168
    iget v0, p0, Lhcg$b;->b:I

    .line 395
    goto :goto_0
.end method

.method public static a(Lhcg$c;Lhcg$b;)Lhcg$b;
    .locals 10
    .param p0, "boundary"    # Lhcg$c;
    .param p1, "orig"    # Lhcg$b;

    .prologue
    .line 238
    move-object v6, p1

    .line 240
    .local v6, "ret":Lhcg$b;
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1164
    iget v7, p1, Lhcg$b;->a:I

    .line 1168
    .local v7, "width":I
    iget v0, p1, Lhcg$b;->b:I

    .line 245
    .local v0, "height":I
    if-lez v7, :cond_2

    if-lez v0, :cond_2

    .line 1184
    iget-object v8, p0, Lhcg$c;->a:Lhcg$b;

    .line 2154
    iget v2, v8, Lhcg$b;->a:I

    .line 2184
    .local v2, "maxWidth":I
    iget-object v8, p0, Lhcg$c;->a:Lhcg$b;

    .line 3154
    iget v1, v8, Lhcg$b;->b:I

    .line 3188
    .local v1, "maxHeight":I
    iget-object v8, p0, Lhcg$c;->b:Lhcg$b;

    .line 4154
    iget v4, v8, Lhcg$b;->a:I

    .line 4188
    .local v4, "minWidth":I
    iget-object v8, p0, Lhcg$c;->b:Lhcg$b;

    .line 5154
    iget v3, v8, Lhcg$b;->b:I

    .line 254
    .local v3, "minHeight":I
    const/high16 v5, 0x3f800000    # 1.0f

    .line 255
    .local v5, "ratio":F
    if-le v7, v0, :cond_4

    .line 256
    if-le v7, v2, :cond_3

    .line 257
    int-to-float v8, v2

    int-to-float v9, v7

    div-float v5, v8, v9

    .line 261
    :cond_0
    :goto_0
    int-to-float v8, v0

    mul-float/2addr v8, v5

    int-to-float v9, v3

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 262
    int-to-float v8, v3

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 275
    :cond_1
    :goto_1
    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v7, v8

    .line 276
    int-to-float v8, v0

    mul-float/2addr v8, v5

    float-to-int v0, v8

    .line 278
    new-instance v6, Lhcg$b;

    .end local v6    # "ret":Lhcg$b;
    invoke-direct {v6, v7, v0}, Lhcg$b;-><init>(II)V

    .line 282
    .end local v0    # "height":I
    .end local v1    # "maxHeight":I
    .end local v2    # "maxWidth":I
    .end local v3    # "minHeight":I
    .end local v4    # "minWidth":I
    .end local v5    # "ratio":F
    .end local v7    # "width":I
    .restart local v6    # "ret":Lhcg$b;
    :cond_2
    return-object v6

    .line 258
    .restart local v0    # "height":I
    .restart local v1    # "maxHeight":I
    .restart local v2    # "maxWidth":I
    .restart local v3    # "minHeight":I
    .restart local v4    # "minWidth":I
    .restart local v5    # "ratio":F
    .restart local v7    # "width":I
    :cond_3
    if-ge v7, v4, :cond_0

    .line 259
    int-to-float v8, v4

    int-to-float v9, v7

    div-float v5, v8, v9

    goto :goto_0

    .line 265
    :cond_4
    if-le v0, v1, :cond_6

    .line 266
    int-to-float v8, v1

    int-to-float v9, v0

    div-float v5, v8, v9

    .line 270
    :cond_5
    :goto_2
    int-to-float v8, v7

    mul-float/2addr v8, v5

    int-to-float v9, v4

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 271
    int-to-float v8, v4

    int-to-float v9, v7

    div-float v5, v8, v9

    goto :goto_1

    .line 267
    :cond_6
    if-ge v0, v3, :cond_5

    .line 268
    int-to-float v8, v3

    int-to-float v9, v0

    div-float v5, v8, v9

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Lhcg$c;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 194
    sget-object v4, Lhcg;->a:Lhcg$c;

    .line 195
    .local v4, "size":Lhcg$c;
    sget-object v5, Lhcg;->a:Lhcg$c;

    if-nez v5, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 198
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v3, v5, 0x4

    .line 200
    .local v3, "screenSize":I
    const v5, 0x43848000    # 265.0f

    invoke-static {p0, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 201
    .local v1, "maxSize":I
    const/high16 v5, 0x42960000    # 75.0f

    invoke-static {p0, v5}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 204
    .local v2, "minSize":I
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 205
    new-instance v4, Lhcg$c;

    .end local v4    # "size":Lhcg$c;
    new-instance v5, Lhcg$b;

    invoke-direct {v5, v1, v1}, Lhcg$b;-><init>(II)V

    new-instance v6, Lhcg$b;

    invoke-direct {v6, v2, v2}, Lhcg$b;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lhcg$c;-><init>(Lhcg$b;Lhcg$b;)V

    .line 206
    sput-object v4, Lhcg;->a:Lhcg$c;

    .line 212
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "maxSize":I
    .end local v2    # "minSize":I
    .end local v3    # "screenSize":I
    .restart local v4    # "size":Lhcg$c;
    :cond_0
    :goto_0
    return-object v4

    .line 208
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v1    # "maxSize":I
    .restart local v2    # "minSize":I
    .restart local v3    # "screenSize":I
    :cond_1
    new-instance v4, Lhcg$c;

    .end local v4    # "size":Lhcg$c;
    new-instance v5, Lhcg$b;

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lhcg$b;-><init>(II)V

    new-instance v6, Lhcg$b;

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lhcg$b;-><init>(II)V

    invoke-direct {v4, v5, v6}, Lhcg$c;-><init>(Lhcg$b;Lhcg$b;)V

    .restart local v4    # "size":Lhcg$c;
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "entity"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 718
    const/4 v3, 0x0

    .line 720
    .local v3, "ret":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 722
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 723
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 724
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    const/16 v5, 0xfb

    if-ne v4, v5, :cond_1

    :cond_0
    instance-of v4, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 726
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 14742
    .local v2, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v2, :cond_3

    .line 14743
    invoke-static {}, Lcom/alibaba/wukong/im/AuthProviderProxy;->getInstance()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 14744
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v3

    .line 728
    :goto_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 730
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 738
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v2    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_1
    :goto_1
    return-object v3

    .line 14746
    .restart local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .restart local v2    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 14749
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V
    .locals 30
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "magician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p5, "parent"    # Landroid/widget/AbsListView;
    .param p6, "imageProperty"    # Lhcg$a;

    .prologue
    .line 418
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    if-eqz p6, :cond_4

    .line 420
    const v3, 0x19830202

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 422
    invoke-static/range {p0 .. p0}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v3

    .line 8173
    iget-object v0, v3, Lhcg$c;->a:Lhcg$b;

    move-object/from16 v26, v0

    .line 423
    .local v26, "size":Lhcg$b;
    const/4 v14, 0x0

    .line 424
    .local v14, "expectWidth":I
    invoke-static/range {p3 .. p3}, Lhcg;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 425
    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->e:I

    .line 8775
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8776
    const/16 v16, 0x0

    .line 426
    .local v16, "localSize":Lhcg$b;
    :goto_0
    if-eqz v16, :cond_0

    .line 427
    move-object/from16 v26, v16

    .line 508
    .end local v16    # "localSize":Lhcg$b;
    :cond_0
    :goto_1
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->b:Z

    if-eqz v3, :cond_2

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 511
    .local v23, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v23, :cond_2

    if-eqz v26, :cond_2

    .line 12164
    move-object/from16 v0, v26

    iget v3, v0, Lhcg$b;->a:I

    .line 512
    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12168
    move-object/from16 v0, v26

    iget v3, v0, Lhcg$b;->b:I

    .line 513
    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 515
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 516
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v19

    .line 517
    .local v19, "maxWidth":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_1

    if-lez v19, :cond_1

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    .line 518
    move/from16 v0, v19

    int-to-float v3, v0

    move-object/from16 v0, v23

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    div-float v15, v3, v4

    .line 519
    .local v15, "factor":F
    move/from16 v0, v19

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 520
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    .end local v15    # "factor":F
    .end local v19    # "maxWidth":I
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_15

    .line 532
    const/4 v5, 0x0

    move-object/from16 v0, p6

    iget-object v7, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v8, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    .line 539
    :goto_3
    move-object/from16 v12, p3

    .local v12, "adaptedUrl":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lhcg;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 540
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_16

    .line 541
    invoke-static {v12}, Lhda;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iget v7, v0, Lhcg$a;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 548
    :cond_3
    :goto_4
    if-eqz v14, :cond_18

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->d:Z

    if-eqz v3, :cond_18

    .line 549
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    move-object/from16 v0, p6

    iget v4, v0, Lhcg$a;->a:I

    const/16 v6, 0x2710

    const/4 v7, 0x1

    .line 550
    invoke-virtual {v3, v12, v4, v6, v7}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v5

    .line 553
    .end local v12    # "adaptedUrl":Ljava/lang/String;
    .local v5, "adaptedUrl":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_17

    .line 554
    move-object/from16 v0, p6

    iget v7, v0, Lhcg$a;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 559
    .end local v5    # "adaptedUrl":Ljava/lang/String;
    .end local v14    # "expectWidth":I
    .end local v26    # "size":Lhcg$b;
    :cond_4
    :goto_6
    return-void

    .line 8778
    .restart local v14    # "expectWidth":I
    .restart local v26    # "size":Lhcg$b;
    :cond_5
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 8779
    const/4 v4, 0x1

    iput v4, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8780
    const/4 v4, 0x1

    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 8781
    move-object/from16 v0, p3

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8783
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v4, :cond_6

    .line 8784
    const-string/jumbo v3, "fixImage->getSize"

    const-string/jumbo v4, "Image doesn\'t exist or decode Bounds err!"

    invoke-static {v3, v4}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8785
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 8790
    :cond_6
    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    const/4 v4, 0x6

    if-ne v3, v4, :cond_9

    .line 8791
    :cond_7
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 8792
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8798
    :goto_7
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v6

    .line 8799
    div-int/lit8 v3, v4, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    .line 8801
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v7

    .line 8802
    new-instance v3, Lhcg$b;

    invoke-direct {v3, v4, v6}, Lhcg$b;-><init>(II)V

    .line 9228
    if-eqz v7, :cond_8

    if-eqz v3, :cond_8

    .line 9229
    invoke-static {v7, v3}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v3

    .line 10184
    iget-object v4, v7, Lhcg$c;->a:Lhcg$b;

    .line 9230
    invoke-static {v4, v3}, Lhcg;->a(Lhcg$b;Lhcg$b;)Lhcg$b;

    move-result-object v3

    :cond_8
    move-object/from16 v16, v3

    .line 9233
    goto/16 :goto_0

    .line 8794
    :cond_9
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 8795
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_7

    .line 434
    :cond_a
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 435
    invoke-static/range {p3 .. p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v20

    .line 436
    .local v20, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    invoke-static/range {p3 .. p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 442
    :goto_8
    if-eqz v20, :cond_0

    .line 446
    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->e:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->e:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_13

    .line 447
    :cond_b
    invoke-virtual/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v25

    .line 448
    .local v25, "realWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v24

    .line 454
    .local v24, "realHeight":I
    :goto_9
    div-int/lit8 v3, v24, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v24

    .line 455
    div-int/lit8 v3, v25, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v25

    .line 457
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, ".gif"

    invoke-static/range {p3 .. p3}, Lhct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->k:Z

    if-eqz v3, :cond_11

    .line 459
    move-object/from16 v0, p6

    iget v0, v0, Lhcg$a;->i:I

    move/from16 v19, v0

    .line 460
    .restart local v19    # "maxWidth":I
    if-gtz v19, :cond_c

    .line 461
    const/16 v19, 0x12c

    .line 464
    :cond_c
    move-object/from16 v0, p6

    iget v0, v0, Lhcg$a;->j:I

    move/from16 v17, v0

    .line 465
    .local v17, "maxHeight":I
    if-gtz v17, :cond_d

    .line 466
    const/16 v17, 0x12c

    .line 469
    :cond_d
    move/from16 v29, v25

    .line 470
    .local v29, "targetWidth":I
    move/from16 v28, v24

    .line 471
    .local v28, "targetHeight":I
    move/from16 v0, v25

    move/from16 v1, v19

    if-gt v0, v1, :cond_e

    move/from16 v0, v24

    move/from16 v1, v17

    if-le v0, v1, :cond_f

    .line 472
    :cond_e
    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_14

    .line 473
    move/from16 v0, v19

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    div-float v15, v3, v4

    .line 474
    .restart local v15    # "factor":F
    move/from16 v29, v19

    .line 475
    move/from16 v0, v24

    int-to-float v3, v0

    mul-float/2addr v3, v15

    float-to-int v0, v3

    move/from16 v28, v0

    .line 483
    .end local v15    # "factor":F
    :cond_f
    :goto_a
    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    move/from16 v0, v28

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    .line 484
    :cond_10
    move/from16 v25, v29

    .line 485
    move/from16 v24, v28

    .line 10819
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 10820
    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 10821
    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 10822
    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 10823
    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 10824
    sget-object v4, Lhcg;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 10826
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 490
    .end local v17    # "maxHeight":I
    .end local v19    # "maxWidth":I
    .end local v28    # "targetHeight":I
    .end local v29    # "targetWidth":I
    :cond_11
    invoke-static/range {p0 .. p0}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v18

    .line 491
    .local v18, "maxSize":Lhcg$c;
    new-instance v22, Lhcg$b;

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lhcg$b;-><init>(II)V

    .line 492
    .local v22, "orig":Lhcg$b;
    move-object/from16 v26, v22

    .line 495
    if-eqz v18, :cond_0

    if-eqz v22, :cond_0

    .line 496
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v27

    .line 11164
    .local v27, "suitableSize":Lhcg$b;
    move-object/from16 v0, v27

    iget v14, v0, Lhcg$b;->a:I

    .line 11184
    move-object/from16 v0, v18

    iget-object v3, v0, Lhcg$c;->a:Lhcg$b;

    .line 498
    move-object/from16 v0, v27

    invoke-static {v3, v0}, Lhcg;->a(Lhcg$b;Lhcg$b;)Lhcg$b;

    move-result-object v26

    goto/16 :goto_1

    .line 438
    .end local v18    # "maxSize":Lhcg$c;
    .end local v20    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v22    # "orig":Lhcg$b;
    .end local v24    # "realHeight":I
    .end local v25    # "realWidth":I
    .end local v27    # "suitableSize":Lhcg$b;
    :cond_12
    invoke-static/range {p3 .. p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 439
    .local v21, "mediaIdString":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v20

    .restart local v20    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    goto/16 :goto_8

    .line 450
    .end local v21    # "mediaIdString":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v25

    .line 451
    .restart local v25    # "realWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v24

    .restart local v24    # "realHeight":I
    goto/16 :goto_9

    .line 477
    .restart local v17    # "maxHeight":I
    .restart local v19    # "maxWidth":I
    .restart local v28    # "targetHeight":I
    .restart local v29    # "targetWidth":I
    :cond_14
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v4, v6

    div-float v15, v3, v4

    .line 478
    .restart local v15    # "factor":F
    move/from16 v0, v25

    int-to-float v3, v0

    mul-float/2addr v3, v15

    float-to-int v0, v3

    move/from16 v29, v0

    .line 479
    move/from16 v28, v17

    goto/16 :goto_a

    .line 502
    .end local v15    # "factor":F
    .end local v17    # "maxHeight":I
    .end local v19    # "maxWidth":I
    .end local v20    # "mediaId":Lcom/laiwang/protocol/media/MediaId;
    .end local v24    # "realHeight":I
    .end local v25    # "realWidth":I
    .end local v28    # "targetHeight":I
    .end local v29    # "targetWidth":I
    :catch_0
    move-exception v13

    .line 503
    .local v13, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v13}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 534
    .end local v13    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p6

    iget-object v7, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v8, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_3

    .line 544
    .restart local v12    # "adaptedUrl":Ljava/lang/String;
    :cond_16
    invoke-static {v12}, Lhda;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iget v7, v0, Lhcg$a;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_4

    .line 556
    .end local v12    # "adaptedUrl":Ljava/lang/String;
    .restart local v5    # "adaptedUrl":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p6

    iget v7, v0, Lhcg$a;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_6

    .end local v5    # "adaptedUrl":Ljava/lang/String;
    .restart local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .end local v23    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v12    # "adaptedUrl":Ljava/lang/String;
    :cond_18
    move-object v5, v12

    .end local v12    # "adaptedUrl":Ljava/lang/String;
    .restart local v5    # "adaptedUrl":Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public static a(Landroid/widget/ImageView;Lcom/alibaba/doraemon/image/ImageMagician;Lhcg$a;)V
    .locals 10
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "magician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p2, "imageProperty"    # Lhcg$a;

    .prologue
    const/4 v9, 0x0

    .line 562
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget v7, p2, Lhcg$a;->h:I

    if-lez v7, :cond_6

    iget v7, p2, Lhcg$a;->g:I

    if-lez v7, :cond_6

    .line 569
    iget v7, p2, Lhcg$a;->e:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    iget v7, p2, Lhcg$a;->e:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    .line 570
    :cond_2
    iget v4, p2, Lhcg$a;->h:I

    .line 571
    .local v4, "realWidth":I
    iget v3, p2, Lhcg$a;->g:I

    .line 577
    .local v3, "realHeight":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-static {v7, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v3

    .line 578
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-static {v7, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v4

    .line 580
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v0

    .line 581
    .local v0, "maxSize":Lhcg$c;
    new-instance v1, Lhcg$b;

    invoke-direct {v1, v4, v3}, Lhcg$b;-><init>(II)V

    .line 582
    .local v1, "orig":Lhcg$b;
    move-object v5, v1

    .line 584
    .local v5, "size":Lhcg$b;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 585
    invoke-static {v0, v1}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v6

    .line 12184
    .local v6, "suitableSize":Lhcg$b;
    iget-object v7, v0, Lhcg$c;->a:Lhcg$b;

    .line 586
    invoke-static {v7, v6}, Lhcg;->a(Lhcg$b;Lhcg$b;)Lhcg$b;

    move-result-object v5

    .line 589
    .end local v6    # "suitableSize":Lhcg$b;
    :cond_3
    iget-boolean v7, p2, Lhcg$a;->b:Z

    if-eqz v7, :cond_4

    .line 590
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 592
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 13164
    iget v7, v5, Lhcg$b;->a:I

    .line 593
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13168
    iget v7, v5, Lhcg$b;->b:I

    .line 594
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 596
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    .end local v0    # "maxSize":Lhcg$c;
    .end local v1    # "orig":Lhcg$b;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "realHeight":I
    .end local v4    # "realWidth":I
    .end local v5    # "size":Lhcg$b;
    :cond_4
    :goto_2
    iget-boolean v7, p2, Lhcg$a;->c:Z

    if-eqz v7, :cond_7

    .line 614
    invoke-interface {p1, p0, v9, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 619
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_0

    .line 573
    :cond_5
    iget v4, p2, Lhcg$a;->g:I

    .line 574
    .restart local v4    # "realWidth":I
    iget v3, p2, Lhcg$a;->h:I

    .restart local v3    # "realHeight":I
    goto :goto_1

    .line 600
    .end local v3    # "realHeight":I
    .end local v4    # "realWidth":I
    :cond_6
    iget-boolean v7, p2, Lhcg$a;->b:Z

    if-eqz v7, :cond_4

    .line 601
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 603
    .restart local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 604
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43160000    # 150.0f

    invoke-static {v7, v8}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 605
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 607
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 616
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    invoke-interface {p1, p0, v9, v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "result":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 712
    :cond_1
    :goto_0
    return v0

    .line 710
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V
    .locals 19
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "magician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p5, "parent"    # Landroid/widget/AbsListView;
    .param p6, "imageProperty"    # Lhcg$a;

    .prologue
    .line 624
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p3}, Lhcg;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez p6, :cond_2

    .line 704
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 629
    const v3, 0x19830202

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 633
    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->h:I

    if-lez v3, :cond_9

    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->g:I

    if-lez v3, :cond_9

    .line 634
    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->e:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p6

    iget v3, v0, Lhcg$a;->e:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 635
    :cond_3
    move-object/from16 v0, p6

    iget v0, v0, Lhcg$a;->h:I

    move/from16 v16, v0

    .line 636
    .local v16, "realWidth":I
    move-object/from16 v0, p6

    iget v15, v0, Lhcg$a;->g:I

    .line 642
    .local v15, "realHeight":I
    :goto_1
    div-int/lit8 v3, v15, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v15

    .line 643
    div-int/lit8 v3, v16, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v16

    .line 645
    invoke-static/range {p0 .. p0}, Lhcg;->a(Landroid/content/Context;)Lhcg$c;

    move-result-object v12

    .line 646
    .local v12, "maxSize":Lhcg$c;
    new-instance v13, Lhcg$b;

    move/from16 v0, v16

    invoke-direct {v13, v0, v15}, Lhcg$b;-><init>(II)V

    .line 647
    .local v13, "orig":Lhcg$b;
    move-object/from16 v17, v13

    .line 649
    .local v17, "size":Lhcg$b;
    if-eqz v12, :cond_4

    if-eqz v13, :cond_4

    .line 650
    invoke-static {v12, v13}, Lhcg;->a(Lhcg$c;Lhcg$b;)Lhcg$b;

    move-result-object v18

    .line 13184
    .local v18, "suitableSize":Lhcg$b;
    iget-object v3, v12, Lhcg$c;->a:Lhcg$b;

    .line 651
    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lhcg;->a(Lhcg$b;Lhcg$b;)Lhcg$b;

    move-result-object v17

    .line 654
    .end local v18    # "suitableSize":Lhcg$b;
    :cond_4
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->b:Z

    if-eqz v3, :cond_5

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 657
    .local v14, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v14, :cond_5

    .line 14164
    move-object/from16 v0, v17

    iget v3, v0, Lhcg$b;->a:I

    .line 658
    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 14168
    move-object/from16 v0, v17

    iget v3, v0, Lhcg$b;->b:I

    .line 659
    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 661
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    .end local v14    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_7

    .line 667
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 672
    :goto_2
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_8

    .line 673
    move-object/from16 v0, p6

    iget v7, v0, Lhcg$a;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 638
    .end local v12    # "maxSize":Lhcg$c;
    .end local v13    # "orig":Lhcg$b;
    .end local v15    # "realHeight":I
    .end local v16    # "realWidth":I
    .end local v17    # "size":Lhcg$b;
    :cond_6
    move-object/from16 v0, p6

    iget v0, v0, Lhcg$a;->g:I

    move/from16 v16, v0

    .line 639
    .restart local v16    # "realWidth":I
    move-object/from16 v0, p6

    iget v15, v0, Lhcg$a;->h:I

    .restart local v15    # "realHeight":I
    goto/16 :goto_1

    .line 669
    .restart local v12    # "maxSize":Lhcg$c;
    .restart local v13    # "orig":Lhcg$b;
    .restart local v17    # "size":Lhcg$b;
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_2

    .line 675
    :cond_8
    move-object/from16 v0, p6

    iget v7, v0, Lhcg$a;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 679
    .end local v12    # "maxSize":Lhcg$c;
    .end local v13    # "orig":Lhcg$b;
    .end local v15    # "realHeight":I
    .end local v16    # "realWidth":I
    .end local v17    # "size":Lhcg$b;
    :cond_9
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->b:Z

    if-eqz v3, :cond_a

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 682
    .restart local v14    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v14, :cond_a

    .line 683
    const/high16 v3, 0x43160000    # 150.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 684
    iget v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 686
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    .end local v14    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_b

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 697
    :goto_3
    move-object/from16 v0, p6

    iget-boolean v3, v0, Lhcg$a;->c:Z

    if-eqz v3, :cond_c

    .line 698
    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 694
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_3

    .line 700
    :cond_c
    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    iget-object v10, v0, Lhcg$a;->l:Ljava/util/Map;

    const/4 v11, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v11}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0
.end method
