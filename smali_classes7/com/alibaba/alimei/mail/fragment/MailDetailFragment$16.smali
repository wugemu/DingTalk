.class public final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lxv;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lxv;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->a:Lxv;

    iput-wide p3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    :goto_0
    return-void

    .line 2328
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2312
    .line 3315
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->a:Lxv;

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->a:Lxv;

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$16;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 2312
    :cond_0
    return-void
.end method
