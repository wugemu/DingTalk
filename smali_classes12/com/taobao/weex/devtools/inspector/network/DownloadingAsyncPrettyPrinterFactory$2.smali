.class final Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;
.super Ljava/lang/Object;
.source "DownloadingAsyncPrettyPrinterFactory.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;->getErrorAsyncPrettyPrinter(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/network/AsyncPrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$headerName:Ljava/lang/String;

.field final synthetic val$headerValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;->val$headerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;->val$headerValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPrettifiedType()Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;->TEXT:Lcom/taobao/weex/devtools/inspector/network/PrettyPrinterDisplayType;

    return-object v0
.end method

.method public final printTo(Ljava/io/PrintWriter;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/PrintWriter;
    .param p2, "payload"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Failed to parse header: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;->val$headerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory$2;->val$headerValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {p1, p2, v0}, Lcom/taobao/weex/devtools/inspector/network/DownloadingAsyncPrettyPrinterFactory;->access$000(Ljava/io/PrintWriter;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 124
    return-void
.end method
