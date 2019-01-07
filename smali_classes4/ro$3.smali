.class public final Lro$3;
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
        "Lzz;",
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
    .line 310
    iput-object p1, p0, Lro$3;->b:Lro;

    iput-object p2, p0, Lro$3;->a:Lcma;

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
    .line 324
    const-string/jumbo v0, "getCommonMemo"

    invoke-static {v0, p1, p2, p3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    iget-object v0, p0, Lro$3;->a:Lcma;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lro$3;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    check-cast p1, Lzz;

    .line 1313
    const-string/jumbo v0, "MailRPC"

    const-string/jumbo v1, "getCommonMemo, success"

    iget-object v2, p0, Lro$3;->a:Lcma;

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1314
    if-eqz p1, :cond_0

    iget-object v0, p1, Lzz;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lzz;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    :cond_0
    const-string/jumbo v0, "MailRPC"

    const-string/jumbo v1, "getCommonMemo, success, data empty"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_1
    iget-object v0, p0, Lro$3;->a:Lcma;

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lro$3;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 310
    :cond_2
    return-void
.end method
