.class public final Ldpu;
.super Ljava/lang/Object;
.source "EmotionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "emotionSizeDp"    # F

    .prologue
    .line 461
    invoke-static {}, Ldqa;->a()Ldqa;

    move-result-object v0

    invoke-virtual {v0}, Ldqa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {}, Ldqa;->a()Ldqa;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Ldqa;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    .line 464
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v0

    .line 2050
    invoke-virtual {v0, p0, p1, p2}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x12c

    .line 375
    if-eqz p0, :cond_2

    .line 376
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->thumnailPath:Ljava/lang/String;

    .line 400
    :goto_0
    return-object v2

    .line 378
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 385
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 386
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3, v4}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 388
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 389
    const/4 v1, 0x0

    .line 391
    .restart local v1    # "url":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 395
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 396
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3, v4}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 392
    :catch_1
    move-exception v0

    .line 393
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 400
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lckk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v8, "emotionTabModels":Ljava/util/List;, "Ljava/util/List<Lckk;>;"
    invoke-static {}, Ldqa;->a()Ldqa;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ldqa;->c()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 190
    invoke-static {}, Ldpu;->d()Lckk;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    new-instance v5, Lckk;

    invoke-direct {v5}, Lckk;-><init>()V

    .line 197
    .local v5, "cusEmotionTabModel":Lckk;
    const/16 v19, 0x4

    move/from16 v0, v19

    iput v0, v5, Lckk;->e:I

    .line 198
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v5, Lckk;->f:I

    .line 199
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Lckk;->c:I

    .line 200
    sget v19, Lctk$e;->emotion_bd_icon_fav:I

    move/from16 v0, v19

    iput v0, v5, Lckk;->b:I

    .line 201
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcid;->c()Landroid/app/Application;

    move-result-object v19

    sget v20, Lctk$i;->dt_accessibility_conversation_favorite:I

    invoke-virtual/range {v19 .. v20}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v5, Lckk;->g:Ljava/lang/String;

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "cusEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    iget v0, v5, Lckk;->c:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v5, Lckk;->c:I

    .line 205
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 206
    .local v2, "addFav":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 207
    sget v19, Lctk$e;->emotion_bg_fav_add:I

    move/from16 v0, v19

    iput v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    .line 208
    new-instance v19, Ldpu$1;

    invoke-direct/range {v19 .. v19}, Ldpu$1;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 215
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {}, Ldps;->a()Ldps;

    move-result-object v19

    .line 1086
    move-object/from16 v0, v19

    iget-object v3, v0, Ldps;->a:Ljava/util/List;

    .line 217
    .local v3, "cusEmotionDetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 218
    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v11

    .line 219
    .local v11, "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    :cond_0
    :goto_1
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 220
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 221
    .local v14, "o":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v14, :cond_0

    .line 224
    new-instance v12, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 225
    .local v12, "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 226
    invoke-static {v14}, Ldpu;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    .line 227
    invoke-static {v14}, Ldpu;->c(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    .line 228
    iget-object v0, v14, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->c:Ljava/lang/String;

    .line 229
    iput-object v14, v12, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 230
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    .end local v2    # "addFav":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .end local v3    # "cusEmotionDetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    .end local v4    # "cusEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    .end local v5    # "cusEmotionTabModel":Lckk;
    .end local v11    # "listIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    .end local v12    # "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .end local v14    # "o":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_1
    invoke-static {}, Ldpu;->c()Lckk;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 233
    .restart local v2    # "addFav":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .restart local v3    # "cusEmotionDetailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    .restart local v4    # "cusEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    .restart local v5    # "cusEmotionTabModel":Lckk;
    :cond_2
    iput-object v4, v5, Lckk;->i:Ljava/util/List;

    .line 234
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ldpt;->b()Ljava/util/List;

    move-result-object v18

    .line 238
    .local v18, "packageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;>;"
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_7

    .line 239
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    .line 240
    .local v15, "p":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    if-eqz v15, :cond_3

    .line 243
    new-instance v17, Lckk;

    invoke-direct/range {v17 .. v17}, Lckk;-><init>()V

    .line 244
    .local v17, "pEmotionTabModel":Lckk;
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lckk;->e:I

    .line 245
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lckk;->f:I

    .line 246
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lckk;->c:I

    .line 247
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconPath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lckk;->a:Ljava/lang/String;

    .line 248
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lckk;->g:Ljava/lang/String;

    .line 249
    move-object/from16 v0, v17

    iget-object v0, v0, Lckk;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 250
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconMediaId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 252
    :try_start_0
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->iconMediaId:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lckk;->a:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_4
    :goto_3
    iget-wide v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->packageId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lckk;->h:Ljava/lang/Object;

    .line 259
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v16, "pEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 261
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v9

    .line 262
    .local v9, "emotionsLength":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v9, :cond_6

    .line 263
    iget-object v0, v15, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;->emotions:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 264
    .local v7, "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    if-eqz v7, :cond_5

    .line 267
    new-instance v13, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 268
    .local v13, "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    const/16 v20, 0x0

    move/from16 v0, v20

    iput v0, v13, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 269
    invoke-static {v7}, Ldpu;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    .line 270
    invoke-static {v7}, Ldpu;->c(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    .line 271
    iput-object v7, v13, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 272
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->g:Ljava/lang/String;

    .line 273
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v13    # "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 253
    .end local v7    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v9    # "emotionsLength":I
    .end local v10    # "i":I
    .end local v16    # "pEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    :catch_0
    move-exception v6

    .line 254
    .local v6, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v6    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v16    # "pEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lckk;->i:Ljava/util/List;

    .line 277
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 281
    .end local v15    # "p":Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;
    .end local v16    # "pEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    .end local v17    # "pEmotionTabModel":Lckk;
    :cond_7
    return-object v8
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "origin":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "dest":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 443
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 444
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .locals 2
    .param p0, "emotionDetailObject"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    .line 424
    if-nez p0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 433
    :goto_0
    return-object v0

    .line 427
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 428
    .local v0, "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 429
    invoke-static {p0}, Ldpu;->a(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    .line 430
    invoke-static {p0}, Ldpu;->c(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->g:Ljava/lang/String;

    .line 432
    iput-object p0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    goto :goto_0
.end method

.method public static b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "and_im_emotion_store_disabled"

    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static c()Lckk;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 285
    new-instance v4, Lckk;

    invoke-direct {v4}, Lckk;-><init>()V

    .line 286
    .local v4, "wwEmotionTabModel":Lckk;
    const/4 v5, 0x7

    iput v5, v4, Lckk;->e:I

    .line 287
    const/4 v5, 0x3

    iput v5, v4, Lckk;->f:I

    .line 288
    iput v7, v4, Lckk;->c:I

    .line 289
    sget v5, Lctk$e;->inputpanel_ww_emotion_package:I

    iput v5, v4, Lckk;->b:I

    .line 290
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->dt_accessibility_conversation_emotion_default:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lckk;->g:Ljava/lang/String;

    .line 291
    const/4 v5, 0x1

    iput v5, v4, Lckk;->j:I

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v3, "wwEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v5

    invoke-virtual {v5}, Lcrc;->c()Ljava/util/List;

    move-result-object v2

    .line 294
    .local v2, "recentDbTabModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 295
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 297
    :cond_0
    sget-object v5, Lcqz;->b:Ljava/util/List;

    sget-object v5, Lcqz;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 298
    sget-object v5, Lcqz;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqz$a;

    .line 299
    .local v0, "ei":Lcqz$a;
    if-eqz v0, :cond_1

    .line 302
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 303
    .local v1, "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    iput v7, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 304
    iput v7, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->h:I

    .line 1865
    iget v6, v0, Lcqz$a;->b:I

    .line 305
    iput v6, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    .line 306
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 307
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    .end local v0    # "ei":Lcqz$a;
    .end local v1    # "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_2
    iput-object v3, v4, Lckk;->i:Ljava/util/List;

    .line 311
    return-object v4
.end method

.method private static c(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .prologue
    .line 354
    if-eqz p0, :cond_1

    .line 355
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->originPath:Ljava/lang/String;

    .line 371
    :goto_0
    return-object v1

    .line 357
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 371
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    .restart local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private static d()Lckk;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 319
    new-instance v6, Lckk;

    invoke-direct {v6}, Lckk;-><init>()V

    .line 320
    .local v6, "wwEmotionTabModel":Lckk;
    const/4 v7, 0x7

    iput v7, v6, Lckk;->e:I

    .line 321
    const/4 v7, 0x3

    iput v7, v6, Lckk;->f:I

    .line 322
    iput v11, v6, Lckk;->c:I

    .line 323
    sget v7, Lctk$e;->inputpanel_ww_emotion_package:I

    iput v7, v6, Lckk;->b:I

    .line 324
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->dt_accessibility_conversation_emotion_default:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lckk;->g:Ljava/lang/String;

    .line 325
    iput v12, v6, Lckk;->j:I

    .line 326
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v5, "wwEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v7

    invoke-virtual {v7}, Lcrc;->c()Ljava/util/List;

    move-result-object v2

    .line 329
    .local v2, "recentDbTabModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 330
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    :cond_0
    invoke-static {}, Ldqc;->a()Ljava/util/List;

    move-result-object v4

    .line 334
    .local v4, "uiModelList":Ljava/util/List;, "Ljava/util/List<Ldqb;>;"
    invoke-static {v4}, Leax;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 335
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldqb;

    .line 337
    .local v3, "uiModel":Ldqb;
    if-eqz v3, :cond_1

    iget-object v8, v3, Ldqb;->d:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v12, v8, :cond_1

    .line 338
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 339
    .local v0, "emotionGridItemModel":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    iput v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 340
    iput v11, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->h:I

    .line 341
    iget-object v8, v3, Ldqb;->a:Ljava/lang/String;

    invoke-static {v8}, Ldqc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "iconUrl":Ljava/lang/String;
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    .line 343
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    .line 344
    new-instance v8, Lcqy;

    iget-object v9, v3, Ldqb;->b:Ljava/lang/String;

    iget-object v10, v3, Ldqb;->c:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v1, v11}, Lcqy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 345
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    .end local v0    # "emotionGridItemModel":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .end local v1    # "iconUrl":Ljava/lang/String;
    .end local v3    # "uiModel":Ldqb;
    :cond_2
    iput-object v5, v6, Lckk;->i:Ljava/util/List;

    .line 350
    return-object v6
.end method
