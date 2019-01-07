.class public final Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/request/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p2, "entry"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    .line 746
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->written:[Z

    .line 747
    return-void

    .line 746
    :cond_0
    invoke-static {p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$1800(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache;
    .param p2, "x1"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;

    .prologue
    .line 738
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public final abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 887
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$2200(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)V

    .line 888
    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 893
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 873
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$2200(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)V

    .line 875
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 879
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->committed:Z

    .line 880
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$2200(Lcom/alibaba/doraemon/impl/request/DiskLruCache;Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public final getDirtyFileSize(I)J
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 845
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    monitor-enter v2

    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 847
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 854
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 849
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 850
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->written:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, p1

    .line 852
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v0

    .line 853
    .local v0, "dirtyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v4
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 774
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 775
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 754
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 758
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 759
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    :goto_0
    return-object v0

    .line 762
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 764
    :catch_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final newOutputStream(I)Ljava/io/FileOutputStream;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 786
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    monitor-enter v3

    .line 787
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 788
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 808
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 790
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 791
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->written:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, p1

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 796
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    monitor-exit v3

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v1

    .line 799
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$1900(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 801
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 804
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    const/4 v1, 0x0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final newOutputStream(IZ)Ljava/io/OutputStream;
    .locals 5
    .param p1, "index"    # I
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 819
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    monitor-enter v3

    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 821
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 841
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 823
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 824
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->written:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, p1

    .line 826
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 829
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v2, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v4}, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alibaba/doraemon/impl/request/DiskLruCache$1;)V

    monitor-exit v3

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v2

    .line 832
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/request/DiskLruCache;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$1900(Lcom/alibaba/doraemon/impl/request/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 837
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    :try_start_5
    invoke-static {}, Lcom/alibaba/doraemon/impl/request/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
