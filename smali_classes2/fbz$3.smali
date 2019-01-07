.class final Lfbz$3;
.super Ljava/lang/Object;
.source "CircleContactSimpleInfoPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbz;
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
        "Lcgc;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcov;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lfbz;


# direct methods
.method constructor <init>(Lfbz;Ljava/util/List;Lcov;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfbz;

    .prologue
    .line 227
    iput-object p1, p0, Lfbz$3;->d:Lfbz;

    iput-object p2, p0, Lfbz$3;->a:Ljava/util/List;

    iput-object p3, p0, Lfbz$3;->b:Lcov;

    iput-object p4, p0, Lfbz$3;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 227
    check-cast p1, Ljava/util/List;

    .line 1230
    iget-object v0, p0, Lfbz$3;->a:Ljava/util/List;

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lfbz$3;->d:Lfbz;

    iget-object v1, p0, Lfbz$3;->b:Lcov;

    .line 2342
    iget-object v2, v0, Lfbz;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2343
    new-instance v2, Ljava/util/TreeMap;

    iget-object v0, v0, Lfbz;->c:Ljava/util/Map;

    invoke-static {p1, v0}, Lfbz;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 2344
    if-eqz v1, :cond_0

    .line 2345
    invoke-interface {v1, v2}, Lcov;->a(Ljava/lang/Object;)V

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1234
    :cond_1
    iget-object v0, p0, Lfbz$3;->d:Lfbz;

    iget-object v1, p0, Lfbz$3;->a:Ljava/util/List;

    iget-object v2, p0, Lfbz$3;->b:Lcov;

    invoke-static {v0, v1, p1, v2}, Lfbz;->a(Lfbz;Ljava/util/List;Ljava/util/List;Lcov;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lfbz$3;->b:Lcov;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lfbz$3;->b:Lcov;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 247
    :cond_0
    const-string/jumbo v0, "getUserEmployeeInfos"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "myself = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lfbz$3;->d:Lfbz;

    .line 1048
    iget-wide v4, v3, Lfbz;->b:J

    .line 248
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "sameOrgUsers count = "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lfbz$3;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, ","

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0, p1, v1}, Lffe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 240
    return-void
.end method
