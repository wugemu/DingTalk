.class public Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;
.super Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;
.source "CircleInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 367
    invoke-static {}, Lbnw;->a()Lbnw;

    move-result-object v0

    .line 5174
    iget-object v1, v0, Lbnw;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5208
    iget-object v1, v0, Lbnw;->c:Lfq;

    invoke-virtual {v1}, Lfq;->evictAll()V

    .line 6204
    iget-object v0, v0, Lbnw;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 368
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 70
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "circle_entry_click"

    invoke-interface {v1, v3, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 75
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-gtz v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "listener"    # Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;

    .prologue
    .line 301
    .line 1306
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    .line 1307
    new-instance v2, Lbon;

    const/4 v0, 0x4

    invoke-direct {v2, p1, p2, p3, v0}, Lbon;-><init>(Landroid/app/Activity;JI)V

    .line 2049
    if-eqz p4, :cond_0

    .line 2050
    iget-object v0, v2, Lbon;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2051
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2052
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v3

    .line 2053
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lbon$1;

    invoke-direct {v4, v2, p4}, Lbon$1;-><init>(Lbon;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2070
    iget-object v1, v2, Lbon;->b:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    invoke-interface {v3, v1, v0}, Lbou;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcma;)V

    .line 302
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onGetLatestPostListener"    # Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 313
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v6, Lbom;

    invoke-direct {v6, p1}, Lbom;-><init>(Landroid/app/Activity;)V

    .line 3034
    if-eqz p2, :cond_0

    .line 3035
    iget-object v0, v6, Lbom;->a:Landroid/app/Activity;

    sget-object v1, Lbpw;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lbom$1;

    invoke-direct {v5, v6, p2}, Lbom$1;-><init>(Lbom;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V

    invoke-static/range {v0 .. v5}, Lbpw;->a(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lcov;)V

    .line 316
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 214
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    .line 215
    .local v8, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v8, :cond_0

    .line 218
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 219
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 220
    .local v11, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    if-eqz v11, :cond_0

    .line 221
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "circle_extra_text"

    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_2
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 228
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 229
    .local v5, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v5, :cond_0

    .line 230
    new-instance v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v9}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 231
    .local v9, "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 232
    const/4 v13, 0x0

    iput v13, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 233
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v10, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "circle_pick_photo_result"

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v5    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .end local v10    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :cond_3
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v13

    const/16 v14, 0x67

    if-ne v13, v14, :cond_4

    .line 242
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v12

    check-cast v12, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 243
    .local v12, "videoContent":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    if-eqz v12, :cond_0

    .line 244
    new-instance v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v9}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 245
    .restart local v9    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->url()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 246
    const/4 v13, 0x1

    iput v13, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 247
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;-><init>()V

    .line 248
    .local v2, "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->size()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    .line 249
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->duration()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    .line 250
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getHeight()I

    move-result v13

    iput v13, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I

    .line 251
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->getWidth()I

    move-result v13

    iput v13, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    .line 252
    invoke-interface {v12}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->picUrl()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    .line 253
    iput-object v2, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 254
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .restart local v10    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "circle_pick_photo_result"

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 262
    .end local v2    # "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .end local v10    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    .end local v12    # "videoContent":Lcom/alibaba/wukong/im/MessageContent$VideoContent;
    :cond_4
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v13

    const/16 v14, 0xca

    if-ne v13, v14, :cond_5

    .line 263
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 264
    .local v3, "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    if-eqz v3, :cond_0

    .line 265
    new-instance v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    invoke-direct {v9}, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;-><init>()V

    .line 266
    .restart local v9    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->url()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 267
    const/4 v13, 0x1

    iput v13, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    .line 268
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;-><init>()V

    .line 269
    .restart local v2    # "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->size()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    .line 270
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->duration()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    .line 271
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getHeight()I

    move-result v13

    iput v13, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I

    .line 272
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->getWidth()I

    move-result v13

    iput v13, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    .line 273
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->picUrl()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    .line 274
    iput-object v2, v9, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    .line 275
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .restart local v10    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "circle_pick_photo_result"

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 279
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 283
    .end local v2    # "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    .end local v3    # "commonVideoContent":Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "photoPickResult":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .end local v10    # "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    :cond_5
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v13

    const/16 v14, 0x66

    if-ne v13, v14, :cond_0

    .line 284
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 285
    .local v7, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    if-eqz v7, :cond_0

    .line 286
    new-instance v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;-><init>()V

    .line 287
    .local v4, "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->shareUrl:Ljava/lang/String;

    .line 288
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->text:Ljava/lang/String;

    .line 289
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->mediaId:Ljava/lang/String;

    .line 290
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->title:Ljava/lang/String;

    .line 291
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v13, "circle_extra_link"

    invoke-virtual {v6, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcov;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcov",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 320
    .local p2, "listener":Lcov;, "Lcov<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;Lcov;)V

    .line 321
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 3326
    :cond_1
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl$1;-><init>(Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;Landroid/app/Activity;Lcov;)V

    const-class v2, Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lbpa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extra"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 1166
    check-cast v2, Landroid/app/Activity;

    .line 1167
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;-><init>()V

    .line 90
    .local v0, "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    const-string/jumbo v2, "share_url"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->shareUrl:Ljava/lang/String;

    .line 91
    const-string/jumbo v2, "share_text"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->text:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, "share_pic_url"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->mediaId:Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "share_title"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;->title:Ljava/lang/String;

    .line 95
    const-string/jumbo v2, "circle_extra_link"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1169
    .end local v0    # "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;->b()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 188
    .local v0, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v1, v2

    .line 193
    goto :goto_0

    :sswitch_1
    move v1, v2

    .line 195
    goto :goto_0

    :sswitch_2
    move v1, v2

    .line 197
    goto :goto_0

    :sswitch_3
    move v1, v2

    .line 199
    goto :goto_0

    :sswitch_4
    move v1, v2

    .line 201
    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x66 -> :sswitch_4
        0x67 -> :sswitch_2
        0xca -> :sswitch_3
    .end sparse-switch
.end method

.method public final b()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 372
    const-class v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "circle_entry_enable"

    invoke-interface {v2, v3, v4}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 373
    .local v0, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-nez v0, :cond_0

    .line 374
    const-string/jumbo v2, "cloudSetting = null"

    invoke-static {v2}, Lbqh;->a(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;->c()Z

    move-result v2

    .line 384
    :goto_0
    return v2

    .line 378
    :cond_0
    const-string/jumbo v2, "1"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 380
    .local v1, "enable":Z
    if-nez v1, :cond_1

    .line 381
    const-string/jumbo v2, "workCircleEntry cloudSetting enable = false"

    invoke-static {v2}, Lbqh;->a(Ljava/lang/String;)V

    .line 384
    :cond_1
    const-string/jumbo v2, "1"

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 389
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const-string/jumbo v5, "circle_enabled"

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    .line 390
    .local v1, "isWorkCircleEntryOrgOpen":Z
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_circle_entry"

    .line 7083
    invoke-virtual {v4, v5, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 391
    .local v0, "isFeatureOpen":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isWorkCircleEntryOrgOpen = "

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    const-string/jumbo v6, ", isFeatureOpen = "

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbqh;->a(Ljava/lang/String;)V

    .line 394
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public final d()Z
    .locals 23

    .prologue
    .line 399
    const-class v20, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v21, "dt_function"

    const-string/jumbo v22, "circle_update_alerts_setting"

    invoke-interface/range {v20 .. v22}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v4

    .line 400
    .local v4, "cloudSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v4, :cond_0

    const-string/jumbo v20, "1"

    invoke-interface {v4}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 401
    :cond_0
    const/16 v20, 0x1

    .line 472
    :goto_0
    return v20

    .line 402
    :cond_1
    const-string/jumbo v20, "2"

    invoke-interface {v4}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 403
    const-string/jumbo v20, "iwWorkCircleRedDotShown failed"

    invoke-static/range {v20 .. v20}, Lbqh;->a(Ljava/lang/String;)V

    .line 404
    const/16 v20, 0x0

    goto :goto_0

    .line 408
    :cond_2
    const-class v20, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v21, "dt_function"

    const-string/jumbo v22, "circle_update_alerts_setting_working_hours"

    invoke-interface/range {v20 .. v22}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v19

    .line 409
    .local v19, "workTimeSetting":Lcom/alibaba/wukong/settings/CloudSetting;
    const/16 v18, 0x0

    .line 410
    .local v18, "workTime":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 411
    invoke-interface/range {v19 .. v19}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v18

    .line 413
    :cond_3
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 414
    const-string/jumbo v18, "[{\"startTime\":\"09:00\",\"endTime\":\"12:00\"},{\"startTime\":\"13:00\",\"endTime\":\"18:00\"}]"

    .line 417
    :cond_4
    :try_start_0
    invoke-static/range {v18 .. v18}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONArray;

    .line 418
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    if-nez v2, :cond_5

    .line 419
    const-string/jumbo v20, "iwWorkCircleRedDotShown json parse empty"

    invoke-static/range {v20 .. v20}, Lbqh;->a(Ljava/lang/String;)V

    .line 420
    const/16 v20, 0x0

    goto :goto_0

    .line 423
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    .line 425
    .local v11, "len":I
    invoke-static {}, Lcms;->u()J

    move-result-wide v12

    .line 427
    .local v12, "now":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v3

    .line 428
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 433
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_7

    .line 434
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 435
    .local v10, "item":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v20, "startTime"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 436
    .local v14, "startTime":Ljava/lang/String;
    const-string/jumbo v20, "endTime"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "endTime":Ljava/lang/String;
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 439
    .local v15, "times":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 443
    const/16 v20, 0xb

    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 444
    const/16 v20, 0xc

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 445
    const/16 v20, 0xd

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 446
    const/16 v20, 0xe

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 448
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 450
    .local v16, "startTimeMills":J
    const-string/jumbo v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 452
    array-length v0, v15

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    .line 456
    const/16 v20, 0xb

    const/16 v21, 0x0

    aget-object v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 457
    const/16 v20, 0xc

    const/16 v21, 0x1

    aget-object v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 458
    const/16 v20, 0xd

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 459
    const/16 v20, 0xe

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 461
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 463
    .local v8, "endTimeMills":J
    cmp-long v20, v12, v16

    if-ltz v20, :cond_6

    cmp-long v20, v12, v8

    if-gtz v20, :cond_6

    .line 464
    const-string/jumbo v20, "iwWorkCircleRedDotShown is not work time"

    invoke-static/range {v20 .. v20}, Lbqh;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 433
    .end local v8    # "endTimeMills":J
    .end local v16    # "startTimeMills":J
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 468
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "endTime":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v11    # "len":I
    .end local v12    # "now":J
    .end local v14    # "startTime":Ljava/lang/String;
    .end local v15    # "times":[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 469
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "iwWorkCircleRedDotShown failed = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lbqh;->a(Ljava/lang/String;)V

    .line 470
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 472
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    .restart local v3    # "calendar":Ljava/util/Calendar;
    .restart local v7    # "i":I
    .restart local v11    # "len":I
    .restart local v12    # "now":J
    :cond_7
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/impl/CircleInterfaceImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 63
    return-void
.end method

.method public onApplicationCreate()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->onApplicationCreate()V

    .line 359
    new-instance v0, Lbqb;

    invoke-direct {v0}, Lbqb;-><init>()V

    .line 362
    new-instance v0, Lbqa;

    invoke-direct {v0}, Lbqa;-><init>()V

    .line 363
    return-void
.end method
