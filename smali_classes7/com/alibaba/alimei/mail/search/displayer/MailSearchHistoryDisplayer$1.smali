.class Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;
.super Ljava/lang/Object;
.source "MailSearchHistoryDisplayer.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->executeLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 62
    const-string/jumbo v0, "MailSearchHistoryDisplayer"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 63
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "historyModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$000(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$100(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$200(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;Ljava/util/List;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$1;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$300(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)V

    .line 58
    return-void
.end method
