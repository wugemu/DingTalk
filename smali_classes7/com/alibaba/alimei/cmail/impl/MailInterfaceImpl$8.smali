.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Lfzl;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfzl;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lfzl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 2072
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->a:Lfzl;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 7
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->a:Lfzl;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->a:Lfzl;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lfzl;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2072
    check-cast p1, Ljava/lang/Long;

    .line 3075
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$8;->a:Lfzl;

    if-eqz v0, :cond_0

    .line 4044
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcoc;->a(Ljava/lang/Long;J)J

    .line 2072
    :cond_0
    return-void
.end method
