.class final Lgoz$1;
.super Ljava/lang/Object;
.source "CSpaceTaskController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoz;->a(Landroid/content/Context;Lgpa;Lgpd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgpa;

.field final synthetic b:Lgpd;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lgoz;


# direct methods
.method constructor <init>(Lgoz;Lgpa;Lgpd;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgoz;

    .prologue
    .line 182
    iput-object p1, p0, Lgoz$1;->d:Lgoz;

    iput-object p2, p0, Lgoz$1;->a:Lgpa;

    iput-object p3, p0, Lgoz$1;->b:Lgpd;

    iput-object p4, p0, Lgoz$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 186
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v8

    .line 187
    .local v8, "msg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "CSpaceTaskController.insertNewTask"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 188
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    invoke-static {v1, v8}, Lgoz;->a(Lgoz;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    .line 191
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-object v1, v1, Lgpa;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 192
    :cond_0
    const-string/jumbo v1, ", null param. ERROR!"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 193
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceTaskController"

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    iget-object v2, p0, Lgoz$1;->b:Lgpd;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    .line 195
    invoke-virtual {v5}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-static/range {v1 .. v6}, Lgoz;->a(Lgoz;Lgpd;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :cond_1
    :try_start_1
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-object v4, v1, Lgpa;->a:Ljava/lang/Object;

    .line 201
    .local v4, "paramData":Ljava/lang/Object;
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    invoke-static {v1, v8, v4}, Lgoz;->a(Lgoz;Lcom/alibaba/doraemon/performance/DDStringBuilder;Ljava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 1050
    iget-object v1, v1, Lgoz;->d:Lgpf$b;

    .line 204
    invoke-interface {v1, v4}, Lgpf$b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    const-string/jumbo v1, ", null key. ERROR!"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 207
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceTaskController"

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    iget-object v2, p0, Lgoz$1;->b:Lgpd;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    .line 209
    invoke-virtual {v5}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v6}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    .line 208
    invoke-static/range {v1 .. v6}, Lgoz;->a(Lgoz;Lgpd;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "paramData":Ljava/lang/Object;
    .end local v8    # "msg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 212
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "paramData":Ljava/lang/Object;
    .restart local v8    # "msg":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_2
    :try_start_2
    const-string/jumbo v1, ", key: "

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 215
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 2167
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    .local v11, "tempTask":Lgpf;
    :goto_1
    if-eqz v11, :cond_5

    .line 217
    iget-object v1, p0, Lgoz$1;->b:Lgpd;

    invoke-virtual {v11, v1}, Lgpf;->a(Lgpd;)V

    .line 218
    const-string/jumbo v1, ", just add callback"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 220
    iget-boolean v1, v11, Lgpf;->e:Z

    if-eqz v1, :cond_4

    .line 221
    const-string/jumbo v1, ", task is running"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 283
    :goto_2
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceTaskController"

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 9050
    invoke-virtual {v1}, Lgoz;->a()V

    goto :goto_0

    .line 2170
    .end local v11    # "tempTask":Lgpf;
    :cond_3
    iget-object v1, v1, Lgoz;->c:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpf;

    move-object v11, v1

    goto :goto_1

    .line 223
    .restart local v11    # "tempTask":Lgpf;
    :cond_4
    const-string/jumbo v1, ", task is waiting"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 228
    :cond_5
    const/4 v10, 0x0

    .line 230
    .local v10, "newTask":Lgpf;
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 3050
    iget v1, v1, Lgoz;->e:I

    .line 230
    if-nez v1, :cond_7

    .line 231
    new-instance v10, Lgpg;

    .end local v10    # "newTask":Lgpf;
    iget-object v1, p0, Lgoz$1;->c:Landroid/content/Context;

    invoke-direct {v10, v3, v4, v1}, Lgpg;-><init>(Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;)V

    .line 245
    .restart local v10    # "newTask":Lgpf;
    :cond_6
    :goto_3
    if-nez v10, :cond_9

    .line 246
    const-string/jumbo v1, ", no task created. ERROR!"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 247
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceTaskController"

    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :cond_7
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 4050
    iget v1, v1, Lgoz;->e:I

    .line 233
    if-ne v1, v5, :cond_6

    .line 234
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget v7, v1, Lgpa;->f:I

    .line 235
    .local v7, "conflictType":I
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget v9, v1, Lgpa;->b:I

    .line 237
    .local v9, "netType":I
    if-nez v9, :cond_8

    .line 238
    new-instance v10, Lgpi;

    .end local v10    # "newTask":Lgpf;
    iget-object v1, p0, Lgoz$1;->c:Landroid/content/Context;

    invoke-direct {v10, v3, v4, v7, v1}, Lgpi;-><init>(Ljava/lang/String;Ljava/lang/Object;ILandroid/content/Context;)V

    .restart local v10    # "newTask":Lgpf;
    goto :goto_3

    .line 240
    :cond_8
    if-ne v9, v5, :cond_6

    .line 241
    new-instance v10, Lgpj;

    .end local v10    # "newTask":Lgpf;
    iget-object v1, p0, Lgoz$1;->c:Landroid/content/Context;

    invoke-direct {v10, v3, v4, v7, v1}, Lgpj;-><init>(Ljava/lang/String;Ljava/lang/Object;ILandroid/content/Context;)V

    .restart local v10    # "newTask":Lgpf;
    goto :goto_3

    .line 250
    .end local v7    # "conflictType":I
    .end local v9    # "netType":I
    :cond_9
    const-string/jumbo v1, ", new task created"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 253
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-boolean v1, v1, Lgpa;->c:Z

    invoke-virtual {v10, v1}, Lgpf;->c(Z)V

    .line 254
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 5050
    iget-object v1, v1, Lgoz;->d:Lgpf$b;

    .line 254
    invoke-virtual {v10, v1}, Lgpf;->a(Lgpf$b;)V

    .line 255
    iget-object v1, p0, Lgoz$1;->b:Lgpd;

    invoke-virtual {v10, v1}, Lgpf;->a(Lgpd;)V

    .line 256
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-boolean v1, v1, Lgpa;->e:Z

    invoke-virtual {v10, v1}, Lgpf;->b(Z)V

    .line 257
    new-instance v1, Lgoz$1$1;

    invoke-direct {v1, p0}, Lgoz$1$1;-><init>(Lgoz$1;)V

    invoke-virtual {v10, v1}, Lgpf;->a(Lgpf$a;)V

    .line 264
    instance-of v1, v10, Lgph;

    if-eqz v1, :cond_a

    .line 265
    move-object v0, v10

    check-cast v0, Lgph;

    move-object v12, v0

    .line 266
    .local v12, "uploadTask":Lgph;
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-boolean v1, v1, Lgpa;->h:Z

    .line 5367
    iput-boolean v1, v12, Lgph;->n:Z

    .line 267
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-object v1, v1, Lgpa;->i:Ljava/lang/String;

    .line 5371
    iput-object v1, v12, Lgph;->p:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-boolean v1, v1, Lgpa;->j:Z

    .line 5375
    iput-boolean v1, v12, Lgph;->o:Z

    .line 269
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-boolean v1, v1, Lgpa;->k:Z

    .line 5379
    iput-boolean v1, v12, Lgph;->q:Z

    .line 272
    .end local v12    # "uploadTask":Lgph;
    :cond_a
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 6153
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v10, :cond_d

    .line 274
    :cond_b
    :goto_4
    iget-object v1, p0, Lgoz$1;->a:Lgpa;

    iget-boolean v1, v1, Lgpa;->d:Z

    if-eqz v1, :cond_e

    .line 275
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 7082
    if-eqz v10, :cond_c

    .line 7085
    iget-object v2, v1, Lgoz;->a:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7086
    :try_start_3
    iget-object v1, v1, Lgoz;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 7087
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    :cond_c
    :try_start_4
    const-string/jumbo v1, ", offer first"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_2

    .line 6156
    :cond_d
    iget-object v1, v1, Lgoz;->c:Ljava/util/Map;

    invoke-interface {v1, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 7087
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 278
    :cond_e
    iget-object v1, p0, Lgoz$1;->d:Lgoz;

    .line 8091
    if-eqz v10, :cond_f

    .line 8094
    iget-object v2, v1, Lgoz;->a:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 8095
    :try_start_7
    iget-object v1, v1, Lgoz;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->offerLast(Ljava/lang/Object;)Z

    .line 8096
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 279
    :cond_f
    :try_start_8
    const-string/jumbo v1, ", offer last"

    invoke-virtual {v8, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 8096
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method
