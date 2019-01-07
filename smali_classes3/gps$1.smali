.class final Lgps$1;
.super Ljava/lang/Object;
.source "ConversationSpaceUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgps$a;


# direct methods
.method constructor <init>(Lcma;Lgps$a;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lgps$1;->a:Lcma;

    iput-object p2, p0, Lgps$1;->b:Lgps$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 319
    check-cast p1, Ljava/lang/Long;

    .line 2044
    invoke-static {p1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1322
    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lgps$1;->a:Lcma;

    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :goto_0
    return-void

    .line 1326
    :cond_0
    iget-object v0, p0, Lgps$1;->a:Lcma;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 335
    const-string/jumbo v0, "generateConversationSpaceId"

    iget-object v1, p0, Lgps$1;->b:Lgps$a;

    .line 1032
    invoke-static {v0, v1, p1, p2}, Lgps;->a(Ljava/lang/String;Lgps$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lgps$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 331
    return-void
.end method
