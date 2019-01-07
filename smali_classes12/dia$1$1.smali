.class final Ldia$1$1;
.super Ljava/lang/Object;
.source "EventGifManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldia$1;->run()V
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
        "Ldtc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldia$1;


# direct methods
.method constructor <init>(Ldia$1;J)V
    .locals 0
    .param p1, "this$1"    # Ldia$1;

    .prologue
    .line 73
    iput-object p1, p0, Ldia$1$1;->b:Ldia$1;

    iput-wide p2, p0, Ldia$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 73
    check-cast p1, Ldtc;

    .line 1076
    iget-object v0, p0, Ldia$1$1;->b:Ldia$1;

    iget-object v0, v0, Ldia$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1077
    if-eqz p1, :cond_1

    .line 1078
    iget-wide v0, p0, Ldia$1$1;->a:J

    iput-wide v0, p1, Ldtc;->c:J

    .line 1079
    iget-object v0, p0, Ldia$1$1;->b:Ldia$1;

    iget-object v0, v0, Ldia$1;->b:Ldia;

    invoke-static {v0, p1}, Ldia;->a(Ldia;Ldtc;)V

    .line 1080
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Gif event newVersion topic:"

    aput-object v2, v1, v3

    iget-wide v2, p1, Ldtc;->a:J

    .line 1081
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, " mediaId:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Ldtc;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1080
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :goto_0
    iget-object v0, p0, Ldia$1$1;->b:Ldia$1;

    iget-object v0, v0, Ldia$1;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void

    .line 1084
    :cond_1
    iget-object v0, p0, Ldia$1$1;->b:Ldia$1;

    iget-object v0, v0, Ldia$1;->b:Ldia;

    invoke-static {v0, v4}, Ldia;->a(Ldia;Ldtc;)V

    .line 1085
    new-instance p1, Ldtc;

    invoke-direct {p1}, Ldtc;-><init>()V

    .line 1086
    iget-wide v0, p0, Ldia$1$1;->a:J

    iput-wide v0, p1, Ldtc;->c:J

    .line 1087
    const-string/jumbo v0, "im"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "[EventGifManager] getEmotionIcon result null"

    aput-object v2, v1, v3

    .line 1088
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Ldia$1$1;->b:Ldia$1;

    iget-object v0, v0, Ldia$1;->a:Lcma;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ldia$1$1;->b:Ldia$1;

    iget-object v0, v0, Ldia$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[EventGifManager] getEmotionIcon fail code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 105
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 97
    return-void
.end method
