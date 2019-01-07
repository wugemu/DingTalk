.class final Lgpr$5;
.super Lcmi;
.source "CSpaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgpr;->a(Ljava/lang/String;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lghz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcma;J)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lgpr$5;->a:Lcma;

    iput-wide p2, p0, Lgpr$5;->b:J

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
    .line 295
    iget-object v0, p0, Lgpr$5;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 253
    check-cast p1, Lghz;

    .line 1256
    if-eqz p1, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    iget-object v0, v0, Lgie;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1260
    iget-object v0, p1, Lghz;->c:Lghw;

    iget-object v0, v0, Lghw;->b:Lgie;

    iget-object v0, v0, Lgie;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgic;

    .line 1262
    if-eqz v0, :cond_4

    .line 1267
    iget-object v1, v0, Lgic;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lgpr$5;->b:J

    iget-object v1, v0, Lgic;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1267
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1268
    :cond_0
    iget-object v0, p0, Lgpr$5;->a:Lcma;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1289
    :goto_0
    return-void

    .line 1272
    :cond_1
    iget-object v1, v0, Lgic;->g:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 1276
    iget-object v1, v0, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v2, "watermark"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1277
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-wide v2, p0, Lgpr$5;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lfzv;->b(Ljava/lang/Long;Z)V

    .line 1282
    :goto_1
    iget-object v0, v0, Lgic;->g:Ljava/util/Map;

    const-string/jumbo v1, "doc_readonly"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1283
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-wide v2, p0, Lgpr$5;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lfzv;->a(Ljava/lang/Long;Z)V

    .line 1284
    iget-object v0, p0, Lgpr$5;->a:Lcma;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1279
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-wide v2, p0, Lgpr$5;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lfzv;->b(Ljava/lang/Long;Z)V

    goto :goto_1

    .line 1286
    :cond_3
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-wide v2, p0, Lgpr$5;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lfzv;->a(Ljava/lang/Long;Z)V

    .line 1287
    iget-object v0, p0, Lgpr$5;->a:Lcma;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1290
    :cond_4
    iget-object v0, p0, Lgpr$5;->a:Lcma;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
