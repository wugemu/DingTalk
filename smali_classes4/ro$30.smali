.class final Lro$30;
.super Lcmi;
.source "MailRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lro;->a(Ljava/util/List;JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Labn;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lro;


# direct methods
.method constructor <init>(Lro;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lro;

    .prologue
    .line 145
    iput-object p1, p0, Lro$30;->b:Lro;

    iput-object p2, p0, Lro$30;->a:Lcma;

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
    .line 156
    const-string/jumbo v0, "getMailCid"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    iget-object v0, p0, Lro$30;->a:Lcma;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lro$30;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    check-cast p1, Ljava/util/List;

    .line 1148
    const-string/jumbo v0, "MailRPC"

    const-string/jumbo v1, "getMailCid, onLoadSuccess"

    iget-object v2, p0, Lro$30;->a:Lcma;

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1149
    iget-object v0, p0, Lro$30;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lro$30;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method
