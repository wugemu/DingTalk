.class final Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;
.super Ljava/lang/Object;
.source "MailContentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/MailContentDownloadService;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

.field final synthetic b:Lcom/alibaba/alimei/sdk/MailContentDownloadService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;->b:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    iput-object p2, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailContentDownloadService try too many times, remove : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;->b:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$5;->a:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/sdk/MailContentDownloadService;->a(Lcom/alibaba/alimei/sdk/MailContentDownloadService;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 355
    return-void
.end method
