.class final Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V19;
.super Ljava/lang/Object;
.source "DDMultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "V19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/ClassLoader;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/io/File;
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
    .line 303
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 9
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
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
    .line 306
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string/jumbo v6, "pathList"

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 307
    .local v3, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 308
    .local v2, "dexPathList":Ljava/lang/Object;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v4, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const-string/jumbo v6, "dexElements"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v7, p2, v4}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->access$300(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 311
    const-string/jumbo v6, "dexElementsSuppressedExceptions"

    invoke-static {p0, v6}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 312
    .local v5, "suppressedExceptionsField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/IOException;

    move-object v1, v6

    check-cast v1, [Ljava/io/IOException;

    .line 314
    .local v1, "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 315
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/IOException;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    check-cast v1, [Ljava/io/IOException;

    .line 323
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :goto_0
    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .end local v5    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 317
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .restart local v5    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v0, v6, [Ljava/io/IOException;

    .line 318
    .local v0, "combined":[Ljava/io/IOException;
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 319
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v1

    invoke-static {v1, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    move-object v1, v0

    goto :goto_0
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 8
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p3, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    const-string/jumbo v1, "makeDexElements"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    aput-object v3, v2, v5

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v2, v6

    invoke-static {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/multidexsupport/DDMultiDex;->access$400(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 329
    .local v0, "makeDexElements":Ljava/lang/reflect/Method;
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method
