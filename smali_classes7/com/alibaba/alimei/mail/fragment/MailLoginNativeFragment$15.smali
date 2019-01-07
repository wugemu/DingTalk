.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
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
        "Laby;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1472
    check-cast p1, Laby;

    .line 2475
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2476
    :cond_0
    :goto_0
    return-void

    .line 2478
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->a:Ljava/lang/String;

    iget-object v2, p1, Laby;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->b:Lcma;

    invoke-static {v0, v1, v2, v3}, Lacg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$15;->c:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    :goto_0
    return-void

    .line 1490
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1483
    return-void
.end method
