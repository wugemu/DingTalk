.class public final Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$1;
.super Ljava/lang/Object;
.source "MailQuickReplyImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$1;->a:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 109
    const-string/jumbo v0, "queryMailDetail"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 110
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$1;->a:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1104
    iget-object v0, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$1;->a:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V

    .line 99
    return-void
.end method
