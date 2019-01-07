.class public final Lanu;
.super Ljava/lang/Object;
.source "BindingXCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanu$a;,
        Lanu$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanu$b",
            "<",
            "Lanx;",
            "Landroid/content/Context;",
            "Laoa;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanx;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanu$b",
            "<",
            "Lanx;",
            "Landroid/content/Context;",
            "Laoa;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Laoa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lanu;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Laoa;)V
    .locals 2
    .param p1, "platformManager"    # Laoa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lanu;->b:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lanu;->d:Laoa;

    .line 61
    const-string/jumbo v0, "pan"

    new-instance v1, Lanu$1;

    invoke-direct {v1, p0}, Lanu$1;-><init>(Lanu;)V

    invoke-virtual {p0, v0, v1}, Lanu;->a(Ljava/lang/String;Lanu$b;)V

    .line 67
    const-string/jumbo v0, "orientation"

    new-instance v1, Lanu$2;

    invoke-direct {v1, p0}, Lanu$2;-><init>(Lanu;)V

    invoke-virtual {p0, v0, v1}, Lanu;->a(Ljava/lang/String;Lanu$b;)V

    .line 73
    const-string/jumbo v0, "timing"

    new-instance v1, Lanu$3;

    invoke-direct {v1, p0}, Lanu$3;-><init>(Lanu;)V

    invoke-virtual {p0, v0, v1}, Lanu;->a(Ljava/lang/String;Lanu$b;)V

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lanu$a;)Ljava/lang/String;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lanu$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 95
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "eventType"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "eventType":Ljava/lang/String;
    const-string/jumbo v1, "instanceId"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "anchorInstanceId":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lanz;->a(Ljava/util/Map;)V

    .line 98
    const-string/jumbo v1, "options"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 99
    .local v12, "configObj":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 100
    .local v5, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v12, :cond_0

    instance-of v1, v12, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 102
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    check-cast v12, Ljava/util/Map;

    .end local v12    # "configObj":Ljava/lang/Object;
    invoke-direct {v1, v12}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Laou;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 108
    :cond_0
    :goto_0
    const-string/jumbo v1, "exitExpression"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Laou;->b(Ljava/util/Map;Ljava/lang/String;)Laok;

    move-result-object v6

    .line 110
    .local v6, "exitExpressionPair":Laok;
    const-string/jumbo v1, "anchor"

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "anchor":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Laou;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v7

    .line 112
    .local v7, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static/range {p3 .. p3}, Laou;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .local v8, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laok;>;"
    move-object v1, p0

    move-object/from16 v9, p4

    move-object v10, p1

    move-object/from16 v11, p2

    .line 113
    invoke-virtual/range {v1 .. v11}, Lanu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Ljava/util/Map;Lanu$a;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 103
    .end local v2    # "anchor":Ljava/lang/String;
    .end local v6    # "exitExpressionPair":Laok;
    .end local v7    # "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v8    # "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laok;>;"
    :catch_0
    move-exception v13

    .line 104
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "parse external config failed.\n"

    invoke-static {v1, v13}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Ljava/util/Map;Lanu$a;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "anchor"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "anchorInstanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "exitExpressionPair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Laok;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laok;",
            ">;",
            "Lanu$a;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 274
    .local p4, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local p7, "interceptors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laok;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p6, :cond_1

    .line 275
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doBind failed,illegal argument.["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    .line 276
    const/4 v8, 0x0

    .line 302
    :goto_0
    return-object v8

    .line 279
    :cond_1
    const/4 v1, 0x0

    .line 281
    .local v1, "handler":Lanx;
    move-object v8, p1

    .line 282
    .local v8, "token":Ljava/lang/String;
    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    if-eqz v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .local v7, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    if-eqz v7, :cond_2

    .line 283
    invoke-interface {v7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "handler":Lanx;
    check-cast v1, Lanx;

    .line 286
    .end local v7    # "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    .restart local v1    # "handler":Lanx;
    :cond_2
    if-nez v1, :cond_3

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "binding not enabled,try auto enable it.[sourceRef:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",eventType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1191
    const-string/jumbo v2, "[doPrepare] failed. can not found eventType"

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    .line 1192
    const/4 v8, 0x0

    .line 289
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .restart local v7    # "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    if-eqz v7, :cond_3

    .line 290
    invoke-interface {v7, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "handler":Lanx;
    check-cast v1, Lanx;

    .line 294
    .end local v7    # "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    .restart local v1    # "handler":Lanx;
    :cond_3
    if-eqz v1, :cond_f

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p8

    .line 295
    invoke-interface/range {v1 .. v6}, Lanx;->onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "createBinding success.[exitExp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",args:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Lanx;->setInterceptors(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1195
    :cond_4
    if-nez p9, :cond_5

    .line 1196
    const-string/jumbo v2, "[doPrepare] failed. context or wxInstance is null"

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    .line 1197
    const/4 v8, 0x0

    goto :goto_1

    .line 1201
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1378
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 1203
    :goto_2
    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    if-nez v2, :cond_6

    .line 1204
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lanu;->a:Ljava/util/Map;

    .line 1208
    :cond_6
    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1211
    if-eqz v2, :cond_8

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanx;

    if-eqz v3, :cond_8

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "you have already enabled binding,[token:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",type:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    invoke-interface {v3, v4, p3}, Lanx;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableBinding success.[token:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move-object v8, v4

    .line 1244
    goto/16 :goto_1

    :cond_7
    move-object v4, p1

    .line 1201
    goto :goto_2

    .line 1218
    :cond_8
    if-nez v2, :cond_10

    .line 1219
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 1220
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1385
    :goto_4
    iget-object v2, p0, Lanu;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lanu;->d:Laoa;

    if-nez v2, :cond_a

    .line 1386
    :cond_9
    const/4 v2, 0x0

    .line 1224
    :goto_5
    if-eqz v2, :cond_e

    .line 1226
    invoke-interface {v2, p2}, Lanx;->setAnchorInstanceId(Ljava/lang/String;)V

    .line 1227
    invoke-interface {v2, v4}, Lanx;->setToken(Ljava/lang/String;)V

    .line 1228
    invoke-interface {v2, v4, p3}, Lanx;->onCreate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1229
    invoke-interface {v2, v4, p3}, Lanx;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    invoke-interface {v3, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "enableBinding success.[token:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1388
    :cond_a
    iget-object v2, p0, Lanu;->b:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanu$b;

    .line 1389
    if-nez v2, :cond_b

    .line 1390
    sget-object v2, Lanu;->c:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanu$b;

    .line 1392
    :cond_b
    if-eqz v2, :cond_c

    iget-object v5, p0, Lanu;->d:Laoa;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p10, v6, v9

    move-object/from16 v0, p9

    invoke-interface {v2, v0, v5, v6}, Lanu$b;->createWith(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanx;

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 1234
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "expression enabled failed. [token:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    .line 1235
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1238
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown eventType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    .line 1239
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 299
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "internal error.binding failed for ref:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object v3, v2

    goto/16 :goto_4
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 166
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 168
    :try_start_0
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 169
    .local v2, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanx;

    .line 171
    .local v1, "h":Lanx;
    if-eqz v1, :cond_1

    .line 172
    invoke-interface {v1}, Lanx;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1    # "h":Lanx;
    .end local v2    # "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "release failed"

    invoke-static {v3, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void

    .line 177
    :cond_3
    :try_start_1
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Lanu;->a:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lanu$b;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lanu$b",
            "<",
            "Lanx;",
            "Landroid/content/Context;",
            "Laoa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "creator":Lanu$b;, "Lanu$b<Lanx;Landroid/content/Context;Laoa;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lanu;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable binding ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable binding failed(0x1) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable binding failed(0x2) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 147
    .local v1, "handlerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable binding failed(0x3) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_5
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanx;

    .line 152
    .local v0, "handler":Lanx;
    if-nez v0, :cond_6

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable binding failed(0x4) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 157
    :cond_6
    invoke-interface {v0, p1, p2}, Lanx;->onDisable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disable binding success["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 161
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disabled failed(0x4) ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 306
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    :try_start_0
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 311
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    .local v1, "h":Lanx;
    :try_start_1
    invoke-interface {v1}, Lanx;->onActivityPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "execute activity pause failed."

    invoke-static {v5, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "h":Lanx;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    :catch_1
    move-exception v0

    .line 320
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "activity pause failed"

    invoke-static {v3, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 325
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    :try_start_0
    iget-object v3, p0, Lanu;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 330
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .local v1, "h":Lanx;
    :try_start_1
    invoke-interface {v1}, Lanx;->onActivityResume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "execute activity pause failed."

    invoke-static {v5, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "h":Lanx;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lanx;>;"
    :catch_1
    move-exception v0

    .line 339
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "activity pause failed"

    invoke-static {v3, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
