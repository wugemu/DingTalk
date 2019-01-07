.class public final Ldof;
.super Ljava/lang/Object;
.source "ImageCaculateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldof$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;)Ldof$a;
    .locals 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "imageStyle"    # Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;",
            ")",
            "Ldof$a;"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 117
    const/4 v6, 0x0

    .line 194
    :goto_0
    return-object v6

    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 120
    .local v3, "authMediaId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 121
    .local v2, "authCode":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 122
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;

    .line 123
    .local v10, "param":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    if-eqz v10, :cond_1

    .line 124
    iget-object v3, v10, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authMediaId:Ljava/lang/String;

    .line 125
    iget-object v2, v10, Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;->authCode:Ljava/lang/String;

    .line 128
    .end local v10    # "param":Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;
    :cond_1
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 129
    move-object/from16 p0, v3

    .line 131
    :cond_2
    if-nez p3, :cond_3

    .line 132
    sget-object p3, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    .line 134
    :cond_3
    new-instance v6, Ldof$a;

    invoke-direct {v6}, Ldof$a;-><init>()V

    .line 135
    .local v6, "imageInfo":Ldof$a;
    move-object/from16 v0, p0

    iput-object v0, v6, Ldof$a;->d:Ljava/lang/String;

    .line 136
    const/4 v14, 0x0

    iput v14, v6, Ldof$a;->a:I

    .line 137
    if-eqz p1, :cond_4

    .line 138
    const-string/jumbo v14, "IM"

    invoke-static/range {p1 .. p1}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v15, v2, v0}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    iput-object v14, v6, Ldof$a;->h:Ljava/util/Map;

    .line 142
    :cond_4
    const/4 v11, 0x0

    .line 143
    .local v11, "size":Lhcg$b;
    const/4 v8, 0x0

    .line 144
    .local v8, "mediaId":Lcom/laiwang/protocol/media/MediaId;
    sget-object v14, Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;->FIXED_URL:Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_5

    .line 146
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 147
    invoke-static/range {p0 .. p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v8

    .line 148
    invoke-static/range {p0 .. p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 157
    :cond_5
    :goto_1
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v14

    if-lez v14, :cond_6

    .line 158
    new-instance v11, Lhcg$b;

    .end local v11    # "size":Lhcg$b;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v14

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lhcg$b;-><init>(II)V

    .line 159
    .restart local v11    # "size":Lhcg$b;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lctk$d;->im_md_content_width:I

    .line 160
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 1168
    .local v13, "width":I
    iget v14, v11, Lhcg$b;->b:I

    .line 161
    mul-int/2addr v14, v13

    .line 2164
    iget v15, v11, Lhcg$b;->a:I

    .line 161
    div-int v5, v14, v15

    .line 162
    .local v5, "height":I
    if-lez v5, :cond_c

    .line 163
    new-instance v11, Lhcg$b;

    .end local v11    # "size":Lhcg$b;
    invoke-direct {v11, v13, v5}, Lhcg$b;-><init>(II)V

    .line 168
    .end local v5    # "height":I
    .end local v13    # "width":I
    .restart local v11    # "size":Lhcg$b;
    :cond_6
    :goto_2
    if-nez v11, :cond_7

    .line 169
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lctk$d;->im_md_content_width:I

    .line 170
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 171
    .restart local v13    # "width":I
    int-to-float v14, v13

    const/high16 v15, 0x3f100000    # 0.5625f

    mul-float/2addr v14, v15

    float-to-int v5, v14

    .line 172
    .restart local v5    # "height":I
    new-instance v11, Lhcg$b;

    .end local v11    # "size":Lhcg$b;
    invoke-direct {v11, v13, v5}, Lhcg$b;-><init>(II)V

    .line 174
    .end local v5    # "height":I
    .end local v13    # "width":I
    .restart local v11    # "size":Lhcg$b;
    :cond_7
    move-object/from16 v0, p0

    iput-object v0, v6, Ldof$a;->c:Ljava/lang/String;

    .line 175
    const/4 v7, 0x0

    .line 176
    .local v7, "isGif":Z
    invoke-static/range {p0 .. p0}, Ldkj;->a(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 177
    const/4 v7, 0x1

    .line 179
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v14

    sget-object v15, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;

    if-ne v14, v15, :cond_9

    .line 180
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v14

    sget v15, Ldnt;->d:I

    if-gt v14, v15, :cond_9

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v14

    sget v15, Ldnt;->e:I

    if-gt v14, v15, :cond_9

    .line 181
    const/4 v14, 0x2

    iput v14, v6, Ldof$a;->a:I

    .line 183
    :cond_9
    if-eqz v7, :cond_a

    iget v14, v6, Ldof$a;->a:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_a

    .line 184
    const/4 v14, 0x1

    iput-boolean v14, v6, Ldof$a;->g:Z

    .line 186
    :cond_a
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v12

    .line 187
    .local v12, "strategy":Lhcj;
    iget v14, v6, Ldof$a;->a:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_d

    .line 188
    iget-object v14, v6, Ldof$a;->c:Ljava/lang/String;

    .line 3164
    iget v15, v11, Lhcg$b;->a:I

    .line 3168
    iget v0, v11, Lhcg$b;->b:I

    move/from16 v16, v0

    .line 188
    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v6, Ldof$a;->b:Ljava/lang/String;

    .line 4168
    :goto_3
    iget v14, v11, Lhcg$b;->b:I

    .line 192
    iput v14, v6, Ldof$a;->f:I

    .line 5164
    iget v14, v11, Lhcg$b;->a:I

    .line 193
    iput v14, v6, Ldof$a;->e:I

    goto/16 :goto_0

    .line 150
    .end local v7    # "isGif":Z
    .end local v12    # "strategy":Lhcj;
    :cond_b
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, "mediaIdString":Ljava/lang/String;
    invoke-static {v9}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto/16 :goto_1

    .line 153
    .end local v9    # "mediaIdString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 154
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 165
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v5    # "height":I
    .restart local v13    # "width":I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 190
    .end local v5    # "height":I
    .end local v13    # "width":I
    .restart local v7    # "isGif":Z
    .restart local v12    # "strategy":Lhcj;
    :cond_d
    iget-object v14, v6, Ldof$a;->c:Ljava/lang/String;

    iput-object v14, v6, Ldof$a;->b:Ljava/lang/String;

    goto :goto_3
.end method

.method public static a(Landroid/view/View;I)Ljava/util/ArrayList;
    .locals 18
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "imageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v12, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    move-object/from16 v0, p0

    instance-of v15, v0, Landroid/widget/ListView;

    if-nez v15, :cond_1

    .line 242
    :cond_0
    return-object v12

    :cond_1
    move-object/from16 v7, p0

    .line 202
    check-cast v7, Landroid/widget/ListView;

    .line 203
    .local v7, "listView":Landroid/widget/ListView;
    invoke-virtual {v7}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 204
    .local v2, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 205
    .local v3, "first":I
    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    .line 206
    .local v6, "last":I
    move v5, v3

    .local v5, "index":I
    :goto_0
    if-gt v5, v6, :cond_0

    .line 208
    const/4 v8, 0x0

    .line 209
    .local v8, "message":Lcom/alibaba/wukong/im/Message;
    :try_start_0
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .line 210
    .local v10, "object":Ljava/lang/Object;
    instance-of v15, v10, Lcom/alibaba/wukong/im/Message;

    if-eqz v15, :cond_4

    .line 211
    move-object v0, v10

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    move-object v8, v0

    .line 221
    .end local v10    # "object":Ljava/lang/Object;
    :cond_2
    :goto_1
    if-nez v8, :cond_6

    .line 206
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 212
    .restart local v10    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v15, v10, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v15, :cond_5

    .line 213
    check-cast v10, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .end local v10    # "object":Ljava/lang/Object;
    iget-object v8, v10, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    .line 214
    .restart local v10    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v15, v10, Ldcr;

    if-eqz v15, :cond_2

    .line 215
    move-object v0, v10

    check-cast v0, Ldcr;

    move-object v9, v0

    .line 216
    .local v9, "model":Ldcr;
    invoke-interface {v9}, Ldcr;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 217
    .local v13, "tag":Ljava/lang/Object;
    instance-of v15, v13, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-eqz v15, :cond_2

    .line 218
    check-cast v13, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    .end local v13    # "tag":Ljava/lang/Object;
    iget-object v8, v13, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    .line 5246
    .end local v9    # "model":Ldcr;
    .end local v10    # "object":Ljava/lang/Object;
    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    if-nez v15, :cond_8

    .line 5247
    :cond_7
    const/4 v15, 0x0

    .line 224
    :goto_3
    if-eqz v15, :cond_3

    .line 5261
    invoke-static {v8}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v15

    .line 5262
    iget-object v0, v15, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    iget-object v15, v15, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v16, "e_id"

    .line 5263
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 5264
    const/4 v15, 0x1

    .line 228
    :goto_4
    if-nez v15, :cond_3

    .line 233
    sub-int v15, v5, v3

    invoke-virtual {v7, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 234
    .local v14, "view":Landroid/view/View;
    if-eqz v14, :cond_3

    .line 235
    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 236
    .local v4, "image":Landroid/view/View;
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v4}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v11

    .line 237
    .local v11, "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v4    # "image":Landroid/view/View;
    .end local v11    # "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    .end local v14    # "view":Landroid/view/View;
    :catch_0
    move-exception v15

    goto :goto_2

    .line 5249
    :cond_8
    invoke-interface {v8}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 5250
    sparse-switch v15, :sswitch_data_0

    .line 5257
    const/4 v15, 0x0

    goto :goto_3

    .line 5254
    :sswitch_0
    const/4 v15, 0x1

    goto :goto_3

    .line 5266
    :cond_9
    const/4 v15, 0x0

    goto :goto_4

    .line 5250
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xcb -> :sswitch_0
        0xfb -> :sswitch_0
    .end sparse-switch
.end method
