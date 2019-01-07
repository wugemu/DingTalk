.class public final Lblz$6;
.super Ljava/lang/Object;
.source "ApDeviceServiceHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lblz$6;->a:Ljava/lang/String;

    iput-object p2, p0, Lblz$6;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 221
    .line 1224
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    invoke-virtual {v0}, Lbnh;->c()Ljava/util/Map;

    move-result-object v1

    .line 1225
    const/4 v0, 0x0

    .line 1226
    if-eqz v1, :cond_0

    iget-object v2, p0, Lblz$6;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    iget-object v0, p0, Lblz$6;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1229
    :cond_0
    iget-object v1, p0, Lblz$6;->b:Lcma;

    if-eqz v1, :cond_1

    .line 1230
    iget-object v1, p0, Lblz$6;->b:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 221
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 241
    const-string/jumbo v2, "ApDeviceService"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "getKeyAndSsids exp code = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", reason = "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v2

    invoke-virtual {v2}, Lbnh;->c()Ljava/util/Map;

    move-result-object v0

    .line 243
    .local v0, "corpSsidsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_1

    .line 244
    iget-object v2, p0, Lblz$6;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 245
    .local v1, "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 246
    iget-object v2, p0, Lblz$6;->b:Lcma;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lblz$6;->b:Lcma;

    invoke-interface {v2, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 255
    .end local v1    # "ssids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v2, p0, Lblz$6;->b:Lcma;

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lblz$6;->b:Lcma;

    invoke-interface {v2, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 237
    return-void
.end method
