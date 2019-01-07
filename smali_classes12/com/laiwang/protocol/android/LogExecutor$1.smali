.class final Lcom/laiwang/protocol/android/LogExecutor$1;
.super Ljava/lang/Object;
.source "LogExecutor.java"

# interfaces
.implements Lcom/laiwang/protocol/upload/Uploader$OnFileUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/LogExecutor;->upload(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/laiwang/protocol/android/LogExecutor$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Lcom/laiwang/protocol/upload/UploaderExtra;Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;)V
    .locals 1
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p2, "errorStatus"    # Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .prologue
    .line 117
    const-string/jumbo v0, "[Log] upload log file failed"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->d(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final onSuccess(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    .local p1, "resMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "up-uri"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 105
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "idx":I
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 107
    iget-object v2, p0, Lcom/laiwang/protocol/android/LogExecutor$1;->val$file:Ljava/io/File;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/LogExecutor;->access$000(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    :goto_0
    const-string/jumbo v2, "[Log] upload log file result success %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/laiwang/protocol/android/LogExecutor$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/laiwang/protocol/android/log/TraceLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .end local v0    # "idx":I
    :cond_0
    return-void

    .line 109
    .restart local v0    # "idx":I
    :cond_1
    iget-object v2, p0, Lcom/laiwang/protocol/android/LogExecutor$1;->val$file:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/laiwang/protocol/android/LogExecutor;->access$000(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onUploadProcess(Lcom/laiwang/protocol/upload/UploaderExtra;II)V
    .locals 0
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;
    .param p2, "total"    # I
    .param p3, "offset"    # I

    .prologue
    .line 123
    return-void
.end method
