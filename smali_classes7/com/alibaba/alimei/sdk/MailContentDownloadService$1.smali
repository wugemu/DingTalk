.class final Lcom/alibaba/alimei/sdk/MailContentDownloadService$1;
.super Ljava/lang/Object;
.source "MailContentDownloadService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/MailContentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/MailContentDownloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/MailContentDownloadService$1;->a:Lcom/alibaba/alimei/sdk/MailContentDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 62
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1066
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1067
    const/4 v0, -0x1

    .line 1069
    :goto_0
    return v0

    .line 1068
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1069
    const/4 v0, 0x1

    goto :goto_0

    .line 1071
    :cond_1
    const/4 v0, 0x0

    .line 62
    goto :goto_0
.end method
