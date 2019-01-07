.class public Liao;
.super Ljava/lang/Object;
.source "CategoryServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/CategoryService;


# static fields
.field private static volatile a:Liao;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Liao;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Liao;->a:Liao;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Liao;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Liao;->a:Liao;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Liao;

    invoke-direct {v0}, Liao;-><init>()V

    sput-object v0, Liao;->a:Liao;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Liao;->a:Liao;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCategoryChangeListener(Liak;)V
    .locals 0
    .param p1, "listener"    # Liak;

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {p1}, Liam;->a(Liak;)V

    goto :goto_0
.end method

.method public adjustCategoryOrder(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 249
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 251
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "CategoryServiceImpl"

    .line 18014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 252
    const-string/jumbo v0, "[API] adjustCategoryOrder"

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 253
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    const-string/jumbo v0, "[API] Param list is empty"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR param list is empty"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 287
    :goto_0
    return-void

    .line 260
    :cond_1
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 19030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 262
    :cond_2
    :try_start_2
    new-instance v0, Liao$6;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Liao$6;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;)V

    .line 284
    invoke-virtual {v0}, Liao$6;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    .line 21030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 286
    throw v0
.end method

.method public createCategory(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 49
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    const/4 v6, 0x0

    .line 51
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "CategoryServiceImpl"

    .line 1014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 52
    const-string/jumbo v0, "[API] createCategory"

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "[API] Param title null"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid title"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 87
    :goto_0
    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 2030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 63
    :cond_1
    :try_start_2
    new-instance v0, Liao$1;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Liao$1;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Liao$1;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 4030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 86
    throw v0
.end method

.method public deleteCategory(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 94
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "CategoryServiceImpl"

    .line 5014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "[API] deleteCategory"

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 96
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Param categoryId invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR invalid categoryId"

    invoke-static {p3, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 124
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 6030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 105
    :cond_1
    :try_start_2
    new-instance v1, Liao$2;

    const/4 v4, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Liao$2;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 121
    invoke-virtual {v1}, Liao$2;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v1

    .line 8030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 123
    throw v1
.end method

.method public getCategoryById(JLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/category/CategoryObject;>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "CategoryServiceImpl"

    .line 9014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "[API] getCategoryById"

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 133
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Param categoryId invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR invalid categoryId"

    invoke-static {p3, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 168
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_1
    invoke-static {p3}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 10030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 142
    :cond_1
    :try_start_2
    new-instance v1, Liao$3;

    const/4 v4, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-object v3, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Liao$3;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;J)V

    .line 165
    invoke-virtual {v1}, Liao$3;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    .line 12030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 167
    throw v1
.end method

.method public listCategorys(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 209
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/category/CategoryObject;>;>;"
    const-string/jumbo v0, "CategoryServiceImpl"

    const-string/jumbo v1, "[API] listCategorys"

    .line 17018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p1}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 213
    :cond_0
    new-instance v0, Liao$5;

    const/4 v1, 0x0

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Liao$5;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    .line 244
    invoke-virtual {v0}, Liao$5;->start()V

    goto :goto_0
.end method

.method public listConversationByCategoryId(JLjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;>;"
    const/4 v0, 0x0

    .line 329
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "CategoryServiceImpl"

    .line 26014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 330
    const-string/jumbo v1, "[API] listConversationByCategoryId"

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V

    .line 331
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[API] Param categoryId invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v1, "101002"

    const-string/jumbo v2, "PARAMETER_ERR invalid categoryId"

    invoke-static {p4, v1, v2}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 370
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_1
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 27030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 340
    :cond_1
    :try_start_2
    new-instance v1, Liao$8;

    new-instance v3, Liaf$a;

    invoke-direct {v3, p4}, Liaf$a;-><init>(Lcom/alibaba/wukong/Callback;)V

    const/4 v4, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v2

    invoke-virtual {v2}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v5

    move-object v2, p0

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Liao$8;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;JLjava/util/List;)V

    .line 367
    invoke-virtual {v1}, Liao$8;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v1

    .line 29030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 369
    throw v1
.end method

.method public modifyCategory(Lcom/alibaba/wukong/im/category/CategoryObject;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 292
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 294
    .local v6, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "CategoryServiceImpl"

    .line 22014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v6

    .line 295
    const-string/jumbo v0, "[API] modifyCategory"

    invoke-virtual {v6, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 296
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    const-string/jumbo v0, "[API] Param invalid"

    invoke-virtual {v6, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid param"

    invoke-static {p2, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 322
    :goto_0
    return-void

    .line 303
    :cond_1
    :try_start_1
    invoke-static {p2}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 23030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 305
    :cond_2
    :try_start_2
    new-instance v0, Liao$7;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Liao$7;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 319
    invoke-virtual {v0}, Liao$7;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    .line 25030
    invoke-static {v6}, Lhzt;->a(Lhzv;)V

    .line 321
    throw v0
.end method

.method public moveConversations(Ljava/util/List;JLcom/alibaba/wukong/Callback;)V
    .locals 10
    .param p2, "categoryId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 175
    .local v8, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v0, "CategoryServiceImpl"

    .line 13014
    const-string/jumbo v1, "im"

    invoke-static {v0, v1}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v8

    .line 176
    const-string/jumbo v0, "[API] moveConversations"

    invoke-virtual {v8, v0}, Lhzv;->a(Ljava/lang/String;)V

    .line 177
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[API] Param categoryId or cids invalid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lhzv;->b(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "PARAMETER_ERR invalid cids or categoryId"

    invoke-static {p4, v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onException(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 204
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_1
    invoke-static {p4}, Liaf;->a(Lcom/alibaba/wukong/Callback;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 14030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 186
    :cond_2
    :try_start_2
    new-instance v0, Liao$4;

    const/4 v3, 0x1

    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v1

    invoke-virtual {v1}, Liaq;->f()Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object v1, p0

    move-object v2, p4

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Liao$4;-><init>(Liao;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/util/List;J)V

    .line 201
    invoke-virtual {v0}, Liao$4;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v0

    .line 16030
    invoke-static {v8}, Lhzt;->a(Lhzv;)V

    .line 203
    throw v0
.end method

.method public removeCategoryChangeListener(Liak;)V
    .locals 0
    .param p1, "listener"    # Liak;

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-static {p1}, Liam;->b(Liak;)V

    goto :goto_0
.end method
