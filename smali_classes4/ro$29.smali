.class public final Lro$29;
.super Lcmi;
.source "MailRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lro;


# direct methods
.method public constructor <init>(Lro;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lro;

    .prologue
    .line 1045
    iput-object p1, p0, Lro$29;->b:Lro;

    iput-object p2, p0, Lro$29;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1056
    const-string/jumbo v0, "MailRPC"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "upload operation info fail, "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "reason: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1057
    iget-object v0, p0, Lro$29;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lro$29;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1045
    check-cast p1, Ljava/lang/Void;

    .line 2048
    const-string/jumbo v0, "MailRPC"

    const-string/jumbo v1, "upload operation info success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p0, Lro$29;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lro$29;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1045
    :cond_0
    return-void
.end method
