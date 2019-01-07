.class Lcom/alibaba/doraemon/log/FileLogger$3;
.super Ljava/lang/Object;
.source "FileLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/log/FileLogger;->clearExpiredFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/log/FileLogger;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/log/FileLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/log/FileLogger;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/doraemon/log/FileLogger$3;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

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
    .line 280
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger$3;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v6}, Lcom/alibaba/doraemon/log/FileLogger;->access$200(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/io/File;

    .line 281
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/alibaba/doraemon/log/FileLogger$3;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v6}, Lcom/alibaba/doraemon/log/FileLogger;->access$300(Lcom/alibaba/doraemon/log/FileLogger;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 284
    .local v0, "allFiles":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 301
    .end local v0    # "allFiles":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 287
    .restart local v0    # "allFiles":[Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v5, v0, v6

    .line 288
    .local v5, "logFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    .line 291
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "fileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/doraemon/log/FileLogger$3;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v8}, Lcom/alibaba/doraemon/log/FileLogger;->access$400(Lcom/alibaba/doraemon/log/FileLogger;)Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/alibaba/doraemon/log/FileLogger$LogFileNameFromDate;->parseDateFromName(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 293
    .local v1, "createDate":Ljava/util/Date;
    iget-object v8, p0, Lcom/alibaba/doraemon/log/FileLogger$3;->this$0:Lcom/alibaba/doraemon/log/FileLogger;

    invoke-static {v8, v1}, Lcom/alibaba/doraemon/log/FileLogger;->access$500(Lcom/alibaba/doraemon/log/FileLogger;Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 294
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "createDate":Ljava/util/Date;
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "allFiles":[Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "logFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
