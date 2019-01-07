.class public Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;
.super Ljava/lang/Object;
.source "FileWrapper.java"


# instance fields
.field public contentType:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->fileName:Ljava/lang/String;

    .line 26
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->inputStream:Ljava/io/InputStream;

    .line 30
    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->fileName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->contentType:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/FileWrapper;->fileName:Ljava/lang/String;

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "nofilename"

    goto :goto_0
.end method
