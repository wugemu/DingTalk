.class final Ldpy$8$1;
.super Ljava/lang/Object;
.source "ImEmotionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpy$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

.field final synthetic b:Ldpy$8;


# direct methods
.method constructor <init>(Ldpy$8;Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;)V
    .locals 0
    .param p1, "this$1"    # Ldpy$8;

    .prologue
    .line 298
    iput-object p1, p0, Ldpy$8$1;->b:Ldpy$8;

    iput-object p2, p0, Ldpy$8$1;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Ldpy$8$1;->b:Ldpy$8;

    iget-object v3, v2, Ldpy$8;->d:Ldpy;

    move-object/from16 v0, p0

    iget-object v10, v0, Ldpy$8$1;->a:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Ldpy$8$1;->b:Ldpy$8;

    iget-wide v12, v2, Ldpy$8;->a:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ldpy$8$1;->b:Ldpy$8;

    iget-object v4, v2, Ldpy$8;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Ldpy$8$1;->b:Ldpy$8;

    iget-wide v6, v2, Ldpy$8;->c:J

    .line 1323
    if-eqz v10, :cond_3

    .line 1328
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    if-eqz v2, :cond_0

    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    if-nez v2, :cond_4

    .line 1330
    :cond_0
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v2, :cond_1

    .line 1331
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->filterNotOnlineOrEmptyTopic()V

    .line 1333
    :cond_1
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    if-eqz v2, :cond_2

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    invoke-virtual {v2}, Ldro;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1334
    const/4 v2, 0x0

    iput-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 1336
    :cond_2
    new-instance v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;-><init>()V

    iput-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    .line 1337
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-object v10, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    .line 1338
    iget-wide v8, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    .line 1340
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-wide v12, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->lastUpdateTime:J

    .line 1341
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-object v4, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->language:Ljava/lang/String;

    .line 1342
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->localIconRedPointVer:J

    .line 1343
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-wide v6, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->lastMainOrgId:J

    .line 1344
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-virtual {v3, v2}, Ldpy;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;)V

    .line 1345
    invoke-virtual {v10}, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    move-result-object v2

    .line 1346
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Ldpy$9;

    invoke-direct {v5, v3, v2, v8, v9}, Ldpy$9;-><init>(Ldpy;Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;J)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1514
    :goto_0
    if-eqz v10, :cond_3

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    if-eqz v2, :cond_3

    .line 1515
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->packageAuthMediaId:Ljava/lang/String;

    .line 2233
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2237
    sget-object v3, Ldqc;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-boolean v3, Ldqc;->a:Z

    if-eqz v3, :cond_19

    .line 2238
    const-string/jumbo v3, "emoDynamic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "DefaultEmotionUtils startDownloadEmotionZip packageMediaId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "is already download"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3009
    const-string/jumbo v4, "im"

    invoke-static {v4, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    :cond_3
    :goto_1
    return-void

    .line 1366
    :cond_4
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v11, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    .line 1367
    const/4 v5, 0x0

    .line 1368
    const/4 v6, 0x0

    .line 1369
    const/4 v7, 0x0

    .line 1372
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    if-eqz v2, :cond_5

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    invoke-virtual {v2}, Ldro;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1373
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    iput-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 1374
    const/4 v5, 0x1

    .line 1378
    :cond_5
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 1381
    if-eqz v2, :cond_c

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v8, :cond_c

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 1382
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1383
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 1386
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1387
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v2, :cond_7

    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 1389
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1390
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1391
    if-eqz v2, :cond_6

    .line 1392
    iget-wide v0, v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v9, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1396
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 1397
    if-eqz v2, :cond_8

    .line 1398
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->isOnline()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->isValid()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1399
    iget-wide v14, v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v9, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1401
    :cond_9
    iget-wide v14, v2, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1405
    :cond_a
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1407
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v2, :cond_c

    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 1409
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1410
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1425
    :cond_b
    const/4 v6, 0x1

    .line 1430
    :cond_c
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 1431
    if-eqz v2, :cond_d

    iget-object v8, v2, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    if-eqz v8, :cond_d

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->hotSearchWords:Ljava/util/List;

    .line 1432
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1433
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    iget-object v7, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    iput-object v7, v2, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 1434
    const/4 v7, 0x1

    .line 1438
    :cond_d
    const/4 v8, 0x0

    .line 1439
    iget-wide v14, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    iget-wide v0, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    move-wide/from16 v16, v0

    cmp-long v2, v14, v16

    if-gez v2, :cond_e

    .line 1440
    iget-wide v8, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    iput-wide v8, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    .line 1441
    const/4 v8, 0x1

    .line 1447
    :cond_e
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    if-eqz v2, :cond_16

    .line 1448
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    iget-object v9, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    invoke-virtual {v2, v9}, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_4
    move v9, v2

    .line 1452
    :goto_5
    if-eqz v9, :cond_f

    .line 1453
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    iput-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 1457
    :cond_f
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    if-eqz v2, :cond_10

    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->dynamicDefaultEmotionList:Ljava/util/List;

    invoke-static {v2}, Lcoa;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1458
    iget-object v2, v10, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    iput-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    .line 1462
    :cond_10
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-wide v12, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->lastUpdateTime:J

    .line 1463
    if-nez v5, :cond_11

    if-nez v6, :cond_11

    if-nez v7, :cond_11

    if-nez v8, :cond_11

    if-eqz v9, :cond_18

    .line 1465
    :cond_11
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-object v11, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->emotionResultObject:Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    .line 1466
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    iput-object v4, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;->language:Ljava/lang/String;

    .line 1467
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-virtual {v3, v2}, Ldpy;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;)V

    .line 1469
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    move-result-object v4

    .line 1475
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    new-instance v2, Ldpy$10;

    invoke-direct/range {v2 .. v9}, Ldpy$10;-><init>(Ldpy;Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;ZZZZZ)V

    invoke-virtual {v11, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1504
    :goto_6
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v4, Ldpy$11;

    invoke-direct {v4, v3}, Ldpy$11;-><init>(Ldpy;)V

    invoke-virtual {v2, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1415
    :cond_12
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-nez v2, :cond_13

    .line 1416
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;-><init>()V

    iput-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 1418
    :cond_13
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    if-nez v2, :cond_14

    .line 1419
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    .line 1421
    :cond_14
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1422
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1423
    iget-object v8, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->topicDataObjectList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1448
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1450
    :cond_16
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_8
    move v9, v2

    goto/16 :goto_5

    :cond_17
    const/4 v2, 0x0

    goto :goto_8

    .line 1502
    :cond_18
    iget-object v2, v3, Ldpy;->d:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;

    invoke-virtual {v3, v2}, Ldpy;->a(Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionLocalObject;)V

    goto :goto_6

    .line 2242
    :cond_19
    const/4 v3, 0x1

    sput-boolean v3, Ldqc;->a:Z

    .line 2243
    sput-object v2, Ldqc;->b:Ljava/lang/String;

    .line 2245
    const-string/jumbo v3, "emoDynamic"

    const-string/jumbo v4, "DefaultEmotionUtils startDownloadEmotionZip start"

    .line 4009
    const-string/jumbo v5, "im"

    invoke-static {v5, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    const-string/jumbo v3, "defaultEmoji"

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2247
    const-string/jumbo v4, "defaultEmoji"

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2249
    new-instance v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    invoke-direct {v5, v3, v4, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    new-instance v3, Ldqc$1;

    invoke-direct {v3}, Ldqc$1;-><init>()V

    .line 4167
    iput-object v3, v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    .line 2274
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2275
    sget-object v4, Ldpt;->b:Ljava/lang/String;

    sget-object v6, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5121
    iput-object v3, v5, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->d:Ljava/util/HashMap;

    .line 2277
    const-string/jumbo v3, "emoDynamic"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "DefaultEmotionMgr startDownloadEmotionZip packageMediaId="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6009
    const-string/jumbo v4, "im"

    invoke-static {v4, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a()V

    goto/16 :goto_1
.end method
