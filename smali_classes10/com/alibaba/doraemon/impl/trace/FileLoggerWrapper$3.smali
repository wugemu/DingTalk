.class Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;
.super Ljava/lang/Object;
.source "FileLoggerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->cloneAllLog(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

.field final synthetic val$from:Ljava/util/Date;

.field final synthetic val$level:I

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$to:Ljava/util/Date;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ILjava/io/OutputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$from:Ljava/util/Date;

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$to:Ljava/util/Date;

    iput p5, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$level:I

    iput-object p6, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$os:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->access$100()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 112
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v5, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;>;"
    invoke-static {}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->access$100()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 115
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    .line 117
    .local v2, "fileLogger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    invoke-virtual {v2}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->syncforceFlush()V

    goto :goto_0

    .line 121
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;>;"
    .end local v2    # "fileLogger":Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;
    .end local v5    # "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;>;"
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->this$0:Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;

    invoke-static {v7}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->access$000(Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;)Lcom/alibaba/doraemon/log/FileLogger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/doraemon/log/FileLogger;->getRootDir()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$uid:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v0, "dir":Ljava/io/File;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd-HH"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, "fileNameSdf":Ljava/text/SimpleDateFormat;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$from:Ljava/util/Date;

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "fromTimeStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$to:Ljava/util/Date;

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "toTimeStr":Ljava/lang/String;
    iget v7, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$level:I

    iget-object v8, p0, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper$3;->val$os:Ljava/io/OutputStream;

    invoke-static {v0, v4, v6, v7, v8}, Lcom/alibaba/doraemon/impl/trace/FileLoggerWrapper;->access$400(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILjava/io/OutputStream;)V

    .line 129
    const-string/jumbo v8, "FileLoggerWrapper"

    monitor-enter v8

    .line 130
    :try_start_0
    const-string/jumbo v7, "FileLoggerWrapper"

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
