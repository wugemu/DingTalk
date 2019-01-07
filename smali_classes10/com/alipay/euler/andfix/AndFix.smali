.class public Lcom/alipay/euler/andfix/AndFix;
.super Ljava/lang/Object;
.source "AndFix.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndFix"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addReplaceConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "src":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "dest":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/euler/andfix/AndFix;->replaceConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V

    .line 89
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->makeConstructorPublic(Ljava/lang/reflect/Constructor;)V

    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V

    .line 91
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/alipay/euler/andfix/exception/AndFixException;

    const-string/jumbo v2, "addReplaceConstructor failed"

    invoke-direct {v1, v2, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static addReplaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 4
    .param p0, "src"    # Ljava/lang/reflect/Method;
    .param p1, "dest"    # Ljava/lang/reflect/Method;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    :try_start_0
    const-string/jumbo v1, "AndFix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addReplaceMethod  src : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p0, p1}, Lcom/alipay/euler/andfix/AndFix;->replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 77
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->makeMethodPublic(Ljava/lang/reflect/Method;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "AndFix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addReplaceMethod failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addReplaceMethod failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAOCAPILevel(ILjava/lang/String;)I
    .locals 4
    .param p0, "apilevel"    # I
    .param p1, "vmVersion"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x15

    .line 258
    const/16 v1, 0x16

    if-le p0, v1, :cond_1

    .line 277
    .end local p0    # "apilevel":I
    :cond_0
    :goto_0
    return p0

    .line 262
    .restart local p0    # "apilevel":I
    :cond_1
    if-le p0, v0, :cond_0

    .line 264
    const-string/jumbo v1, "AndFix"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "vmVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_2

    const-string/jumbo v1, "2.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v1, "v1.2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    move p0, v0

    .line 274
    goto :goto_0
.end method

.method public static initFields(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 249
    .local v1, "srcFields":[Ljava/lang/reflect/Field;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 250
    .local v0, "srcField":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lcom/alipay/euler/andfix/AndFix;->setFieldFlag(Ljava/lang/reflect/Field;)V

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "srcField":Ljava/lang/reflect/Field;
    :cond_0
    return-void
.end method

.method public static initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 235
    :goto_0
    return-object v1

    .line 231
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 232
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 231
    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 234
    .local v1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/alipay/euler/andfix/AndFix;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v1    # "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initTargetClass failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static makeClassPublic(Ljava/lang/Class;)V
    .locals 9
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v8, 0x0

    .line 98
    if-nez p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v5

    .line 102
    .local v5, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    sget-object v6, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v5, v6, :cond_2

    sget-object v6, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v5, v6, :cond_6

    .line 103
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-eq v6, v7, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x19

    if-ne v6, v7, :cond_0

    .line 105
    :cond_3
    const/4 v1, 0x0

    .line 107
    .local v1, "done":Z
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 108
    .local v4, "methods":[Ljava/lang/reflect/Method;
    if-eqz v4, :cond_4

    array-length v6, v4

    if-lez v6, :cond_4

    aget-object v6, v4, v8

    if-eqz v6, :cond_4

    .line 109
    aget-object v6, v4, v8

    invoke-static {v6}, Lcom/alipay/euler/andfix/AndFix;->setClassPublicFromMethod(Ljava/lang/Object;)V

    .line 110
    const/4 v1, 0x1

    .line 112
    :cond_4
    if-nez v1, :cond_5

    .line 113
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 114
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    if-eqz v0, :cond_5

    array-length v6, v0

    if-lez v6, :cond_5

    aget-object v6, v0, v8

    if-eqz v6, :cond_5

    .line 115
    aget-object v6, v0, v8

    invoke-static {v6}, Lcom/alipay/euler/andfix/AndFix;->setClassPublicFromMethod(Ljava/lang/Object;)V

    .line 116
    const/4 v1, 0x1

    .line 119
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 121
    .local v3, "fields":[Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    aget-object v6, v3, v8

    if-eqz v6, :cond_0

    .line 122
    aget-object v6, v3, v8

    invoke-static {v6}, Lcom/alipay/euler/andfix/AndFix;->setClassPublicFromField(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    .end local v1    # "done":Z
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "methods":[Ljava/lang/reflect/Method;
    :cond_6
    :try_start_0
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setClassPublic(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "AndFix"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "makeClassPublic failed : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v6, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "makeClassPublic failed : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static makeConstructorPublic(Ljava/lang/reflect/Constructor;)V
    .locals 11
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 137
    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v7

    .line 141
    .local v7, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v7, v8, :cond_4

    .line 142
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-gt v8, v9, :cond_3

    .line 144
    :try_start_0
    const-string/jumbo v8, "java.lang.reflect.AbstractMethod"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "abstractMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "artMethod"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 146
    .local v4, "artMethodField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 148
    .local v5, "artMethodObject":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 149
    .local v3, "artMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "accessFlags"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 150
    .local v2, "accessFlagsField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 152
    .local v1, "accessFlags":I
    and-int/lit8 v8, v1, 0x1

    if-nez v8, :cond_0

    .line 153
    or-int/lit8 v1, v1, 0x1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0    # "abstractMethodClass":Ljava/lang/Class;
    .end local v1    # "accessFlags":I
    .end local v2    # "accessFlagsField":Ljava/lang/reflect/Field;
    .end local v3    # "artMethodClass":Ljava/lang/Class;
    .end local v4    # "artMethodField":Ljava/lang/reflect/Field;
    .end local v5    # "artMethodObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 157
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AndFix"

    const-string/jumbo v9, "makeConstructorPublic failed"

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeConstructorPublic failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 162
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 163
    :catch_1
    move-exception v6

    .line 164
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AndFix"

    const-string/jumbo v9, "makeConstructorPublic failed"

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeConstructorPublic failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 170
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 171
    :catch_2
    move-exception v6

    .line 172
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AndFix"

    const-string/jumbo v9, "makeConstructorPublic failed"

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeConstructorPublic failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static makeMethodPublic(Ljava/lang/reflect/Method;)V
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 179
    if-nez p0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string/jumbo v8, "AndFix"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeMethodPublic method : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v7

    .line 184
    .local v7, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v7, v8, :cond_4

    .line 185
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-gt v8, v9, :cond_3

    .line 187
    :try_start_0
    const-string/jumbo v8, "java.lang.reflect.AbstractMethod"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 188
    .local v0, "abstractMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "artMethod"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 189
    .local v4, "artMethodField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 191
    .local v5, "artMethodObject":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 192
    .local v3, "artMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "accessFlags"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 193
    .local v2, "accessFlagsField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 194
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 195
    .local v1, "accessFlags":I
    and-int/lit8 v8, v1, 0x1

    if-nez v8, :cond_0

    .line 196
    or-int/lit8 v1, v1, 0x1

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0    # "abstractMethodClass":Ljava/lang/Class;
    .end local v1    # "accessFlags":I
    .end local v2    # "accessFlagsField":Ljava/lang/reflect/Field;
    .end local v3    # "artMethodClass":Ljava/lang/Class;
    .end local v4    # "artMethodField":Ljava/lang/reflect/Field;
    .end local v5    # "artMethodObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 200
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeMethodPublic failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 204
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 205
    :catch_1
    move-exception v6

    .line 206
    .restart local v6    # "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeMethodPublic failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 211
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/alipay/euler/andfix/AndFix;->setMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 212
    :catch_2
    move-exception v6

    .line 213
    .restart local v6    # "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "makeMethodPublic failed : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static native replaceConstructor(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
.end method

.method private static native replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end method

.method public static rollback()V
    .locals 0

    .prologue
    .line 319
    invoke-static {}, Lcom/alipay/euler/andfix/AndFix;->rollbackMethods()V

    .line 320
    return-void
.end method

.method private static native rollbackMethods()V
.end method

.method private static native setClassPublic(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method private static native setClassPublicFromField(Ljava/lang/Object;)V
.end method

.method private static native setClassPublicFromMethod(Ljava/lang/Object;)V
.end method

.method private static native setConstructorPublic(Ljava/lang/reflect/Constructor;)V
.end method

.method private static native setFieldFlag(Ljava/lang/reflect/Field;)V
.end method

.method private static native setMethodPublic(Ljava/lang/reflect/Method;)V
.end method

.method public static setup()Z
    .locals 8

    .prologue
    .line 287
    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v2

    .line 288
    .local v2, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    const-string/jumbo v5, "mytest"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getAndFixVM: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/euler/andfix/Compat;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "andfix"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->loadLibrary(Ljava/lang/String;)V

    .line 292
    const-string/jumbo v5, "java.vm.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "vmVersion":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 296
    .local v0, "apilevel":I
    sget-object v5, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v2, v5, :cond_0

    .line 298
    const/4 v4, 0x0

    .line 311
    .local v4, "vm_type":I
    :goto_0
    invoke-static {v4, v0}, Lcom/alipay/euler/andfix/AndFix;->setup(II)Z

    move-result v5

    .line 315
    .end local v0    # "apilevel":I
    .end local v3    # "vmVersion":Ljava/lang/String;
    .end local v4    # "vm_type":I
    :goto_1
    return v5

    .line 299
    .restart local v0    # "apilevel":I
    .restart local v3    # "vmVersion":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v2, v5, :cond_1

    .line 301
    const/4 v4, 0x3

    .line 302
    .restart local v4    # "vm_type":I
    invoke-static {v0, v3}, Lcom/alipay/euler/andfix/AndFix;->getAOCAPILevel(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 304
    .end local v4    # "vm_type":I
    :cond_1
    sget-object v5, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_2

    .line 306
    const/4 v4, 0x2

    .restart local v4    # "vm_type":I
    goto :goto_0

    .line 309
    .end local v4    # "vm_type":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "vm_type":I
    goto :goto_0

    .line 312
    .end local v0    # "apilevel":I
    .end local v3    # "vmVersion":Ljava/lang/String;
    .end local v4    # "vm_type":I
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "AndFix"

    const-string/jumbo v6, "loadLibrary & setup failed."

    invoke-static {v5, v6, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static native setup(II)Z
.end method
