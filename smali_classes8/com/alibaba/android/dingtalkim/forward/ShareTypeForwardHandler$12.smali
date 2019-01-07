.class final Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;
.super Ljava/lang/Object;
.source "ShareTypeForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->sendImageMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Ldiz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->a:Ldiz;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 435
    const/16 v16, 0x1

    .line 436
    .local v16, "toastNotSupported":Z
    const/4 v15, 0x0

    .line 437
    .local v15, "showSomeNotSupported":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$300(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v2, "existsFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$300(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 440
    .local v14, "imageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v4, v14}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 441
    .local v13, "filePath":Ljava/lang/String;
    invoke-static {v13}, Ldhw;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_0
    const/4 v15, 0x1

    .line 446
    goto :goto_0

    .line 447
    .end local v13    # "filePath":Ljava/lang/String;
    .end local v14    # "imageUri":Landroid/net/Uri;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 448
    const/16 v16, 0x0

    .line 449
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 450
    .restart local v13    # "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->a:Ldiz;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v13, v5, v6}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 452
    .end local v13    # "filePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->a:Ldiz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->b:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1413
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 462
    .end local v2    # "existsFileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    if-eqz v16, :cond_8

    .line 463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    .line 471
    :cond_4
    :goto_3
    return-void

    .line 454
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldhw;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    const/16 v16, 0x0

    .line 457
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v12, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->a:Ldiz;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1898
    invoke-virtual/range {v17 .. v17}, Ldiz;->a()V

    .line 1900
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 459
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->a:Ldiz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->b:Ljava/lang/String;

    const/4 v5, 0x0

    .line 2413
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_2

    .line 1904
    :cond_6
    const-class v3, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/alibaba/wukong/im/MessageBuilder;->buildImageMessage(Ljava/lang/String;Ljava/lang/String;JII)Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 1906
    invoke-virtual/range {v17 .. v17}, Ldiz;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1907
    const-class v3, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v5, 0x1

    invoke-interface {v3, v6, v5}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;I)Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 1909
    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, v17

    move-object v9, v4

    invoke-virtual/range {v5 .. v11}, Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 465
    .end local v12    # "file":Ljava/io/File;
    :cond_8
    if-eqz v15, :cond_4

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler$12;->c:Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;->access$700(Lcom/alibaba/android/dingtalkim/forward/ShareTypeForwardHandler;)V

    goto/16 :goto_3
.end method
