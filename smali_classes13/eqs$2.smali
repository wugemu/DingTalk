.class final Leqs$2;
.super Lesb;
.source "ContactSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leqs;->r()V
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
    .line 1050
    iput-object p1, p0, Leqs$2;->b:Leqs;

    iput-wide p5, p0, Leqs$2;->a:J

    invoke-direct {p0, p2, p3, p4}, Lesb;-><init>(Leqq;Ljava/lang/String;Leoe;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 16
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

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1055
    .line 2037
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lesb;->c:Lesa;

    invoke-virtual {v3}, Lesa;->a()Leoe;

    move-result-object v3

    .line 1055
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->CONTACT:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez p2, :cond_1

    const/4 v5, 0x0

    .line 1056
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Leqs$2;->a:J

    sub-long/2addr v6, v14

    const/4 v8, 0x0

    .line 1055
    invoke-static/range {v3 .. v8}, Letb;->a(Leoe;Ljava/lang/String;IJZ)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    iget-object v3, v3, Leqs;->b:Leqp$b;

    invoke-interface {v3}, Leqp$b;->d()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1098
    :cond_0
    :goto_1
    return-void

    .line 1056
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    .line 1062
    :cond_2
    const-string/jumbo v3, "task_user"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2042
    move-object/from16 v0, p0

    iget-object v3, v0, Lesb;->c:Lesa;

    invoke-virtual {v3}, Lesa;->b()Z

    move-result v3

    .line 1066
    if-eqz v3, :cond_0

    .line 1070
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_6

    .line 1071
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    const/4 v4, 0x4

    invoke-static {v3, v4}, Leqs;->a(Leqs;I)I

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    const/4 v4, 0x0

    iput v4, v3, Leqs;->g:I

    .line 1077
    :goto_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1078
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v10

    .line 1079
    .local v10, "currentUid":J
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1080
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1082
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_4

    .line 1083
    const-string/jumbo v3, "uid"

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1084
    .local v12, "uid":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-lez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    invoke-static {v3}, Leqs;->i(Leqs;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    cmp-long v3, v10, v12

    if-nez v3, :cond_4

    .line 1085
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1074
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "currentUid":J
    .end local v12    # "uid":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    iget v4, v3, Leqs;->g:I

    add-int/lit8 v4, v4, 0x64

    iput v4, v3, Leqs;->g:I

    goto :goto_2

    .line 1089
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "currentUid":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    .line 3047
    move-object/from16 v0, p0

    iget-object v4, v0, Lesb;->c:Lesa;

    invoke-virtual {v4}, Lesa;->c()Ljava/lang/String;

    move-result-object v4

    .line 4037
    move-object/from16 v0, p0

    iget-object v5, v0, Lesb;->c:Lesa;

    invoke-virtual {v5}, Lesa;->a()Leoe;

    move-result-object v5

    .line 1089
    sget-object v6, Lcom/alibaba/android/search/ContactSource;->NonRelationO2O:Lcom/alibaba/android/search/ContactSource;

    move-object/from16 v0, p2

    invoke-static {v3, v4, v5, v0, v6}, Leqs;->a(Leqs;Ljava/lang/String;Leoe;Ljava/util/List;Lcom/alibaba/android/search/ContactSource;)V

    .line 1090
    const-string/jumbo v3, "[Contact]doSearchNonRelationContacts %d %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Leqs$2;->b:Leqs;

    iget v6, v6, Leqs;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Leqs$2;->b:Leqs;

    iget v6, v6, Leqs;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Leqs$2;->b:Leqs;

    invoke-static {v6}, Leqs;->c(Leqs;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 4050
    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    iget v3, v3, Leqs;->h:I

    const/16 v4, 0x50

    if-le v3, v4, :cond_8

    .line 1093
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    const/4 v4, 0x0

    iput v4, v3, Leqs;->h:I

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    invoke-virtual {v3}, Leqs;->o()V

    goto/16 :goto_1

    .line 1096
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Leqs$2;->b:Leqs;

    invoke-virtual {v3}, Leqs;->a()V

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
    .line 1101
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 1104
    return-void
.end method
