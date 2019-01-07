.class final Lacr$6;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacr;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V
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

.field final synthetic c:Lacr;


# direct methods
.method constructor <init>(Lacr;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lacr;

    .prologue
    .line 938
    iput-object p1, p0, Lacr$6;->c:Lacr;

    iput-object p2, p0, Lacr$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lacr$6;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 938
    check-cast p1, Laby;

    .line 1941
    const-string/jumbo v0, "tryLoginNewOrgEmail.queryMailAutoLoginTicket.onDataReceived"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1943
    if-eqz p1, :cond_1

    iget-object v0, p1, Laby;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1944
    new-instance v0, Lacr$6$1;

    invoke-direct {v0, p0}, Lacr$6$1;-><init>(Lacr$6;)V

    .line 1969
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "start agentTicketLogin: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lacr$6;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafg;->a(Ljava/lang/String;)V

    .line 1970
    iget-object v1, p0, Lacr$6;->c:Lacr;

    invoke-static {v1}, Lacr;->b(Lacr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lacr$6;->a:Ljava/lang/String;

    iget-object v3, p1, Laby;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lacg;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    const-string/jumbo v0, "queryMailAutoLoginTicket ticket empty"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lacr$6;->c:Lacr;

    iget-object v1, p0, Lacr$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacr;->e(Lacr;Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lacr$6;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lacr$6;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 988
    const-string/jumbo v0, "tryLoginNewOrgEmail.queryMailAutoLoginTicket"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lacr$6;->c:Lacr;

    iget-object v1, p0, Lacr$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacr;->e(Lacr;Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lacr$6;->b:Lcma;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lacr$6;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 984
    return-void
.end method
