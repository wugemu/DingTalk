.class Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;
.super Ljava/lang/Object;
.source "MailSearchHistoryDisplayer.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->initHistoryObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 6
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 188
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    instance-of v1, p2, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 189
    check-cast v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;

    .line 190
    .local v0, "historyGroup":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$400(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 197
    .end local v0    # "historyGroup":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "historyGroup":Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$500(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->getAccountId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer$2;->this$0:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->access$600(Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;)V

    goto :goto_0
.end method
