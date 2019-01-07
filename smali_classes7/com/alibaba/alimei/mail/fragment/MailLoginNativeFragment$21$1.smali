.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->b()V
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1964
    const-string/jumbo v0, "trustUnsafeServer"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1965
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1938
    .line 2942
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$21$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1938
    return-void
.end method
