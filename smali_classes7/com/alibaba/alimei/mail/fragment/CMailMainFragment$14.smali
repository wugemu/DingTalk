.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;
.super Laer;
.source "CMailMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Laer;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1828
    invoke-static {}, Lafw;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 1829
    .local v0, "certificates":[Ljava/security/cert/X509Certificate;
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;)V

    invoke-static {v0, v1}, Lafw;->a([Ljava/security/cert/X509Certificate;Lxv;)V

    .line 1854
    return-void
.end method

.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->a:Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1860
    .local v7, "param":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "http://config.mail.163.com/settings/imap/login.jsp?uid="

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1862
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$14;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    .end local v2    # "url":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :goto_0
    return-void

    .line 1863
    :catch_0
    move-exception v6

    .line 1864
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ajustSecurityPolicy"

    invoke-static {v0, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
