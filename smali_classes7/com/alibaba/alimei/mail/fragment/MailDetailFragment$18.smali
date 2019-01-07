.class public final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2374
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2383
    :goto_0
    return-void

    .line 2377
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->b:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;ZZ)V

    .line 2378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2379
    .local v0, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 2380
    const-string/jumbo v1, "desc"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2382
    :cond_1
    const/16 v1, 0x648

    const-string/jumbo v2, "\u661f\u6807\u90ae\u4ef6\u5931\u8d25"

    invoke-static {v1, v0, v2}, Lajg;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2363
    .line 3366
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3369
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$18;->b:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;ZZ)V

    .line 2363
    :cond_0
    return-void
.end method
