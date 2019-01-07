.class final Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$3;
.super Ljava/lang/Object;
.source "MailQuickReplyImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$3;->a:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 154
    const-string/jumbo v0, "saveQuickReplyContent"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 155
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 144
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1147
    if-nez v0, :cond_0

    .line 1148
    const-string/jumbo v0, "save draft content, db write failure"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
