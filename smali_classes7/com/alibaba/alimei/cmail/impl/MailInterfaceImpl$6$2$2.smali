.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Labw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field final synthetic b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1854
    check-cast p1, Labw;

    .line 2857
    if-nez p1, :cond_0

    .line 2858
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->b:Landroid/app/Activity;

    invoke-static {v0}, Lacp;->a(Landroid/app/Activity;)V

    .line 2860
    const-string/jumbo v0, "[API]checkSendMailAndChat:getMailAddressByCid"

    const-string/jumbo v1, "receiver mail empty"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2870
    :goto_0
    return-void

    .line 2863
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-static {v0}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Ljava/util/List;

    move-result-object v0

    .line 2864
    iget-object v1, p1, Labw;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Labw;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2866
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-boolean v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->f:Z

    if-eqz v0, :cond_2

    .line 2867
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->g:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v1, v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v1, v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v4, v4, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    iget-object v5, p1, Labw;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v6, v6, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2869
    :cond_2
    const-string/jumbo v0, "checkSendMailAndChat"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "forwardToGroupChat, cid:"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2870
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, p1, Labw;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v3, v3, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    invoke-static {v0, v1, v2, v4, v3}, Laex;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;ZLcma;)V

    goto :goto_0

    .line 2873
    :cond_3
    const-string/jumbo v0, "checkSendMailAndChat"

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "navToGroupChat parti, cid:"

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1888
    const-string/jumbo v0, "checkSendMailAndChat"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "err & forwardToGroupChat, cid:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v3, v3, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;->b:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1883
    return-void
.end method
