.class public final Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .param p2, "entry"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .prologue
    .line 934
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    .line 936
    invoke-static {p2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->written:[Z

    .line 937
    return-void

    .line 936
    :cond_0
    iget v0, p1, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->valueCount:I

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache;
    .param p2, "x1"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;

    .prologue
    .line 924
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    .prologue
    .line 924
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2502(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 924
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->hasErrors:Z

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
    .line 1042
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$2300(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)V

    .line 1043
    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1046
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->committed:Z

    if-nez v1, :cond_0

    .line 1048
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "ignored":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

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

    .line 1028
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$2300(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)V

    .line 1030
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1100(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$2400(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Ljava/lang/String;)Z

    .line 1034
    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->committed:Z

    .line 1035
    return-void

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-static {v0, p0, v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$2300(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Z)V

    goto :goto_0
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
    .line 963
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 964
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$1900(Ljava/io/InputStream;)Ljava/lang/String;

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

    .line 944
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    monitor-enter v2

    .line 945
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 946
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 956
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 948
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 949
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    :goto_0
    return-object v0

    .line 952
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 954
    :catch_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public final newOutputStream(IIJ)Ljava/io/OutputStream;
    .locals 7
    .param p1, "index"    # I
    .param p2, "command"    # I
    .param p3, "seekBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 974
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    monitor-enter v3

    .line 975
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 976
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1009
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 979
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 980
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->written:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, p1

    .line 983
    :cond_1
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1600(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[I

    move-result-object v2

    aput p2, v2, p1

    .line 984
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->access$1700(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;)[J

    move-result-object v2

    aput-wide p3, v2, p1

    .line 986
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->entry:Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 989
    .local v0, "dirtyFile":Ljava/io/File;
    if-ne v5, p2, :cond_2

    .line 990
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1008
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v2, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v1, v4}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alibaba/doraemon/impl/cache/DiskLruCache$1;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :goto_1
    return-object v2

    .line 992
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 996
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    :try_start_5
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/cache/DiskLruCache$Editor;->this$0:Lcom/alibaba/doraemon/impl/cache/DiskLruCache;

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$2000(Lcom/alibaba/doraemon/impl/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 998
    if-ne v5, p2, :cond_3

    .line 999
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1001
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1005
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    :try_start_7
    invoke-static {}, Lcom/alibaba/doraemon/impl/cache/DiskLruCache;->access$2100()Ljava/io/OutputStream;

    move-result-object v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method
