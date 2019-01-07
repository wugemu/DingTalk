.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;
.super Lcmi;
.source "MailInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Labd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacp;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;Lacp;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->a:Lacp;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->b:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 348
    const-string/jumbo v0, "getUserExtInfo"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->b:Lcma;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->b:Lcma;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 325
    check-cast p1, Labd;

    .line 1329
    if-eqz p1, :cond_1

    .line 1330
    iget-object v0, p1, Labd;->a:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1330
    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->a:Lacp;

    const-string/jumbo v3, "pref_key_first_open_dingmail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lacp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->a:Lacp;

    const-string/jumbo v3, "pref_key_freshmen_login"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lacp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1333
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->a:Lacp;

    const-string/jumbo v3, "pref_key_freshmen_is_admin"

    iget-object v4, p1, Labd;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lacp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1334
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->a:Lacp;

    const-string/jumbo v3, "pref_key_freshmen_admin_url"

    iget-object v4, p1, Labd;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lacp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 1339
    :goto_0
    const-string/jumbo v3, "getUserExtInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "isFirst: "

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->b:Lcma;

    if-eqz v1, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$10;->b:Lcma;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 325
    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
