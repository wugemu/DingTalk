.class final Lcom/taobao/weex/wson/Wson$Builder;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final refsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:[B

.field private position:I

.field private refs:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    .line 361
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    .line 367
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 372
    :goto_0
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    .line 373
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 378
    :goto_1
    return-void

    .line 370
    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    goto :goto_0

    .line 376
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/wson/Wson$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/wson/Wson$1;

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/wson/Wson$Builder;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toWson(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/wson/Wson$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/wson/Wson$Builder;

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;->close()V

    return-void
.end method

.method private final close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v0, v0

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_0

    .line 390
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 397
    :goto_0
    iput-object v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    .line 398
    iput-object v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 400
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private final ensureCapacity(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 736
    iget v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/2addr p1, v2

    .line 738
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v2, v2

    sub-int v2, p1, v2

    if-lez v2, :cond_2

    .line 739
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v2

    .line 740
    .local v1, "oldCapacity":I
    shl-int/lit8 v0, v1, 0x1

    .line 741
    .local v0, "newCapacity":I
    const/16 v2, 0x4000

    if-ge v0, v2, :cond_0

    .line 742
    const/16 v0, 0x4000

    .line 744
    :cond_0
    sub-int v2, v0, p1

    if-gez v2, :cond_1

    .line 745
    move v0, p1

    .line 747
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    .line 749
    .end local v0    # "newCapacity":I
    .end local v1    # "oldCapacity":I
    :cond_2
    return-void
.end method

.method private final toMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 16
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 618
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 620
    .local v7, "map":Ljava/util/Map;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 621
    .local v11, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 622
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6, v11}, Lcom/taobao/weex/wson/Wson;->access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 623
    .local v10, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Method;

    .line 624
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 625
    .local v9, "methodName":Ljava/lang/String;
    const-string/jumbo v14, "get"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 626
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 627
    .local v12, "value":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v10    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v11    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 654
    .local v2, "e":Ljava/lang/Exception;
    instance-of v13, v2, Ljava/lang/RuntimeException;

    if-eqz v13, :cond_4

    .line 655
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2    # "e":Ljava/lang/Exception;
    throw v2

    .line 632
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v9    # "methodName":Ljava/lang/String;
    .restart local v10    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v11    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v14, "is"

    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 633
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 634
    .restart local v12    # "value":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 637
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 641
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v6, v11}, Lcom/taobao/weex/wson/Wson;->access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 642
    .local v5, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 643
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "fieldName":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 647
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 648
    .restart local v12    # "value":Ljava/lang/Object;
    if-eqz v12, :cond_3

    .line 651
    invoke-interface {v7, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 657
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v5    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .end local v11    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "value":Ljava/lang/Object;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 660
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v10    # "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v11    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return-object v7
.end method

.method private final toWson(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 383
    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    new-array v0, v1, [B

    .line 384
    .local v0, "bts":[B
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    return-object v0
.end method

.method private final writeAdapterObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 605
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Lfq;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-static {p1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 615
    :goto_0
    return-void

    .line 610
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Lfq;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfq;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-static {p1}, Lgxk;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final writeByte(B)V
    .locals 2
    .param p1, "type"    # B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 600
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    aput-byte p1, v0, v1

    .line 601
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 602
    return-void
.end method

.method private final writeDouble(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 696
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    .line 697
    return-void
.end method

.method private final writeFloat(F)V
    .locals 4
    .param p1, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 701
    .local v0, "val":I
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x3

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 702
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x2

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 703
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 704
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v2, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 705
    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 706
    return-void
.end method

.method private final writeLong(J)V
    .locals 5
    .param p1, "val"    # J

    .prologue
    .line 709
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x7

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 710
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x6

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 711
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 712
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 713
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 714
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 715
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 716
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 717
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 718
    return-void
.end method

.method private final writeMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "map"    # Ljava/util/Map;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 577
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 578
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .line 579
    .local v2, "nullValueSize":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 580
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 586
    const/16 v3, 0x7b

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 587
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 588
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 589
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 592
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeMapKeyUTF16(Ljava/lang/String;)V

    .line 593
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 596
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method

.method private final writeMapKeyUTF16(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    .line 665
    return-void
.end method

.method private final writeNumber(Ljava/lang/Number;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/Number;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x69

    const/16 v4, 0x64

    .line 512
    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 513
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 514
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 515
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    .line 564
    :goto_0
    return-void

    .line 519
    :cond_0
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 520
    const/16 v3, 0x46

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 521
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeFloat(F)V

    goto :goto_0

    .line 524
    :cond_1
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 525
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 526
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_0

    .line 530
    :cond_2
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 531
    const/16 v3, 0x6c

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 532
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    goto :goto_0

    .line 536
    :cond_3
    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_4

    instance-of v3, p1, Ljava/lang/Byte;

    if-eqz v3, :cond_5

    .line 538
    :cond_4
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 539
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    goto :goto_0

    .line 543
    :cond_5
    instance-of v3, p1, Ljava/math/BigInteger;

    if-eqz v3, :cond_6

    .line 544
    const/16 v3, 0x67

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 549
    :cond_6
    instance-of v3, p1, Ljava/math/BigDecimal;

    if-eqz v3, :cond_8

    .line 550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 552
    .local v0, "doubleValue":D
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 553
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 554
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_0

    .line 556
    :cond_7
    const/16 v3, 0x65

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 557
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 561
    .end local v0    # "doubleValue":D
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    const/16 v3, 0x73

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private final writeObject(Ljava/lang/Object;)V
    .locals 14
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v13, 0xa

    const/16 v12, 0x5b

    const/16 v11, 0x8

    const/16 v10, 0x30

    const/4 v9, 0x2

    .line 403
    instance-of v8, p1, Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    .line 404
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 405
    const/16 v8, 0x73

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 406
    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    .line 507
    :goto_0
    return-void

    .line 408
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v8, p1, Ljava/util/Map;

    if-eqz v8, :cond_2

    .line 409
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 410
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 411
    invoke-direct {p0, v10}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, p1

    .line 415
    check-cast v5, Ljava/util/Map;

    .line 416
    .local v5, "map":Ljava/util/Map;
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V

    .line 417
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 419
    .end local v5    # "map":Ljava/util/Map;
    :cond_2
    instance-of v8, p1, Ljava/util/List;

    if-eqz v8, :cond_5

    .line 420
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 421
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 422
    invoke-direct {p0, v10}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-direct {p0, v11}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    move-object v4, p1

    .line 427
    check-cast v4, Ljava/util/List;

    .line 428
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v12}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 429
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 430
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 431
    .local v7, "value":Ljava/lang/Object;
    invoke-direct {p0, v7}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 433
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 435
    .end local v4    # "list":Ljava/util/List;
    :cond_5
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_6

    move-object v6, p1

    .line 436
    check-cast v6, Ljava/lang/Number;

    .line 437
    .local v6, "number":Ljava/lang/Number;
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->writeNumber(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 439
    .end local v6    # "number":Ljava/lang/Number;
    :cond_6
    instance-of v8, p1, Ljava/lang/Boolean;

    if-eqz v8, :cond_8

    .line 440
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    move-object v7, p1

    .line 441
    check-cast v7, Ljava/lang/Boolean;

    .line 442
    .local v7, "value":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 443
    const/16 v8, 0x74

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto/16 :goto_0

    .line 445
    :cond_7
    const/16 v8, 0x66

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto/16 :goto_0

    .line 448
    .end local v7    # "value":Ljava/lang/Boolean;
    :cond_8
    if-nez p1, :cond_9

    .line 449
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 450
    invoke-direct {p0, v10}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto/16 :goto_0

    .line 452
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 453
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 454
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 455
    invoke-direct {p0, v10}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto/16 :goto_0

    .line 458
    :cond_a
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-direct {p0, v11}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 460
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 461
    .local v3, "length":I
    invoke-direct {p0, v12}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 462
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 463
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_b

    .line 464
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 465
    .local v7, "value":Ljava/lang/Object;
    invoke-direct {p0, v7}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 467
    .end local v7    # "value":Ljava/lang/Object;
    :cond_b
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 469
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_c
    instance-of v8, p1, Ljava/util/Date;

    if-eqz v8, :cond_d

    .line 470
    invoke-direct {p0, v13}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 471
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    long-to-double v0, v8

    .line 472
    .local v0, "date":D
    const/16 v8, 0x64

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 473
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto/16 :goto_0

    .line 474
    .end local v0    # "date":D
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    instance-of v8, p1, Ljava/util/Calendar;

    if-eqz v8, :cond_e

    .line 475
    invoke-direct {p0, v13}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 476
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    long-to-double v0, v8

    .line 477
    .restart local v0    # "date":D
    const/16 v8, 0x64

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 478
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto/16 :goto_0

    .line 479
    .end local v0    # "date":D
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_e
    instance-of v8, p1, Ljava/util/Collection;

    if-eqz v8, :cond_11

    .line 480
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 481
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 482
    invoke-direct {p0, v10}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto/16 :goto_0

    .line 485
    :cond_f
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-direct {p0, v11}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    move-object v4, p1

    .line 487
    check-cast v4, Ljava/util/Collection;

    .line 488
    .local v4, "list":Ljava/util/Collection;
    invoke-direct {p0, v12}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 489
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 490
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 491
    .restart local v7    # "value":Ljava/lang/Object;
    invoke-direct {p0, v7}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_3

    .line 493
    .end local v7    # "value":Ljava/lang/Object;
    :cond_10
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 495
    .end local v4    # "list":Ljava/util/Collection;
    :cond_11
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 496
    invoke-direct {p0, v9}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 497
    invoke-direct {p0, v10}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto/16 :goto_0

    .line 499
    :cond_12
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 501
    invoke-static {p1}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 505
    :goto_4
    iget-object v8, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 503
    :cond_13
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeAdapterObject(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private final writeUInt(I)V
    .locals 3
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 725
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 727
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 728
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 v2, p1, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 731
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 732
    return-void
.end method

.method private final writeUTF16String(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 675
    .local v2, "length":I
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 676
    mul-int/lit8 v3, v2, 0x2

    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 677
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 679
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 680
    .local v0, "ch":C
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 681
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 682
    iget v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 686
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 687
    .restart local v0    # "ch":C
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v4, v4, 0x1

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 688
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 689
    iget v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 692
    .end local v0    # "ch":C
    :cond_1
    return-void
.end method

.method private final writeVarInt(I)V
    .locals 2
    .param p1, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 721
    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 722
    return-void
.end method
