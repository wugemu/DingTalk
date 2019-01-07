.class public final Lace;
.super Ljava/lang/Object;
.source "MailBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    .locals 11
    .param p0, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v4, 0x0

    .line 293
    :cond_0
    :goto_0
    return-object v4

    .line 273
    :cond_1
    const/4 v4, 0x0

    .line 276
    .local v4, "folders":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;
    :try_start_0
    new-instance v9, Lcom/google/gson/JsonParser;

    invoke-direct {v9}, Lcom/google/gson/JsonParser;-><init>()V

    .line 277
    .local v9, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v9, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 278
    .local v3, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    .line 280
    .local v8, "object":Lcom/google/gson/JsonObject;
    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "data"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 281
    const-string/jumbo v10, "data"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 282
    .local v5, "jsonData":Lcom/google/gson/JsonElement;
    const-string/jumbo v10, "type"

    invoke-virtual {v8, v10}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 283
    .local v6, "jsonType":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "dataType":Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/alibaba/alimei/sdk/push/data/PushData;->parsePushData(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/sdk/push/data/PushData;

    move-result-object v7

    .line 285
    .local v7, "obj":Lcom/alibaba/alimei/sdk/push/data/PushData;
    if-eqz v7, :cond_0

    instance-of v10, v7, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    if-eqz v10, :cond_0

    .line 286
    move-object v0, v7

    check-cast v0, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v1    # "dataType":Ljava/lang/String;
    .end local v3    # "element":Lcom/google/gson/JsonElement;
    .end local v5    # "jsonData":Lcom/google/gson/JsonElement;
    .end local v6    # "jsonType":Lcom/google/gson/JsonElement;
    .end local v7    # "obj":Lcom/alibaba/alimei/sdk/push/data/PushData;
    .end local v8    # "object":Lcom/google/gson/JsonObject;
    .end local v9    # "parser":Lcom/google/gson/JsonParser;
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "MailBridge.getChangedFolders"

    invoke-static {v10, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static final a()V
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 388
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 395
    :cond_0
    return-void

    .line 391
    :cond_1
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 392
    .local v2, "nm":Landroid/app/NotificationManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 393
    add-int/lit16 v3, v1, 0xfa1

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static final a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiverMail"    # Ljava/lang/String;
    .param p2, "changedFolders"    # Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 303
    const-string/jumbo v7, "01"

    .line 306
    .local v7, "mailNotificationSetting":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "pref_key_mail_notification"

    const-string/jumbo v10, "02"

    invoke-static {p0, v9, v10}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 321
    :goto_0
    const-string/jumbo v9, "01"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "1"

    .line 322
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "true"

    .line 323
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 324
    :cond_0
    const/4 v6, 0x1

    .line 329
    .local v6, "isSpecialNotification":Z
    :goto_1
    if-nez v6, :cond_3

    .line 360
    :cond_1
    :goto_2
    return v5

    .end local v6    # "isSpecialNotification":Z
    :catch_0
    move-exception v9

    .line 310
    :try_start_1
    const-string/jumbo v9, "pref_key_mail_notification"

    invoke-static {p0, v9}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    goto :goto_0

    .line 326
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "isSpecialNotification":Z
    goto :goto_1

    .line 334
    :cond_3
    invoke-static {p0}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v9

    invoke-virtual {v9, p1}, Lacl;->b(Ljava/lang/String;)Z

    move-result v0

    .line 335
    .local v0, "accountCanNotify":Z
    if-nez v0, :cond_4

    .line 336
    const-string/jumbo v8, "MailBridge"

    const-string/jumbo v9, "accountCanNotify return false"

    invoke-static {v8, v9}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 341
    :cond_5
    const-string/jumbo v9, "MailBridge"

    const-string/jumbo v10, "changeFolder is null, default return true"

    invoke-static {v9, v10}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 342
    goto :goto_2

    .line 345
    :cond_6
    invoke-static {p1}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v3

    .line 346
    .local v3, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-nez v3, :cond_7

    .line 347
    const-string/jumbo v9, "MailBridge"

    const-string/jumbo v10, "getFolderApi fail, default return true"

    invoke-static {v9, v10}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 348
    goto :goto_2

    .line 350
    :cond_7
    const/4 v5, 0x0

    .line 351
    .local v5, "isFolderPush":Z
    invoke-virtual {p2}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->getFolders()Ljava/util/List;

    move-result-object v2

    .line 352
    .local v2, "changedFolderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    .line 353
    .local v1, "changedFolder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByServerId(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v4

    .line 354
    .local v4, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v4, :cond_8

    iget-boolean v9, v4, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    if-eqz v9, :cond_8

    .line 355
    const/4 v5, 0x1

    .line 356
    goto :goto_2

    .end local v0    # "accountCanNotify":Z
    .end local v1    # "changedFolder":Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;
    .end local v2    # "changedFolderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;>;"
    .end local v3    # "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    .end local v4    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v5    # "isFolderPush":Z
    .end local v6    # "isSpecialNotification":Z
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 316
    :catch_2
    move-exception v9

    goto/16 :goto_0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 4
    .param p0, "mailServerId"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 373
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v3

    invoke-virtual {v3, p0}, Lacs;->a(Ljava/lang/String;)I

    move-result v2

    .line 377
    .local v2, "notificationId":I
    if-eqz v2, :cond_0

    .line 378
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 379
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
