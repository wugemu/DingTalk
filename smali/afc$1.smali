.class public final Lafc$1;
.super Ljava/lang/Object;
.source "MailSameCompanyHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lafc;


# direct methods
.method public constructor <init>(Lafc;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lafc;

    .prologue
    .line 60
    iput-object p1, p0, Lafc$1;->b:Lafc;

    iput-object p2, p0, Lafc$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 60
    check-cast p1, Ljava/util/List;

    .line 1063
    if-nez p1, :cond_0

    .line 1064
    const-string/jumbo v0, "updateMailDomainAliasAsync"

    const-string/jumbo v1, "onDataReceived, aliasList == null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lafc$1;->b:Lafc;

    invoke-static {v0}, Lafc;->a(Lafc;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lafc$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-object v0, p0, Lafc$1;->b:Lafc;

    invoke-static {v0}, Lafc;->b(Lafc;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string/jumbo v0, "updateMailDomainAliasAsync"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 74
    return-void
.end method
