.class final Ly$a;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 13
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    const-string/jumbo v7, "pathList"

    invoke-static {p0, v7}, Ly;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 474
    .local v4, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 475
    .local v2, "dexPathList":Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v5, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const-string/jumbo v8, "dexElements"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1515
    const-string/jumbo v9, "makeDexElements"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/util/ArrayList;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/io/File;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Ljava/util/ArrayList;

    aput-object v12, v10, v11

    .line 1516
    invoke-static {v2, v9, v10}, Ly;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1519
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object p2, v10, v7

    const/4 v7, 0x2

    aput-object v5, v10, v7

    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    .line 476
    invoke-static {v2, v8, v7}, Ly;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 480
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    .line 481
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "MultiDex"

    const-string/jumbo v9, "Exception in makeDexElement"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 483
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    const-string/jumbo v7, "dexElementsSuppressedExceptions"

    .line 484
    invoke-static {v2, v7}, Ly;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 486
    .local v6, "suppressedExceptionsField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/io/IOException;

    move-object v1, v7

    check-cast v1, [Ljava/io/IOException;

    .line 488
    .local v1, "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    if-nez v1, :cond_2

    .line 491
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/io/IOException;

    .line 490
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    check-cast v1, [Ljava/io/IOException;

    .line 502
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :goto_1
    invoke-virtual {v6, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .end local v6    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_1
    return-void

    .line 494
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .restart local v6    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v1

    add-int/2addr v7, v8

    new-array v0, v7, [Ljava/io/IOException;

    .line 496
    .local v0, "combined":[Ljava/io/IOException;
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 497
    const/4 v7, 0x0

    .line 498
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v1

    .line 497
    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    move-object v1, v0

    goto :goto_1
.end method
