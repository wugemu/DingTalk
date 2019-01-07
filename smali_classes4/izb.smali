.class public final Lizb;
.super Ljava/lang/Object;
.source "MarshalMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lizb$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lizb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lizb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lizb$a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lizb$a;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 17
    sget-object v9, Lizb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lizb$a;

    .line 18
    .local v6, "meta":Lizb$a;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 48
    .end local v6    # "meta":Lizb$a;
    .local v7, "meta":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 22
    .end local v7    # "meta":Ljava/lang/Object;
    .restart local v6    # "meta":Lizb$a;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 23
    .local v4, "fields":[Ljava/lang/reflect/Field;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v2, "fieldArray":Ljava/util/List;, "Ljava/util/List<Liyz;>;"
    array-length v12, v4

    move v11, v10

    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v1, v4, v11

    .line 1013
    .local v1, "field":Ljava/lang/reflect/Field;
    const-class v9, Lcom/laiwang/idl/FieldId;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1014
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 25
    :goto_2
    if-eqz v9, :cond_1

    .line 28
    new-instance v3, Liyz;

    invoke-direct {v3}, Liyz;-><init>()V

    .line 29
    .local v3, "fieldInfo":Liyz;
    iput-object v1, v3, Liyz;->a:Ljava/lang/reflect/Field;

    .line 30
    const-class v9, Lcom/laiwang/idl/FieldId;

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/laiwang/idl/FieldId;

    invoke-interface {v9}, Lcom/laiwang/idl/FieldId;->value()I

    move-result v9

    iput v9, v3, Liyz;->b:I

    .line 31
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    iput-object v9, v3, Liyz;->c:Ljava/lang/Class;

    .line 32
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    iput-object v9, v3, Liyz;->d:Ljava/lang/reflect/Type;

    .line 34
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .end local v3    # "fieldInfo":Liyz;
    :cond_1
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_1

    .line 1016
    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    .line 1017
    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1018
    :cond_3
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_2

    .line 1020
    :cond_4
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_2

    .line 37
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_5
    const/4 v0, 0x0

    .line 38
    .local v0, "canAccessDecodeMethod":Z
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 39
    .local v8, "methods":[Ljava/lang/reflect/Method;
    array-length v11, v8

    move v9, v10

    :goto_3
    if-ge v9, v11, :cond_6

    aget-object v5, v8, v9

    .line 40
    .local v5, "m":Ljava/lang/reflect/Method;
    const-string/jumbo v12, "decode"

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 41
    const/4 v0, 0x1

    .line 46
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_6
    new-instance v6, Lizb$a;

    .end local v6    # "meta":Lizb$a;
    invoke-direct {v6, p0, v2, v0, v10}, Lizb$a;-><init>(Ljava/lang/Class;Ljava/util/List;ZB)V

    .line 47
    .restart local v6    # "meta":Lizb$a;
    sget-object v9, Lizb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, p0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 48
    .restart local v7    # "meta":Ljava/lang/Object;
    goto/16 :goto_0

    .line 39
    .end local v7    # "meta":Ljava/lang/Object;
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method
