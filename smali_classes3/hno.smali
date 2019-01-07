.class public final Lhno;
.super Liqd;
.source "MiniAppConsoleProviderImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Liqd;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Liqd;->handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    const-string/jumbo v0, "MiniAppConsoleProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handle console log from work : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void
.end method
