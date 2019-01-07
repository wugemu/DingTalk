.class public final Lahe;
.super Lahd;
.source "DownloadMailDetailTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lahd;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lahe;->a:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 26
    invoke-static {p1, p2}, Lafv;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 27
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "DownloadMailDetailTask"

    return-object v0
.end method
