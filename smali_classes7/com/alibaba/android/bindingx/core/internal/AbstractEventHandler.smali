.class public abstract Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;
.super Ljava/lang/Object;
.source "AbstractEventHandler.java"

# interfaces
.implements Lanx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;
    }
.end annotation


# instance fields
.field protected mAnchorInstanceId:Ljava/lang/String;

.field private mCachedExpressionMap:Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache",
            "<",
            "Ljava/lang/String;",
            "Laoi;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallback:Lanu$a;

.field protected mContext:Landroid/content/Context;

.field protected mExitExpressionPair:Laok;

.field protected volatile mExpressionHoldersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laoj;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInstanceId:Ljava/lang/String;

.field protected volatile mInterceptorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laok;",
            ">;"
        }
    .end annotation
.end field

.field protected mPlatformManager:Laoa;

.field protected final mScope:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mToken:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Laoa;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Laoa;
    .param p3, "extension"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mScope:Ljava/util/Map;

    .line 66
    new-instance v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mCachedExpressionMap:Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;

    .line 69
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mPlatformManager:Laoa;

    .line 71
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    aget-object v0, p3, v2

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mInstanceId:Ljava/lang/String;

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyFunctionsToScope()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mScope:Ljava/util/Map;

    invoke-static {v1}, Laom;->a(Ljava/util/Map;)V

    .line 105
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mScope:Ljava/util/Map;

    invoke-static {v1}, Laot;->a(Ljava/util/Map;)V

    .line 107
    invoke-static {}, Lanv;->a()Lanv;

    move-result-object v1

    .line 2064
    iget-object v1, v1, Lanv;->a:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 108
    .local v0, "customFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laol;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mScope:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    :cond_0
    return-void
.end method

