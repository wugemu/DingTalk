.class final Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;
.super Ljava/lang/Object;
.source "AuthenticationFailedException.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;->handleAuthFail(Ljava/lang/String;)V
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
        "Lur;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;->b:Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;->b:Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;->access$000(Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
