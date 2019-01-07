.class final Ldjz$7;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldjz;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldjz;


# direct methods
.method constructor <init>(Ldjz;)V
    .locals 0
    .param p1, "this$0"    # Ldjz;

    .prologue
    .line 509
    iput-object p1, p0, Ldjz$7;->a:Ldjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 1048
    sget-object v2, Lcjk$a;->a:Lcjk;

    .line 512
    sget-object v6, Ldhc;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcjk;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;

    move-result-object v2

    check-cast v2, Ldhb;

    invoke-interface {v2}, Ldhb;->a()Ljava/util/List;

    move-result-object v12

    .line 513
    .local v12, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 514
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 516
    .local v13, "s":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ldjz$7;->a:Ldjz;

    invoke-static {v2, v13}, Ldjz;->a(Ldjz;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 517
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    if-nez v3, :cond_1

    .line 532
    .end local v3    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v13    # "s":Ljava/lang/String;
    :cond_0
    return-void

    .line 518
    .restart local v3    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v13    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->lastUpdateUnreadCount()J

    move-result-wide v16

    sub-long v10, v6, v16

    .line 519
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v2, v0, Ldjz$7;->a:Ldjz;

    invoke-static {v2, v3}, Ldjz;->c(Ldjz;Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v4

    .line 520
    .local v4, "totalTime":J
    const-wide/16 v6, 0x2

    mul-long/2addr v6, v4

    cmp-long v2, v10, v6

    if-gtz v2, :cond_2

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Ldjz$7;->a:Ldjz;

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Ldjz;->a(Ldjz;Lcom/alibaba/wukong/im/Message;JJZ)Ldjz$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 525
    .end local v3    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v4    # "totalTime":J
    .end local v10    # "duration":J
    :catch_0
    move-exception v9

    .line 526
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 523
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v3    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v4    # "totalTime":J
    .restart local v10    # "duration":J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ldjz$7;->a:Ldjz;

    invoke-static {v2, v3}, Ldjz;->d(Ldjz;Lcom/alibaba/wukong/im/Message;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 527
    .end local v3    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v4    # "totalTime":J
    .end local v10    # "duration":J
    :catch_1
    move-exception v9

    .line 528
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
