.class final Lro$23;
.super Lcmi;
.source "MailRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lro;->b(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcma;

.field final synthetic c:Lro;


# direct methods
.method constructor <init>(Lro;Ljava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lro;

    .prologue
    .line 774
    iput-object p1, p0, Lro$23;->c:Lro;

    iput-object p2, p0, Lro$23;->a:Ljava/util/List;

    iput-object p3, p0, Lro$23;->b:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 795
    const-string/jumbo v0, "getUidInfoByEmails"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    iget-object v0, p0, Lro$23;->b:Lcma;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lro$23;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 774
    check-cast p1, Ljava/util/Map;

    .line 1778
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1779
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "getUidInfoByEmails, onLoadSuccess, result: "

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    :goto_0
    const-string/jumbo v1, "MailRPC"

    iget-object v2, p0, Lro$23;->b:Lcma;

    invoke-static {v1, v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1788
    iget-object v0, p0, Lro$23;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Lro$23;->b:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 774
    :cond_0
    return-void

    .line 1781
    :cond_1
    iget-object v0, p0, Lro$23;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1782
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "getUidInfoByEmails, onLoadFail, emails: "

    aput-object v1, v0, v2

    iget-object v1, p0, Lro$23;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1784
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "getUidInfoByEmails, onLoadFail, emails is null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
