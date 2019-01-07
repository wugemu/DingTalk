.class final Lfle$2;
.super Ljava/lang/Object;
.source "CustomEntryConfigDownloader.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfle;


# direct methods
.method constructor <init>(Lfle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfle;

    .prologue
    .line 138
    iput-object p1, p0, Lfle$2;->b:Lfle;

    iput-object p2, p0, Lfle$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "totalSize"    # J
    .param p4, "downloadSize"    # J

    .prologue
    .line 183
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 6
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v5, -0x68

    .line 141
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    invoke-static {}, Lflg;->a()Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "configDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    :cond_0
    iget-object v3, p0, Lfle$2;->b:Lfle;

    const/4 v4, -0x3

    invoke-static {v3, v4}, Lfle;->a(Lfle;I)V

    .line 175
    .end local v0    # "configDir":Ljava/io/File;
    :goto_0
    return-void

    .line 145
    .restart local v0    # "configDir":Ljava/io/File;
    :cond_1
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    iget-object v3, p0, Lfle$2;->b:Lfle;

    invoke-static {v3, v5}, Lfle;->a(Lfle;I)V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "entryConfig.zip"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v2, "zipFile":Ljava/io/File;
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v3

    invoke-static {v3, v2}, Lcna;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 158
    iget-object v3, p0, Lfle$2;->b:Lfle;

    const/4 v4, -0x4

    invoke-static {v3, v4}, Lfle;->a(Lfle;I)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lfle$2;->b:Lfle;

    const/4 v4, -0x5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lfle;->a(Lfle;ILjava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/doraemon/utils/ZipUtil;->unzip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    iget-object v3, p0, Lfle$2;->a:Ljava/lang/String;

    .line 1071
    const-string/jumbo v4, "pref_key_custom_entry_config"

    invoke-static {v4, v3}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v3, "invalidateConfig success"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lfle$2;->b:Lfle;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lfle;->a(Lfle;ILjava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0    # "configDir":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "zipFile":Ljava/io/File;
    :cond_4
    iget-object v3, p0, Lfle$2;->b:Lfle;

    const/16 v4, -0x67

    invoke-static {v3, v4}, Lfle;->a(Lfle;I)V

    goto :goto_0
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 179
    return-void
.end method
