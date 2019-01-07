.class Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Session"
.end annotation


# instance fields
.field private final mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

.field private final mObjects:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

.field private mRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjects:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    .line 193
    new-instance v0, Lcom/taobao/weex/devtools/json/ObjectMapper;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;-><init>()V

    return-void
.end method

.method private arrayToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 323
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_0

    .line 324
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Argument must be an array.  Was "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 326
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 328
    .local v0, "component":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 329
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 338
    :cond_1
    return-object v3

    .line 333
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 334
    .local v2, "length":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 336
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildExceptionResponse(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
    .locals 3
    .param p1, "retval"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 285
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;

    invoke-direct {v0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 286
    .local v0, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;->wasThrown:Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->objectForRemote(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;->result:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 288
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;

    invoke-direct {v1, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;->exceptionDetails:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;

    .line 289
    iget-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;->exceptionDetails:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ExceptionDetails;->text:Ljava/lang/String;

    .line 290
    return-object v0
.end method

.method private buildNormalResponse(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
    .locals 2
    .param p1, "retval"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 279
    .local v0, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;->wasThrown:Z

    .line 280
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->objectForRemote(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;->result:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 281
    return-object v0
.end method

.method private getPropertiesForIterable(Ljava/lang/Iterable;Z)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    .locals 9
    .param p2, "enumerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;Z)",
            "Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "object":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v7, 0x0

    .line 362
    new-instance v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    invoke-direct {v4, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 363
    .local v4, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;>;"
    const/4 v0, 0x0

    .line 366
    .local v0, "index":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 367
    .local v5, "value":Ljava/lang/Object;
    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;

    invoke-direct {v3, v7}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 368
    .local v3, "property":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    if-eqz p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_1
    iput-object v6, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->name:Ljava/lang/String;

    .line 369
    invoke-virtual {p0, v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->objectForRemote(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    move-result-object v6

    iput-object v6, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->value:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 370
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 368
    goto :goto_1

    .line 373
    .end local v3    # "property":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_1
    iput-object v2, v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;->result:Ljava/util/List;

    .line 374
    return-object v4
.end method

.method private getPropertiesForMap(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 378
    new-instance v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    invoke-direct {v3, v6}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 379
    .local v3, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v1, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;>;"
    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 382
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;

    invoke-direct {v2, v6}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 383
    .local v2, "property":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->name:Ljava/lang/String;

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->objectForRemote(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    move-result-object v5

    iput-object v5, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->value:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 385
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "property":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    :cond_0
    iput-object v1, v3, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;->result:Ljava/util/List;

    .line 389
    return-object v3
.end method

.method private getPropertiesForObject(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 393
    new-instance v8, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    invoke-direct {v8, v9}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 394
    .local v8, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v6, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 397
    .local v0, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 403
    new-instance v4, Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    .local v4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v0, v9, :cond_1

    const-string/jumbo v5, ""

    .line 409
    .local v5, "prefix":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 410
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 413
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 415
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 416
    .local v3, "fieldValue":Ljava/lang/Object;
    new-instance v7, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 417
    .local v7, "property":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->name:Ljava/lang/String;

    .line 418
    invoke-virtual {p0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->objectForRemote(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    move-result-object v10

    iput-object v10, v7, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->value:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 419
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 420
    .end local v3    # "fieldValue":Ljava/lang/Object;
    .end local v7    # "property":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 406
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 398
    .restart local v5    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto/16 :goto_0

    .line 425
    .end local v4    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 426
    iput-object v6, v8, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;->result:Ljava/util/List;

    .line 427
    return-object v8
.end method

.method private getPropertiesForProtoContainer(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    .locals 6
    .param p1, "proto"    # Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 345
    iget-object v3, p1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;->object:Ljava/lang/Object;

    .line 346
    .local v3, "target":Ljava/lang/Object;
    new-instance v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    invoke-direct {v1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;-><init>()V

    .line 347
    .local v1, "protoRemote":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    sget-object v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->OBJECT:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 348
    sget-object v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;->NODE:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    iput-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->subtype:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    .line 349
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->className:Ljava/lang/String;

    .line 350
    invoke-static {v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->access$300(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    .line 351
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjects:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v4, v3}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->putObject(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->objectId:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;

    invoke-direct {v0, v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 353
    .local v0, "descriptor":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;
    const-string/jumbo v4, "1"

    iput-object v4, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->name:Ljava/lang/String;

    .line 354
    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$PropertyDescriptor;->value:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    .line 355
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    invoke-direct {v2, v5}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 356
    .local v2, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;->result:Ljava/util/List;

    .line 357
    iget-object v4, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;->result:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    return-object v2
.end method

.method private declared-synchronized getRepl(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    .locals 1
    .param p1, "replFactory"    # Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;

    if-nez v0, :cond_0

    .line 272
    invoke-interface {p1}, Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;->newInstance()Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mRepl:Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public evaluate(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
    .locals 6
    .param p1, "replFactory"    # Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;
    .param p2, "params"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v5, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateRequest;

    invoke-virtual {v4, p2, v5}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateRequest;

    .line 257
    .local v1, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateRequest;
    :try_start_0
    const-string/jumbo v4, "console"

    iget-object v5, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateRequest;->objectGroup:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 258
    const-string/jumbo v4, "Not supported by FAB"

    invoke-direct {p0, v4}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->buildExceptionResponse(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;

    move-result-object v4

    .line 265
    :goto_0
    return-object v4

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getRepl(Lcom/taobao/weex/devtools/inspector/console/RuntimeReplFactory;)Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;

    move-result-object v0

    .line 262
    .local v0, "repl":Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    iget-object v4, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateRequest;->expression:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "result":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->buildNormalResponse(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 264
    .end local v0    # "repl":Lcom/taobao/weex/devtools/inspector/console/RuntimeRepl;
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 265
    .local v3, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->buildExceptionResponse(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$EvaluateResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public getObjectOrThrow(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getObjects()Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->getObjectForId(I)Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "object":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v3, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INVALID_REQUEST:Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No object found for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/taobao/weex/devtools/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v1

    .line 210
    :cond_0
    return-object v0
.end method

.method public getObjects()Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjects:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    return-object v0
.end method

.method public getProperties(Lorg/json/JSONObject;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    .locals 5
    .param p1, "params"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/devtools/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjectMapper:Lcom/taobao/weex/devtools/json/ObjectMapper;

    const-class v4, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesRequest;

    invoke-virtual {v3, p1, v4}, Lcom/taobao/weex/devtools/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesRequest;

    .line 296
    .local v1, "request":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesRequest;
    iget-boolean v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesRequest;->ownProperties:Z

    if-nez v3, :cond_0

    .line 297
    new-instance v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;-><init>(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$1;)V

    .line 298
    .local v2, "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;->result:Ljava/util/List;

    .line 317
    .end local v2    # "response":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;
    :goto_0
    return-object v2

    .line 302
    :cond_0
    iget-object v3, v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesRequest;->objectId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getObjectOrThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 304
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->arrayToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 308
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v3, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;

    if-eqz v3, :cond_2

    .line 309
    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;

    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getPropertiesForProtoContainer(Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectProtoContainer;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    move-result-object v2

    goto :goto_0

    .line 310
    :cond_2
    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 311
    check-cast v0, Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getPropertiesForIterable(Ljava/lang/Iterable;Z)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    move-result-object v2

    goto :goto_0

    .line 312
    :cond_3
    instance-of v3, v0, Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 313
    check-cast v0, Ljava/util/Set;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getPropertiesForIterable(Ljava/lang/Iterable;Z)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    move-result-object v2

    goto :goto_0

    .line 314
    :cond_4
    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 315
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getPropertiesForMap(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    move-result-object v2

    goto :goto_0

    .line 317
    :cond_5
    invoke-direct {p0, v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->getPropertiesForObject(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$GetPropertiesResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public objectForRemote(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;-><init>()V

    .line 215
    .local v0, "result":Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;
    if-nez p1, :cond_0

    .line 216
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->OBJECT:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 217
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;->NULL:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->subtype:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectSubType;

    .line 218
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->value:Ljava/lang/Object;

    .line 250
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 219
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 220
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->BOOLEAN:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 221
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->value:Ljava/lang/Object;

    goto :goto_0

    .line 222
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 223
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->NUMBER:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 224
    iput-object p1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->value:Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_2
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_3

    .line 227
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->NUMBER:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 228
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->value:Ljava/lang/Object;

    goto :goto_0

    .line 229
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 230
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->STRING:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 231
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->value:Ljava/lang/Object;

    goto :goto_0

    .line 233
    :cond_4
    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;->OBJECT:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->type:Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$ObjectType;

    .line 234
    const-string/jumbo v1, "What??"

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->className:Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$Session;->mObjects:Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/devtools/inspector/helper/ObjectIdMapper;->putObject(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->objectId:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 238
    const-string/jumbo v1, "array"

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_5
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_6

    .line 240
    const-string/jumbo v1, "List"

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_6
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_7

    .line 242
    const-string/jumbo v1, "Set"

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    goto :goto_0

    .line 243
    :cond_7
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_8

    .line 244
    const-string/jumbo v1, "Map"

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :cond_8
    invoke-static {p1}, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime;->access$300(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Runtime$RemoteObject;->description:Ljava/lang/String;

    goto/16 :goto_0
.end method
