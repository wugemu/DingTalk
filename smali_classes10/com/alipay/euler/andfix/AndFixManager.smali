.class public Lcom/alipay/euler/andfix/AndFixManager;
.super Ljava/lang/Object;
.source "AndFixManager.java"


# static fields
.field private static final DIR:Ljava/lang/String; = "apatch_opt"

.field private static final TAG:Ljava/lang/String; = "AndFixManager"

.field private static mDir:Ljava/lang/String;

.field private static mFixedClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOptDir:Ljava/io/File;

.field private mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

.field private mSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debuggable"    # Z

    .prologue
    .line 79
    const-string/jumbo v0, "apatch_opt"

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/euler/andfix/AndFixManager;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debuggable"    # Z
    .param p3, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    .line 83
    iput-object p1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->isSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    .line 85
    iget-boolean v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/alipay/euler/andfix/security/SecurityChecker;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/alipay/euler/andfix/security/SecurityChecker;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    .line 87
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "apatch_opt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    iput-boolean v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    .line 97
    const-string/jumbo v0, "AndFixManager"

    const-string/jumbo v1, "opt dir create error."

    invoke-static {v0, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_1
    return-void

    .line 90
    :cond_1
    sput-object p3, Lcom/alipay/euler/andfix/AndFixManager;->mDir:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/euler/andfix/AndFixManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/alipay/euler/andfix/AndFixManager;->mDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    iput-boolean v3, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z

    goto :goto_1
.end method

.method private createMethodDes(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "className"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 519
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-object v5

    .line 522
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 523
    .local v1, "paramClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 525
    array-length v5, v1

    if-nez v5, :cond_2

    .line 526
    const-string/jumbo v2, "[]"

    .line 561
    .local v2, "paramDes":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 528
    .end local v2    # "paramDes":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "["

    .line 529
    .restart local v2    # "paramDes":Ljava/lang/String;
    array-length v7, v1

    move v5, v6

    :goto_2
    if-ge v5, v7, :cond_c

    aget-object v0, v1, v5

    .line 530
    .local v0, "param":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 531
    .local v3, "s":Ljava/lang/String;
    const-string/jumbo v8, "boolean"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 532
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Z"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 533
    :cond_3
    const-string/jumbo v8, "char"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "C"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 535
    :cond_4
    const-string/jumbo v8, "float"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "F"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 537
    :cond_5
    const-string/jumbo v8, "int"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "I"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 539
    :cond_6
    const-string/jumbo v8, "long"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 540
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "J"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 541
    :cond_7
    const-string/jumbo v8, "short"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 543
    :cond_8
    const-string/jumbo v8, "double"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 545
    :cond_9
    const-string/jumbo v8, "byte"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 546
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 548
    :cond_a
    const-string/jumbo v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 549
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "L"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 551
    :cond_b
    const-string/jumbo v8, "\\."

    const-string/jumbo v9, "/"

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "ss":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 556
    .end local v0    # "param":Ljava/lang/Class;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "ss":Ljava/lang/String;
    :cond_c
    const-string/jumbo v5, "|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 557
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 559
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private fixClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 236
    const-string/jumbo v8, "AndFixManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "fixClass : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 241
    .local v6, "methods":[Ljava/lang/reflect/Method;
    array-length v9, v6

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v4, v6, v8

    .line 242
    .local v4, "method":Ljava/lang/reflect/Method;
    const-class v10, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    .line 243
    .local v5, "methodReplace":Lcom/alipay/euler/andfix/annotation/MethodReplace;
    if-eqz v5, :cond_0

    .line 245
    invoke-interface {v5}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->clazz()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "clz":Ljava/lang/String;
    invoke-interface {v5}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->method()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "meth":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFixManager;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v3}, Lcom/alipay/euler/andfix/AndFixManager;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 248
    invoke-direct {p0, p2, v0, v3, v4}, Lcom/alipay/euler/andfix/AndFixManager;->replaceMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 241
    .end local v0    # "clz":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 252
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "methodReplace":Lcom/alipay/euler/andfix/annotation/MethodReplace;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 253
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    if-eqz v2, :cond_3

    .line 254
    array-length v8, v2

    :goto_1
    if-ge v7, v8, :cond_3

    aget-object v1, v2, v7

    .line 255
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v9, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alipay/euler/andfix/annotation/MethodReplace;

    .line 256
    .restart local v5    # "methodReplace":Lcom/alipay/euler/andfix/annotation/MethodReplace;
    if-eqz v5, :cond_2

    .line 258
    invoke-interface {v5}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->clazz()Ljava/lang/String;

    move-result-object v0

    .line 259
    .restart local v0    # "clz":Ljava/lang/String;
    invoke-interface {v5}, Lcom/alipay/euler/andfix/annotation/MethodReplace;->method()Ljava/lang/String;

    move-result-object v3

    .line 260
    .restart local v3    # "meth":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFixManager;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v3}, Lcom/alipay/euler/andfix/AndFixManager;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 261
    invoke-direct {p0, p2, v0, v3, v1}, Lcom/alipay/euler/andfix/AndFixManager;->replaceConstructor(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V

    .line 254
    .end local v0    # "clz":Ljava/lang/String;
    .end local v3    # "meth":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 265
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "methodReplace":Lcom/alipay/euler/andfix/annotation/MethodReplace;
    :cond_3
    return-void
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 329
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeClassPublic(Ljava/lang/Class;)V
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 455
    invoke-static {p1}, Lcom/alipay/euler/andfix/AndFix;->makeClassPublic(Ljava/lang/Class;)V

    .line 457
    :cond_0
    return-void
.end method

.method public static declared-synchronized removeOptFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 114
    const-class v3, Lcom/alipay/euler/andfix/AndFixManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/alipay/euler/andfix/AndFixManager;->mDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "apatch_opt"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v0, "optDir":Ljava/io/File;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v1, "optFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    const-string/jumbo v2, "AndFixManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " delete error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit v3

    return-void

    .line 117
    .end local v0    # "optDir":Ljava/io/File;
    .end local v1    # "optFile":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/alipay/euler/andfix/AndFixManager;->mDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "apatch_opt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "optDir":Ljava/io/File;
    goto :goto_0

    .line 114
    .end local v0    # "optDir":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private replaceConstructor(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Constructor;)V
    .locals 7
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "clz"    # Ljava/lang/String;
    .param p3, "cons"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 310
    .local p4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 312
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 315
    .local v1, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 317
    .end local v1    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 318
    sget-object v5, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 319
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 321
    .local v4, "src":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v4, p4}, Lcom/alipay/euler/andfix/AndFix;->addReplaceConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v4    # "src":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    return-void

    .line 323
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v5, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v6, "replaceMethod failed"

    invoke-direct {v5, v6, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private replaceMethod(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "clz"    # Ljava/lang/String;
    .param p3, "meth"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 278
    :try_start_0
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "replaceMathod -> class : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and method : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 281
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 282
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "load and init class : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 285
    .local v1, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 287
    .end local v1    # "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz v0, :cond_1

    .line 288
    sget-object v5, Lcom/alipay/euler/andfix/AndFixManager;->mFixedClass:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 289
    invoke-virtual {v0, p3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 291
    .local v4, "src":Ljava/lang/reflect/Method;
    invoke-static {v4, p4}, Lcom/alipay/euler/andfix/AndFix;->addReplaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v4    # "src":Ljava/lang/reflect/Method;
    :cond_1
    return-void

    .line 293
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "AndFixManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "replaceMethod failed : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v5, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v6, "replaceMethod failed"

    invoke-direct {v5, v6, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public declared-synchronized fix(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    .local p3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v9, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->verifyApk(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 153
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "AndFixManager.fix() verifyApk: failed, return."

    invoke-static {v9, v10}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 158
    :cond_2
    :try_start_2
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "start fix classes"

    invoke-static {v9, v10}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v9, "jar"

    const-string/jumbo v10, "odex"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 161
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    .local v6, "optFile":Ljava/io/File;
    const/4 v8, 0x1

    .line 163
    .local v8, "saveFingerprint":Z
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 169
    iget-object v9, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v9, v6}, Lcom/alipay/euler/andfix/security/SecurityChecker;->verifyOpt(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 170
    const/4 v8, 0x0

    .line 180
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 181
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 180
    invoke-static {v9, v10, v11}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v1

    .line 183
    .local v1, "dexFile":Ldalvik/system/DexFile;
    if-eqz v8, :cond_4

    .line 184
    iget-object v9, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v9, v6}, Lcom/alipay/euler/andfix/security/SecurityChecker;->saveOptSig(Ljava/io/File;)V

    .line 187
    :cond_4
    new-instance v7, Lcom/alipay/euler/andfix/AndFixManager$1;

    invoke-direct {v7, p0, p2, v1}, Lcom/alipay/euler/andfix/AndFixManager$1;-><init>(Lcom/alipay/euler/andfix/AndFixManager;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    .line 206
    .local v7, "patchClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 208
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 209
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 210
    .local v4, "entry":Ljava/lang/String;
    if-eqz p3, :cond_6

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 214
    :cond_6
    const/4 v9, 0x1

    :try_start_3
    invoke-static {v4, v9, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_5

    .line 216
    invoke-direct {p0, v0, p2}, Lcom/alipay/euler/andfix/AndFixManager;->fixClass(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 218
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    new-instance v9, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v10, "init patch class failed"

    invoke-direct {v9, v10, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    .end local v1    # "dexFile":Ldalvik/system/DexFile;
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "optFile":Ljava/io/File;
    .end local v7    # "patchClassLoader":Ljava/lang/ClassLoader;
    .end local v8    # "saveFingerprint":Z
    :catch_1
    move-exception v2

    .line 224
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Field to fix (file="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", classLoader="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "optFile":Ljava/io/File;
    .restart local v8    # "saveFingerprint":Z
    :cond_7
    :try_start_6
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "AndFixManager.fix() verifyOpt: failed, try to delete opt file."

    invoke-static {v9, v10}, Lcom/alipay/euler/andfix/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_3

    .line 174
    const-string/jumbo v9, "AndFixManager"

    const-string/jumbo v10, "AndFixManager.fix() verifyOpt: failed to delete opt file. return."

    invoke-static {v9, v10}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method public makeClassesPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 429
    .local p1, "modifiedClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 451
    :cond_0
    return-void

    .line 432
    :cond_1
    const-string/jumbo v3, "AndFixManager"

    const-string/jumbo v4, "makeClassesPublic start"

    invoke-static {v3, v4}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 438
    :try_start_0
    const-string/jumbo v4, "AndFixManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "makeClassesPublic : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 440
    .local v1, "clazz":Ljava/lang/Class;
    if-eqz v1, :cond_3

    .line 441
    invoke-direct {p0, v1}, Lcom/alipay/euler/andfix/AndFixManager;->makeClassPublic(Ljava/lang/Class;)V

    .line 442
    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 447
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "AndFixManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "makeClassesPublic failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v3, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "makeClassesPublic failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 444
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "clazz":Ljava/lang/Class;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " can not be found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public makeMethodsPublic(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 15
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 460
    .local p1, "usedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 514
    :cond_0
    return-void

    .line 463
    :cond_1
    const-string/jumbo v11, "AndFixManager"

    const-string/jumbo v12, "makeMethodsPublic start"

    invoke-static {v11, v12}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 465
    .local v8, "methodRecord":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 468
    const-string/jumbo v12, "\\:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "arr":[Ljava/lang/String;
    array-length v12, v1

    const/4 v13, 0x4

    if-lt v12, v13, :cond_2

    .line 472
    const-string/jumbo v12, " "

    const-string/jumbo v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 473
    .local v10, "mr":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v1, v12

    const-string/jumbo v13, "<init>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 475
    const/4 v12, 0x0

    :try_start_0
    aget-object v12, v1, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 476
    .local v2, "clazz":Ljava/lang/Class;
    invoke-direct {p0, v2}, Lcom/alipay/euler/andfix/AndFixManager;->makeClassPublic(Ljava/lang/Class;)V

    .line 477
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 478
    .local v4, "constructors":[Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v12, v4

    if-ge v7, v12, :cond_2

    .line 479
    aget-object v12, v4, v7

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_3

    .line 480
    aget-object v12, v4, v7

    invoke-static {v12}, Lcom/alipay/euler/andfix/AndFix;->makeConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "constructors":[Ljava/lang/reflect/Constructor;
    .end local v7    # "i":I
    :catch_0
    move-exception v6

    .line 484
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "AndFixManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "makeMethodsPublic.construtor failed "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v11, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "makeMethodsPublic.construtor failed "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 489
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v12, 0x0

    :try_start_1
    aget-object v3, v1, v12

    .line 490
    .local v3, "clazzName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 491
    .restart local v2    # "clazz":Ljava/lang/Class;
    invoke-direct {p0, v2}, Lcom/alipay/euler/andfix/AndFixManager;->makeClassPublic(Ljava/lang/Class;)V

    .line 492
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 493
    .local v9, "methods":[Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v12, v9

    if-ge v7, v12, :cond_2

    .line 494
    const/4 v12, 0x1

    aget-object v12, v1, v12

    aget-object v13, v9, v7

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 497
    aget-object v12, v9, v7

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_5

    .line 498
    aget-object v12, v9, v7

    invoke-direct {p0, v12, v3}, Lcom/alipay/euler/andfix/AndFixManager;->createMethodDes(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, "des":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 500
    const-string/jumbo v12, "AndFixManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "make "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " public"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    aget-object v12, v9, v7

    invoke-static {v12}, Lcom/alipay/euler/andfix/AndFix;->makeMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 508
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "clazzName":Ljava/lang/String;
    .end local v5    # "des":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "methods":[Ljava/lang/reflect/Method;
    :catch_1
    move-exception v6

    .line 509
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "AndFixManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "makeMethodsPublic.method failed : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v11, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v12, "makeMethodsPublic.method failed"

    invoke-direct {v11, v12, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 493
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v3    # "clazzName":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v9    # "methods":[Ljava/lang/reflect/Method;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public declared-synchronized preLoadAddClasses(Ljava/io/File;Ljava/lang/ClassLoader;Ljava/util/List;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    .local p3, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 405
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_1
    :try_start_1
    const-string/jumbo v8, "AndFixManager"

    const-string/jumbo v9, "start preLoadAddClasses"

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v8, "jar"

    const-string/jumbo v9, "odex"

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 351
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/alipay/euler/andfix/AndFixManager;->mOptDir:Ljava/io/File;

    invoke-direct {v5, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v5, "optFile":Ljava/io/File;
    const/4 v7, 0x1

    .line 354
    .local v7, "saveFingerprint":Z
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 360
    iget-object v8, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v8, v5}, Lcom/alipay/euler/andfix/security/SecurityChecker;->verifyOpt(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 361
    const/4 v7, 0x0

    .line 371
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 372
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 371
    invoke-static {v8, v9, v10}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    .line 374
    .local v0, "dexFile":Ldalvik/system/DexFile;
    if-eqz v7, :cond_3

    .line 375
    iget-object v8, p0, Lcom/alipay/euler/andfix/AndFixManager;->mSecurityChecker:Lcom/alipay/euler/andfix/security/SecurityChecker;

    invoke-virtual {v8, v5}, Lcom/alipay/euler/andfix/security/SecurityChecker;->saveOptSig(Ljava/io/File;)V

    .line 378
    :cond_3
    new-instance v6, Lcom/alipay/euler/andfix/AndFixManager$2;

    invoke-direct {v6, p0, p2, v0}, Lcom/alipay/euler/andfix/AndFixManager$2;-><init>(Lcom/alipay/euler/andfix/AndFixManager;Ljava/lang/ClassLoader;Ldalvik/system/DexFile;)V

    .line 389
    .local v6, "patchClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 390
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 391
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    .local v3, "entry":Ljava/lang/String;
    if-eqz p3, :cond_5

    invoke-interface {p3, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 396
    :cond_5
    const/4 v8, 0x1

    :try_start_2
    invoke-static {v3, v8, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v9, "preLoadAddClasses : init patch class failed"

    invoke-direct {v8, v9, v1}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 402
    .end local v0    # "dexFile":Ldalvik/system/DexFile;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "optFile":Ljava/io/File;
    .end local v6    # "patchClassLoader":Ljava/lang/ClassLoader;
    .end local v7    # "saveFingerprint":Z
    :catch_1
    move-exception v1

    .line 403
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Field to preLoadAddClasses (file="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", classLoader="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 363
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "optFile":Ljava/io/File;
    .restart local v7    # "saveFingerprint":Z
    :cond_6
    :try_start_5
    const-string/jumbo v8, "AndFixManager"

    const-string/jumbo v9, "AndFixManager.fix() verifyOpt: failed, try to delete opt file."

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 365
    const-string/jumbo v8, "AndFixManager"

    const-string/jumbo v9, "AndFixManager.fix() verifyOpt: failed to delete opt file. return."

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public prepareClass(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    .local p1, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 426
    :cond_0
    return-void

    .line 412
    :cond_1
    const-string/jumbo v2, "AndFixManager"

    const-string/jumbo v3, "prepareClass start"

    invoke-static {v2, v3}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "clazz":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 418
    :try_start_0
    const-string/jumbo v3, "AndFixManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "prepareClass : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v3, 0x1

    invoke-static {v0, v3, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "AndFixManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepareClass exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v2, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "prepareClass exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
