.class public abstract Lgpf;
.super Ljava/lang/Object;
.source "CSpaceBaseTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgpf$b;,
        Lgpf$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lgpd;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lgpf$a;

.field protected d:Z

.field public e:Z

.field protected f:Z

.field protected g:Ljava/lang/String;

.field protected h:Lgpf$b;

.field protected i:Z

.field protected j:Ljava/lang/String;

.field protected k:Lcom/alibaba/doraemon/threadpool/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgpf;->b:Ljava/util/Set;

    .line 79
    iput-object p1, p0, Lgpf;->g:Ljava/lang/String;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CSpaceBaseTask"

    aput-object v2, v0, v1

    const-string/jumbo v1, "_"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lgpf;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v0, v3, v1}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    iput-object v0, p0, Lgpf;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 81
    return-void
.end method

.method protected static a(Lyc;)Landroid/util/Pair;
    .locals 7
    .param p0, "eventMessage"    # Lyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyc;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 233
    if-nez p0, :cond_0

    .line 234
    const v4, 0xf1b37

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "eventMessage is null"

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 266
    :goto_0
    return-object v4

    .line 236
    :cond_0
    iget-object v3, p0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 237
    .local v3, "exception":Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v4

    if-nez v4, :cond_2

    .line 238
    :cond_1
    const v4, 0xf1b38

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "eventMessage.exception is null"

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0

    .line 240
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v0

    .line 242
    .local v0, "apiError":Lcom/alibaba/alimei/framework/SDKError;
    sget-object v4, Lgpf$5;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 259
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    .line 1150
    invoke-static {v4, v6}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v1

    .line 262
    .local v1, "errorCode":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "errorMsg":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 264
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v6

    const/4 v5, 0x1

    const-string/jumbo v6, ": "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_0

    .line 244
    .end local v1    # "errorCode":I
    .end local v2    # "errorMsg":Ljava/lang/String;
    :pswitch_0
    const v1, 0xf1b3e

    .line 245
    .restart local v1    # "errorCode":I
    goto :goto_1

    .line 247
    .end local v1    # "errorCode":I
    :pswitch_1
    const v1, 0xf1b3c

    .line 248
    .restart local v1    # "errorCode":I
    goto :goto_1

    .line 250
    .end local v1    # "errorCode":I
    :pswitch_2
    const v1, 0xf1b3f

    .line 251
    .restart local v1    # "errorCode":I
    goto :goto_1

    .line 253
    .end local v1    # "errorCode":I
    :pswitch_3
    const v1, 0xf1b42

    .line 254
    .restart local v1    # "errorCode":I
    goto :goto_1

    .line 256
    .end local v1    # "errorCode":I
    :pswitch_4
    const v1, 0xf1b36

    .line 257
    .restart local v1    # "errorCode":I
    goto :goto_1

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 290
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CSpaceBaseTask: key: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lgpf;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "], "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 271
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1}, Lgpp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-direct {p0, p1}, Lgpf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2049
    const-string/jumbo v2, "cspace_task"

    const-string/jumbo v3, "cspace_task"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v1, p2}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 281
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x14

    invoke-static {v1}, Lgpp;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-direct {p0, p1}, Lgpf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3045
    const-string/jumbo v2, "cspace_task"

    const-string/jumbo v3, "cspace_task"

    const/16 v4, 0x14

    invoke-static {v2, v3, v4, v1, p2}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgpf;->e:Z

    .line 85
    const-string/jumbo v0, "baseTask: start: set mIsProcessing=true"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected final a(ILjava/lang/Object;JJ)V
    .locals 13
    .param p1, "status"    # I
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "totalSize"    # J
    .param p5, "progressSize"    # J

    .prologue
    .line 188
    iget-boolean v0, p0, Lgpf;->d:Z

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "baseTask: notifyProgress: canceled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v10, p0, Lgpf;->b:Ljava/util/Set;

    monitor-enter v10

    .line 194
    :try_start_0
    iget-object v0, p0, Lgpf;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgpd;

    .line 195
    .local v3, "progressObserver":Lgpd;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    new-instance v1, Lgpf$3;

    move-object v2, p0

    move-object v4, p2

    move v5, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lgpf$3;-><init>(Lgpf;Lgpd;Ljava/lang/Object;IJJ)V

    invoke-virtual {v11, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 202
    .end local v3    # "progressObserver":Lgpd;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lgpd;)V
    .locals 2
    .param p1, "progressListener"    # Lgpd;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lgpf;->b:Ljava/util/Set;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lgpf;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lgpf$a;)V
    .locals 0
    .param p1, "resultCallback"    # Lgpf$a;

    .prologue
    .line 115
    iput-object p1, p0, Lgpf;->c:Lgpf$a;

    .line 116
    return-void
.end method

.method public final a(Lgpf$b;)V
    .locals 0
    .param p1, "taskUUIDGen"    # Lgpf$b;

    .prologue
    .line 119
    iput-object p1, p0, Lgpf;->h:Lgpf$b;

    .line 120
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 144
    iget-object v1, p0, Lgpf;->c:Lgpf$a;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lgpf;->c:Lgpf$a;

    invoke-interface {v1, p0}, Lgpf$a;->a(Lgpf;)V

    .line 148
    :cond_0
    iget-boolean v1, p0, Lgpf;->d:Z

    if-eqz v1, :cond_1

    .line 149
    const-string/jumbo v1, "baseTask: notifySuccess: canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lgpf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v2, p0, Lgpf;->b:Ljava/util/Set;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v1, p0, Lgpf;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpd;

    .line 155
    .local v0, "progressObserver":Lgpd;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lgpf$1;

    invoke-direct {v4, p0, v0, p1}, Lgpf$1;-><init>(Lgpf;Lgpd;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 162
    .end local v0    # "progressObserver":Lgpd;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Lgpf;->c:Lgpf$a;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lgpf;->c:Lgpf$a;

    invoke-interface {v0, p0}, Lgpf$a;->a(Lgpf;)V

    .line 170
    :cond_0
    iget-boolean v0, p0, Lgpf;->d:Z

    if-eqz v0, :cond_1

    .line 171
    const-string/jumbo v0, "baseTask: notifyFailed: canceled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v6, p0, Lgpf;->b:Ljava/util/Set;

    monitor-enter v6

    .line 176
    :try_start_0
    iget-object v0, p0, Lgpf;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgpd;

    .line 177
    .local v2, "progressObserver":Lgpd;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v0, Lgpf$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgpf$2;-><init>(Lgpf;Lgpd;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 184
    .end local v2    # "progressObserver":Lgpd;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4
    .param p1, "startNewTask"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    iget-boolean v0, p0, Lgpf;->d:Z

    if-eqz v0, :cond_1

    .line 90
    const-string/jumbo v0, "baseTask: cancel: cancel is true, return"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput-boolean v3, p0, Lgpf;->d:Z

    .line 95
    const-string/jumbo v0, "baseTask: cancel: set cancel is true"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lgpf;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lgpf;->k:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 99
    const-string/jumbo v0, "baseTask: cancel: cancel mRunThread"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_2
    if-eqz p1, :cond_0

    .line 103
    const-string/jumbo v0, "baseTask: start new task"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lgpf;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lgpf;->c:Lgpf$a;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lgpf;->c:Lgpf$a;

    invoke-interface {v0, p0}, Lgpf$a;->a(Lgpf;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lgpf;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 5
    .param p1, "info"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 206
    iget-object v2, p0, Lgpf;->b:Ljava/util/Set;

    monitor-enter v2

    .line 207
    :try_start_0
    iget-object v1, p0, Lgpf;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpd;

    .line 208
    .local v0, "progressObserver":Lgpd;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lgpf$4;

    invoke-direct {v4, p0, v0, p1}, Lgpf$4;-><init>(Lgpf;Lgpd;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 215
    .end local v0    # "progressObserver":Lgpd;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "notifyProgress"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lgpf;->f:Z

    .line 124
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "wifiOnlyTask"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lgpf;->i:Z

    .line 128
    return-void
.end method
