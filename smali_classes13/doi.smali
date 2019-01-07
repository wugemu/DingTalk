.class public final Ldoi;
.super Ljava/lang/Object;
.source "MdUrlDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoi$b;,
        Ldoi$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    return-void
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetUri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 292
    if-nez p0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Lcom/alibaba/wukong/im/Message;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 18
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p3, "imageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "authMediaParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AuthMediaParam;>;"
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 315
    invoke-interface/range {p3 .. p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 318
    invoke-static/range {p2 .. p2}, Ldnt;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    move-result-object v13

    .line 319
    .local v13, "renderStyle":Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;
    if-nez v13, :cond_2

    .line 320
    sget-object v13, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->NORMAL:Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;

    .line 323
    :cond_2
    invoke-virtual {v13}, Lcom/alibaba/android/dingtalkim/mdrender/layout/RenderStyle;->getImageStyle()Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v4}, Ldof;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/mdrender/layout/ImageStyle;)Ldof$a;

    move-result-object v11

    .line 324
    .local v11, "imageInfo":Ldof$a;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ldof$a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    new-instance v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 329
    .local v10, "current":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 330
    iget-object v4, v11, Ldof$a;->c:Ljava/lang/String;

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 331
    iget-object v4, v11, Ldof$a;->h:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, v11, Ldof$a;->h:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 332
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, v11, Ldof$a;->h:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    .line 334
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    .line 335
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v16

    .line 334
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v12

    .line 336
    .local v12, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v16

    cmp-long v4, v4, v16

    if-nez v4, :cond_7

    .line 337
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->me:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 338
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    .line 343
    :cond_4
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 344
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 345
    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "favorite_enter_hide"

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "forward_enter_hide"

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "save_space_enter_hide"

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v4, "data:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 349
    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "save_to_phone_enter_hide"

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_5
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HHmmss"

    invoke-direct {v14, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 353
    .local v14, "sdf":Ljava/text/DateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 355
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    iput-wide v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    .line 356
    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v4}, Ldrp;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".bmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "@.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 359
    :cond_6
    const/4 v4, 0x1

    new-array v6, v4, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 360
    .local v6, "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v4, 0x0

    aput-object v10, v6, v4

    .line 362
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 363
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "intent_key_enable_swipe_to_dismiss"

    const/4 v5, 0x1

    invoke-virtual {v9, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    invoke-interface/range {p2 .. p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v15

    .line 365
    .local v15, "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    const-string/jumbo v4, "intent_key_swipe_object"

    invoke-virtual {v9, v4, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 366
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 339
    .end local v6    # "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v14    # "sdf":Ljava/text/DateFormat;
    .end local v15    # "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    :cond_7
    if-eqz v12, :cond_4

    .line 340
    iget-object v4, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 341
    const/4 v4, 0x0

    iput-boolean v4, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$a;)V
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "messageId"    # J
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "dispatchResultListener"    # Ldoi$a;

    .prologue
    .line 93
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Ldoi;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$b;Ldoi$a;)V

    .line 94
    return-void
.end method

.method public static a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$b;Ldoi$a;)V
    .locals 27
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "messageId"    # J
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "urlDispatcherPolicy"    # Ldoi$b;
    .param p6, "dispatchResultListener"    # Ldoi$a;

    .prologue
    .line 98
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2

    .line 99
    :cond_0
    if-eqz p6, :cond_1

    .line 100
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Ldoi$a;->a(IZ)V

    .line 1215
    .end local p4    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 104
    .restart local p4    # "context":Landroid/content/Context;
    :cond_2
    if-nez p5, :cond_3

    .line 105
    new-instance p5, Ldoj;

    .end local p5    # "urlDispatcherPolicy":Ldoi$b;
    invoke-direct/range {p5 .. p5}, Ldoj;-><init>()V

    .line 110
    .restart local p5    # "urlDispatcherPolicy":Ldoi$b;
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 111
    .local v21, "targetUri":Landroid/net/Uri;
    const-string/jumbo v4, "dtmd"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 112
    invoke-interface/range {p5 .. p5}, Ldoi$b;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 113
    if-eqz p6, :cond_1

    .line 114
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Ldoi$a;->a(IZ)V

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v4, "dingtalkclient"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 119
    const-string/jumbo v4, "/sendMessage"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 120
    const-string/jumbo v4, "content"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "content":Ljava/lang/String;
    const-string/jumbo v4, "context"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "msgContext":Ljava/lang/String;
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "atme"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 124
    .local v20, "notAtMe":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 125
    if-nez v20, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 1214
    if-eqz p4, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    if-eqz p3, :cond_1

    .line 1217
    new-instance v4, Ldoi$2;

    move-object/from16 v5, p4

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Ldoi$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;Ldoi$a;)V

    .line 1233
    move-object/from16 v0, p4

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_5

    .line 1234
    const-class v5, Lcom/alibaba/wukong/Callback;

    check-cast p4, Landroid/app/Activity;

    .end local p4    # "context":Landroid/content/Context;
    move-object/from16 v0, p4

    invoke-static {v4, v5, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    .line 1236
    :cond_5
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    .line 129
    .restart local p4    # "context":Landroid/content/Context;
    :cond_6
    const/16 v17, 0x0

    .line 130
    .local v17, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 131
    new-instance v17, Ljava/util/HashMap;

    .end local v17    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v17    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "md_context_origin"

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_7
    new-instance v11, Ldiz;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 135
    .local v11, "chatMessageSender":Ldiz;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v11, v6, v4, v0}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 137
    if-eqz p6, :cond_1

    .line 138
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Ldoi$a;->a(IZ)V

    goto/16 :goto_0

    .line 142
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "msgContext":Ljava/lang/String;
    .end local v11    # "chatMessageSender":Ldiz;
    .end local v17    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "notAtMe":Z
    :cond_8
    const-string/jumbo v4, "/jumpToMsg"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 143
    const-string/jumbo v4, "cid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "cid":Ljava/lang/String;
    const-string/jumbo v4, "msgId"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2109
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v18

    .line 145
    .local v18, "msgId":J
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_1

    .line 148
    move-object/from16 v0, p4

    instance-of v4, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v4, :cond_9

    move-object/from16 v10, p4

    .line 149
    check-cast v10, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 150
    .local v10, "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    const/4 v4, 0x0

    move-wide/from16 v0, v18

    invoke-virtual {v10, v12, v0, v1, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;JZ)V

    .line 151
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "chat_quote_markdown_click"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 197
    .end local v10    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    .end local v12    # "cid":Ljava/lang/String;
    .end local v18    # "msgId":J
    .end local p4    # "context":Landroid/content/Context;
    :cond_9
    :goto_1
    if-eqz p6, :cond_1

    .line 198
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Ldoi$a;->a(IZ)V

    goto/16 :goto_0

    .line 153
    .restart local p4    # "context":Landroid/content/Context;
    :cond_a
    const-string/jumbo v4, "/against_harassment"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 155
    :try_start_0
    const-string/jumbo v4, "openid"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 156
    .local v24, "value":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v13

    .line 157
    .local v13, "data":Lcom/laiwang/protocol/media/MediaId;
    invoke-virtual {v13}, Lcom/laiwang/protocol/media/MediaId;->getSequence()J

    move-result-wide v22

    .line 158
    .local v22, "openId":J
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_9

    .line 159
    check-cast p4, Landroid/app/Activity;

    .line 3042
    .end local p4    # "context":Landroid/content/Context;
    invoke-static/range {p3 .. p3}, Lddq;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3050
    invoke-static/range {p4 .. p4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p3, :cond_9

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-lez v4, :cond_9

    .line 3054
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lctk$i;->dt_im_against_harassment_single_chat_title:I

    .line 3055
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lctk$b;->menu_against_harassment_single_chat:I

    new-instance v8, Leau$1;

    move-object/from16 v0, p4

    move-wide/from16 v1, v22

    invoke-direct {v8, v0, v1, v2}, Leau$1;-><init>(Landroid/app/Activity;J)V

    .line 3056
    invoke-virtual {v4, v5, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 3085
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 161
    .end local v13    # "data":Lcom/laiwang/protocol/media/MediaId;
    .end local v22    # "openId":J
    .end local v24    # "value":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 162
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v25, "against harassment get openId failed error="

    aput-object v25, v8, v9

    const/4 v9, 0x1

    .line 163
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    invoke-static {v4, v5, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3089
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v13    # "data":Lcom/laiwang/protocol/media/MediaId;
    .restart local v22    # "openId":J
    .restart local v24    # "value":Ljava/lang/String;
    :cond_b
    :try_start_1
    invoke-static/range {p4 .. p4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p3, :cond_9

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-lez v4, :cond_9

    .line 3093
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lctk$i;->dt_im_against_harassment_group_chat_title:I

    .line 3094
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lctk$b;->menu_against_harassment_group_chat:I

    new-instance v8, Leau$2;

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-wide/from16 v2, v22

    invoke-direct {v8, v0, v1, v2, v3}, Leau$2;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;J)V

    .line 3095
    invoke-virtual {v4, v5, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 3115
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 165
    .end local v13    # "data":Lcom/laiwang/protocol/media/MediaId;
    .end local v22    # "openId":J
    .end local v24    # "value":Ljava/lang/String;
    .restart local p4    # "context":Landroid/content/Context;
    :cond_c
    const-string/jumbo v4, "/delete_add_members"

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 167
    :try_start_2
    const-string/jumbo v4, "dd_context"

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Ldoi;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "ddContext":Ljava/lang/String;
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_9

    .line 169
    new-instance v4, Ldoi$1;

    move-object/from16 v0, p4

    invoke-direct {v4, v0, v14}, Ldoi$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 188
    .end local v14    # "ddContext":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 189
    .local v16, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string/jumbo v4, "im"

    const/4 v5, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v25, "[MdUrlDispatcher] dispatchMdUrl error="

    aput-object v25, v8, v9

    const/4 v9, 0x1

    .line 191
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    invoke-static {v4, v5, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_d
    const-string/jumbo v4, "https://qr.dingtalk.com/page/maillogin"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 203
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    .end local p4    # "context":Landroid/content/Context;
    :cond_e
    :goto_2
    if-eqz p6, :cond_1

    .line 208
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v4, v5}, Ldoi$a;->a(IZ)V

    goto/16 :goto_0

    .line 204
    .restart local p4    # "context":Landroid/content/Context;
    :cond_f
    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_e

    .line 205
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v4

    check-cast p4, Landroid/app/Activity;

    .end local p4    # "context":Landroid/content/Context;
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_2
.end method
