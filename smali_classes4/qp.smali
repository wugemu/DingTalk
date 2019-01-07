.class public final Lqp;
.super Lahd;
.source "CommonDownloadMailDetailTask.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lahd;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final a()Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lqp;->a:Ljava/lang/String;

    invoke-static {v0}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 27
    invoke-static {p1, p2}, Lpp;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 28
    return-void
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "CommonDownloadMailDetailTask"

    return-object v0
.end method