.method private transformArgs(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 114
    .local p2, "originalArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v5, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 115
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    .line 117
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 118
    .local v7, "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "element"

    invoke-static {v7, v5}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "targetRef":Ljava/lang/String;
    const-string/jumbo v5, "instanceId"

    invoke-static {v7, v5}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "targetInstanceId":Ljava/lang/String;
    const-string/jumbo v5, "property"

    invoke-static {v7, v5}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "property":Ljava/lang/String;
    const-string/jumbo v5, "expression"

    invoke-static {v7, v5}, Laou;->b(Ljava/util/Map;Ljava/lang/String;)Laok;

    move-result-object v3

    .line 124
    .local v3, "expressionPair":Laok;
    const-string/jumbo v5, "config"

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 125
    .local v8, "configObj":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 126
    .local v6, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v8, :cond_2

    instance-of v5, v8, Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 128
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    check-cast v8, Ljava/util/Map;

    .end local v8    # "configObj":Ljava/lang/Object;
    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v5}, Laou;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 134
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_4

    .line 135
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "skip illegal binding args["

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v12, "]"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lanz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v9

    .line 130
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "parse config failed"

    invoke-static {v5, v9}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 138
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v0, Laoj;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Laoj;-><init>(Ljava/lang/String;Ljava/lang/String;Laok;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    .local v0, "holder":Laoj;
    iget-object v5, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 141
    .local v10, "holders":Ljava/util/List;, "Ljava/util/List<Laoj;>;"
    if-nez v10, :cond_5

    .line 142
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "holders":Ljava/util/List;, "Ljava/util/List<Laoj;>;"
    const/4 v5, 0x4

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .restart local v10    # "holders":Ljava/util/List;, "Ljava/util/List<Laoj;>;"
    iget-object v5, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 145
    :cond_5
    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 149
    .end local v0    # "holder":Laoj;
    .end local v1    # "targetRef":Ljava/lang/String;
    .end local v2    # "targetInstanceId":Ljava/lang/String;
    .end local v3    # "expressionPair":Laok;
    .end local v4    # "property":Ljava/lang/String;
    .end local v6    # "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "arg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "holders":Ljava/util/List;, "Ljava/util/List<Laoj;>;"
    :cond_6
    return-void
.end method

.method private tryInterceptAllIfNeeded(Ljava/util/Map;)V
    .locals 5
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 207
    .local p1, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mInterceptorsMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mInterceptorsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mInterceptorsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Laok;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "interceptorName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laok;

    .line 213
    .local v1, "interceptCondition":Laok;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p0, v2, v1, p1}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->performInterceptIfNeeded(Ljava/lang/String;Laok;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method protected clearExpressions()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 312
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExpressionHoldersMap:Ljava/util/Map;

    .line 314
    :cond_0
    iput-object v1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExitExpressionPair:Laok;

    .line 315
    return-void
.end method

.method protected consumeExpression(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 19
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "currentType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laoj;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Laoj;>;>;"
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->tryInterceptAllIfNeeded(Ljava/util/Map;)V

    .line 231
    if-nez p1, :cond_1

    .line 232
    const-string/jumbo v2, "expression args is null"

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    const-string/jumbo v2, "no expression need consumed"

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    sget-boolean v2, Lanz;->a:Z

    if-eqz v2, :cond_3

    .line 241
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "consume expression with %d tasks. event type is %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object p3, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 244
    .local v13, "holderList":Ljava/util/List;, "Ljava/util/List<Laoj;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoj;

    .line 245
    .local v12, "holder":Laoj;
    iget-object v2, v12, Laoj;->e:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skip expression with wrong event type.[expected:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Laoj;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 249
    :cond_6
    iget-object v2, v12, Laoj;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mInstanceId:Ljava/lang/String;

    .line 251
    .local v14, "instanceId":Ljava/lang/String;
    :goto_2
    iget-object v11, v12, Laoj;->c:Laok;

    .line 252
    .local v11, "expressionPair":Laok;
    invoke-static {v11}, Laok;->a(Laok;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mCachedExpressionMap:Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;

    iget-object v3, v11, Laok;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoi;

    .line 256
    .local v10, "expression":Laoi;
    if-nez v10, :cond_7

    .line 257
    new-instance v10, Laoi;

    .end local v10    # "expression":Laoi;
    iget-object v2, v11, Laok;->b:Ljava/lang/String;

    invoke-direct {v10, v2}, Laoi;-><init>(Ljava/lang/String;)V

    .line 258
    .restart local v10    # "expression":Laoi;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mCachedExpressionMap:Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;

    iget-object v3, v11, Laok;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v10}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Laoi;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    .line 262
    .local v6, "obj":Ljava/lang/Object;
    if-nez v6, :cond_9

    .line 263
    const-string/jumbo v2, "failed to execute expression,expression result is null"

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 249
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v10    # "expression":Laoi;
    .end local v11    # "expressionPair":Laok;
    .end local v14    # "instanceId":Ljava/lang/String;
    :cond_8
    iget-object v14, v12, Laoj;->b:Ljava/lang/String;

    goto :goto_2

    .line 266
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v10    # "expression":Laoi;
    .restart local v11    # "expressionPair":Laok;
    .restart local v14    # "instanceId":Ljava/lang/String;
    :cond_9
    instance-of v2, v6, Ljava/lang/Double;

    if-eqz v2, :cond_a

    move-object v2, v6

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    instance-of v2, v6, Ljava/lang/Float;

    if-eqz v2, :cond_c

    move-object v2, v6

    check-cast v2, Ljava/lang/Float;

    .line 267
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 268
    :cond_b
    const-string/jumbo v2, "failed to execute expression,expression result is NaN"

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mPlatformManager:Laoa;

    .line 3048
    iget-object v2, v2, Laoa;->b:Laoa$c;

    .line 273
    iget-object v3, v12, Laoj;->a:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v5, v7

    invoke-interface {v2, v3, v5}, Laoa$c;->findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 274
    .local v4, "targetView":Landroid/view/View;
    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v3

    iget-object v5, v12, Laoj;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mPlatformManager:Laoa;

    .line 4043
    iget-object v7, v2, Laoa;->a:Laoa$b;

    .line 278
    iget-object v8, v12, Laoj;->f:Ljava/util/Map;

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v0, v12, Laoj;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v9, v2

    const/4 v2, 0x1

    aput-object v14, v9, v2

    .line 4074
    iget-object v2, v3, Lanw;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 4078
    iget-object v0, v3, Lanw;->a:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Laob;

    new-instance v2, Lanw$1;

    invoke-direct/range {v2 .. v9}, Lanw$1;-><init>(Lanw;Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Laoa$b;Ljava/util/Map;[Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Laob;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_d
    if-nez v4, :cond_e

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "failed to execute expression,target view not found.[ref:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v12, Laoj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lanz;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 290
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mPlatformManager:Laoa;

    .line 5053
    iget-object v3, v2, Laoa;->c:Laoa$d;

    .line 290
    iget-object v5, v12, Laoj;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mPlatformManager:Laoa;

    .line 6043
    iget-object v7, v2, Laoa;->a:Laoa$b;

    .line 294
    iget-object v8, v12, Laoj;->f:Ljava/util/Map;

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v0, v12, Laoj;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v9, v2

    const/4 v2, 0x1

    aput-object v14, v9, v2

    .line 290
    invoke-interface/range {v3 .. v9}, Laoa$d;->synchronouslyUpdateViewOnUIThread(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Laoa$b;Ljava/util/Map;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected evaluateExitExpression(Laok;Ljava/util/Map;)Z
    .locals 4
    .param p1, "exitExpression"    # Laok;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laok;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 161
    .local p2, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 162
    .local v1, "exit":Z
    invoke-static {p1}, Laok;->a(Laok;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    new-instance v2, Laoi;

    iget-object v3, p1, Laok;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Laoi;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "expression":Laoi;
    :try_start_0
    invoke-virtual {v2, p2}, Laoi;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 170
    .end local v2    # "expression":Laoi;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->clearExpressions()V

    .line 174
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onExit(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    :cond_1
    :goto_1
    return v1

    .line 166
    .restart local v2    # "expression":Laoi;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "evaluateExitExpression failed. "

    invoke-static {v3, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "expression":Laoi;
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "execute exit expression failed: "

    invoke-static {v3, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onBindExpression(Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Lanu$a;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpressionPair"    # Laok;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "callback"    # Lanu$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lanu$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p2, "globalConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->clearExpressions()V

    .line 86
    invoke-direct {p0, p1, p4}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->transformArgs(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    iput-object p5, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mCallback:Lanu$a;

    .line 88
    iput-object p3, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mExitExpressionPair:Laok;

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mScope:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mScope:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->applyFunctionsToScope()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mCachedExpressionMap:Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;

    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler$Cache;->clear()V

    .line 100
    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v0

    .line 1095
    iget-object v0, v0, Lanw;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public abstract onExit(Ljava/util/Map;)V
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public performInterceptIfNeeded(Ljava/lang/String;Laok;Ljava/util/Map;)V
    .locals 5
    .param p1, "interceptorName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "condition"    # Laok;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Laok;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 191
    .local p3, "scope":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Laok;->a(Laok;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v1, Laoi;

    iget-object v3, p2, Laok;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Laoi;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, "expression":Laoi;
    const/4 v2, 0x0

    .line 197
    .local v2, "shouldIntercept":Z
    :try_start_0
    invoke-virtual {v1, p3}, Laoi;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 201
    :goto_1
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0, p1, p3}, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->onUserIntercept(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "evaluate interceptor ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] expression failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lanz;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAnchorInstanceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "anchorInstanceId"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mAnchorInstanceId:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setInterceptors(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Laok;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Laok;>;"
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mInterceptorsMap:Ljava/util/Map;

    .line 187
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/bindingx/core/internal/AbstractEventHandler;->mToken:Ljava/lang/String;

    .line 320
    return-void
.end method
