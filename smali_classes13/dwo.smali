.class public final Ldwo;
.super Ljava/lang/Object;
.source "GroupBillUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v2, 0x0

    .line 61
    instance-of v3, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    move-object v0, p0

    .line 64
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 65
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v3, :cond_0

    .line 68
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 69
    .local v1, "groupBillDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->groupBillName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;>;"
    if-nez p0, :cond_1

    .line 152
    :cond_0
    return-object v1

    .line 141
    :cond_1
    const-string/jumbo v5, "group_bill_pay_list"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    .local v4, "list":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    const-string/jumbo v5, "_bills===bills_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "elements":[Ljava/lang/String;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 146
    .local v2, "element":Ljava/lang/String;
    invoke-static {v2}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const-class v8, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    invoke-static {v7, v8}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 147
    .local v0, "bodyDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "newMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 219
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v3

    .line 231
    :goto_0
    return-object v1

    .line 222
    :cond_1
    if-nez p1, :cond_2

    .line 223
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 225
    .restart local p1    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 226
    .local v0, "msg":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_3

    .line 229
    const-string/jumbo v7, "group_bill_pay_list"

    .line 1235
    if-eqz v0, :cond_3

    .line 1236
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_3

    .line 1305
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_4
    move v1, v4

    .line 1238
    :goto_2
    if-eqz v1, :cond_3

    .line 1239
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v8

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 1242
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v1, :cond_3

    .line 1246
    invoke-static {v0}, Ldwo;->e(Lcom/alibaba/wukong/im/Message;)I

    move-result v1

    .line 1247
    invoke-static {v0}, Ldwo;->d(Lcom/alibaba/wukong/im/Message;)I

    move-result v2

    .line 1248
    invoke-static {v0}, Ldwo;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    .line 1249
    if-eq v1, v5, :cond_5

    if-nez v1, :cond_3

    .line 1250
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    move-object v1, v0

    .line 1255
    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    invoke-static {v1}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 1256
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1260
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    .line 1261
    if-eqz v9, :cond_3

    .line 1264
    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1265
    if-nez v1, :cond_d

    .line 1266
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 1267
    if-nez v1, :cond_d

    .line 1268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v2, v1

    .line 1271
    :goto_3
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1272
    if-nez v1, :cond_6

    .line 1273
    const-string/jumbo v1, ""

    .line 1277
    :cond_6
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1278
    const-string/jumbo v11, "_bills===bills_"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    const/16 v12, 0x9

    if-ge v11, v12, :cond_b

    .line 1280
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1282
    const-string/jumbo v1, "_bills===bills_"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    :goto_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    invoke-interface {p1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1295
    :catch_0
    move-exception v1

    .line 1298
    const-string/jumbo v2, "im"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "updateGroupBillBanner error="

    aput-object v8, v7, v4

    .line 1299
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v5

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1308
    :cond_8
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 1309
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1310
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    move v1, v5

    goto/16 :goto_2

    :cond_a
    move v1, v4

    goto/16 :goto_2

    .line 1287
    :cond_b
    :try_start_1
    const-string/jumbo v11, "_bills===bills_"

    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 1288
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "_bills===bills_"

    .line 1290
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1291
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .end local v0    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_c
    move-object v1, p1

    .line 231
    goto/16 :goto_0

    .restart local v0    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_d
    move-object v2, v1

    goto/16 :goto_3
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conv"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 181
    if-eqz p0, :cond_0

    .line 182
    const-string/jumbo v0, "group_bill_pay_list"

    const-string/jumbo v1, ""

    invoke-interface {p0, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 7
    .param p0, "conv"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "billDoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-static {p0}, Ldwo;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 164
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 165
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 166
    .local v0, "billDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    if-nez v0, :cond_3

    .line 164
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 169
    :cond_3
    invoke-static {v0}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcoz;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "jsonString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v5, v4, -0x1

    if-eq v2, v5, :cond_2

    .line 173
    const-string/jumbo v5, "_bills===bills_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 177
    .end local v0    # "billDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    .end local v3    # "jsonString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "group_bill_pay_list"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v5, v6}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 10
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-static {p0}, Ldwo;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    move-result-object v1

    .line 78
    .local v1, "groupBillDo":Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    if-nez v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v4

    .line 81
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v2

    .line 82
    .local v2, "uid":J
    iget-object v6, v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->bill:[Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 83
    .local v0, "billAmount":Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;
    if-eqz v0, :cond_2

    .line 86
    iget-wide v8, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;->uid:J

    cmp-long v8, v8, v2

    if-nez v8, :cond_2

    .line 87
    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/GroupBillAmount;->amount:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;
    .locals 3
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 107
    instance-of v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 110
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 111
    .local v0, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-eqz v2, :cond_0

    .line 114
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Message;)I
    .locals 2
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v0, 0x0

    .line 317
    if-eqz p0, :cond_0

    .line 318
    const-string/jumbo v1, "group_bill_paystatus"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 321
    :cond_0
    return v0
.end method

.method public static e(Lcom/alibaba/wukong/im/Message;)I
    .locals 2
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v0, 0x0

    .line 328
    if-eqz p0, :cond_0

    .line 329
    const-string/jumbo v1, "group_bill_status"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 332
    :cond_0
    return v0
.end method
