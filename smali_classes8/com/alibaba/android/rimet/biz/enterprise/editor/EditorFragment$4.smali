.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

.field final synthetic c:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;

.field final synthetic d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->d:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iput-object p4, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->c:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 589
    invoke-static {}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUploadFail->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iget-object v1, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->c:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;

    .line 2490
    iget-object v1, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2491
    :try_start_0
    iget v2, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->d:I

    .line 2492
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->a()V

    .line 591
    return-void

    .line 2492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 577
    :try_start_0
    invoke-static {p2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "serverUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUploadFinished "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->b:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;

    iput-object v0, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$e;->b:Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$4;->c:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;

    .line 2482
    iget-object v2, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2483
    :try_start_1
    iget v3, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->c:I

    .line 2484
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2486
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment$d;->a()V
    :try_end_2
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 584
    .end local v0    # "serverUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 2484
    .restart local v0    # "serverUrl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 582
    .end local v0    # "serverUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorFragment;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "transfer mediaId to url failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 572
    return-void
.end method
