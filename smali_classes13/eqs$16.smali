.class final Leqs$16;
.super Lesb;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leqs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Leqs;


# direct methods
.method constructor <init>(Leqs;Leqq;Ljava/lang/String;Leoe;J)V
    .locals 1
    .param p1, "this$0"    # Leqs;
    .param p2, "baseSearchPresenter"    # Leqq;
    .param p3, "keyWord"    # Ljava/lang/String;
    .param p4, "queryLog"    # Leoe;

    .prologue
    .line 886
    iput-object p1, p0, Leqs$16;->b:Leqs;

    iput-wide p5, p0, Leqs$16;->a:J

    invoke-direct {p0, p2, p3, p4}, Lesb;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .line 891
    .line 1037
    iget-object v0, p0, Lesb;->c:Lesa;

    invoke-virtual {v0}, Lesa;->a()Leoe;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lesb;->c:Lesa;

    invoke-virtual {v0}, Lesa;->a()Leoe;

    move-result-object v1

    .line 892
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->LOCAL_CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v0}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_2

    move v3, v6

    .line 893
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Leqs$16;->a:J

    sub-long/2addr v4, v8

    .line 892
    invoke-static/range {v1 .. v6}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 896
    :cond_0
    iget-object v0, p0, Leqs$16;->b:Leqs;

    iget-object v0, v0, Leqs;->b:Leqp$b;

    invoke-interface {v0}, Leqp$b;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 924
    :cond_1
    :goto_1
    return-void

    .line 893
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 900
    :cond_3
    const-string/jumbo v0, "local_contact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2042
    iget-object v0, p0, Lesb;->c:Lesa;

    invoke-virtual {v0}, Lesa;->b()Z

    move-result v0

    .line 904
    if-eqz v0, :cond_1

    .line 908
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_5

    .line 909
    :cond_4
    iget-object v0, p0, Leqs$16;->b:Leqs;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Leqs;->a(Leqs;I)I

    .line 910
    iget-object v0, p0, Leqs$16;->b:Leqs;

    iput v6, v0, Leqs;->g:I

    .line 915
    :goto_2
    iget-object v0, p0, Leqs$16;->b:Leqs;

    .line 2047
    iget-object v1, p0, Lesb;->c:Lesa;

    invoke-virtual {v1}, Lesa;->c()Ljava/lang/String;

    move-result-object v1

    .line 3037
    iget-object v2, p0, Lesb;->c:Lesa;

    invoke-virtual {v2}, Lesa;->a()Leoe;

    move-result-object v2

    .line 915
    invoke-static {v0, v1, v2, p2}, Leqs;->a(Leqs;Ljava/lang/String;Leoe;Ljava/util/List;)V

    .line 916
    const-string/jumbo v0, "[Contact]searchLocalContacts %d %d %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Leqs$16;->b:Leqs;

    iget v2, v2, Leqs;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Leqs$16;->b:Leqs;

    iget v3, v3, Leqs;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Leqs$16;->b:Leqs;

    invoke-static {v3}, Leqs;->c(Leqs;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    iget-object v0, p0, Leqs$16;->b:Leqs;

    iget v0, v0, Leqs;->h:I

    const/16 v1, 0x50

    if-le v0, v1, :cond_6

    .line 919
    iget-object v0, p0, Leqs$16;->b:Leqs;

    iput v6, v0, Leqs;->h:I

    .line 920
    iget-object v0, p0, Leqs$16;->b:Leqs;

    invoke-virtual {v0}, Leqs;->o()V

    goto :goto_1

    .line 912
    :cond_5
    iget-object v0, p0, Leqs$16;->b:Leqs;

    iget v1, v0, Leqs;->g:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Leqs;->g:I

    goto :goto_2

    .line 922
    :cond_6
    iget-object v0, p0, Leqs$16;->b:Leqs;

    invoke-virtual {v0}, Leqs;->a()V

    goto/16 :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 927
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 930
    return-void
.end method
