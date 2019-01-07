.class final Ldzk$2;
.super Ljava/lang/Object;
.source "VoiceRecordImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldzk;->a(JLcma;)Z
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
        "Ljava/util/List",
        "<",
        "Lduk;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Ldzk;


# direct methods
.method constructor <init>(Ldzk;Lcma;JI)V
    .locals 1
    .param p1, "this$0"    # Ldzk;

    .prologue
    .line 238
    iput-object p1, p0, Ldzk$2;->d:Ldzk;

    iput-object p2, p0, Ldzk$2;->a:Lcma;

    iput-wide p3, p0, Ldzk$2;->b:J

    iput p5, p0, Ldzk$2;->c:I

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
    .line 238
    check-cast p1, Ljava/util/List;

    .line 1241
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduk;

    .line 1244
    if-eqz v0, :cond_0

    iget-object v2, p0, Ldzk$2;->d:Ldzk;

    invoke-static {v2}, Ldzk;->g(Ldzk;)Ljava/util/Map;

    move-result-object v2

    .line 2025
    iget-object v3, v0, Lduk;->a:Ljava/lang/String;

    .line 1244
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1245
    iget-object v2, p0, Ldzk$2;->d:Ldzk;

    invoke-static {v2}, Ldzk;->g(Ldzk;)Ljava/util/Map;

    move-result-object v2

    .line 3025
    iget-object v3, v0, Lduk;->a:Ljava/lang/String;

    .line 1245
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1250
    :cond_1
    iget-object v0, p0, Ldzk$2;->d:Ldzk;

    invoke-static {v0}, Ldzk;->g(Ldzk;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1251
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    const-string/jumbo v2, "mMediaIdMap, empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Ldzk$2;->a:Lcma;

    const-string/jumbo v1, "err"

    const-string/jumbo v2, "err"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :goto_1
    return-void

    .line 1256
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1257
    iget-object v1, p0, Ldzk$2;->d:Ldzk;

    invoke-static {v1}, Ldzk;->g(Ldzk;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1258
    iget-wide v2, p0, Ldzk$2;->b:J

    iget-object v1, p0, Ldzk$2;->d:Ldzk;

    invoke-static {v1}, Ldzk;->h(Ldzk;)Ljava/util/List;

    move-result-object v1

    iget v4, p0, Ldzk$2;->c:I

    new-instance v5, Ldzk$2$1;

    invoke-direct {v5, p0, v0}, Ldzk$2$1;-><init>(Ldzk$2;Ljava/util/List;)V

    invoke-static {v2, v3, v1, v4, v5}, Ldzk;->a(JLjava/util/List;ILcma;)Z

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Ldzk$2;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 293
    return-void
.end method
