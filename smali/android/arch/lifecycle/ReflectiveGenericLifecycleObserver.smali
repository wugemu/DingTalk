.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Lc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;,
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "wrapped"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    .locals 14
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    sget-object v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    .line 87
    .local v0, "existing":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 91
    .end local v0    # "existing":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    .local v1, "existing":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1110
    .end local v1    # "existing":Ljava/lang/Object;
    .restart local v0    # "existing":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 1111
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1112
    if-eqz v2, :cond_1

    .line 1113
    invoke-static {v2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v2

    .line 1114
    if-eqz v2, :cond_1

    .line 1115
    iget-object v2, v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->b:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    .line 1121
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v10

    .line 1122
    array-length v11, v10

    move v7, v5

    :goto_1
    if-ge v7, v11, :cond_3

    aget-object v2, v10, v7

    .line 1123
    invoke-static {v2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v2

    iget-object v2, v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-static {v8, v3, v2, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    goto :goto_2

    .line 1122
    :cond_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_1

    .line 1128
    :cond_3
    array-length v10, v9

    move v7, v5

    :goto_3
    if-ge v7, v10, :cond_a

    aget-object v11, v9, v7

    .line 1129
    const-class v2, Landroid/arch/lifecycle/OnLifecycleEvent;

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/OnLifecycleEvent;

    .line 1130
    if-eqz v2, :cond_9

    .line 1133
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 1135
    array-length v3, v12

    if-lez v3, :cond_b

    .line 1137
    aget-object v3, v12, v5

    const-class v13, Ld;

    invoke-virtual {v3, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move v3, v4

    .line 1142
    :goto_4
    invoke-interface {v2}, Landroid/arch/lifecycle/OnLifecycleEvent;->value()Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v2

    .line 1144
    array-length v13, v12

    if-le v13, v4, :cond_7

    .line 1146
    aget-object v3, v12, v4

    const-class v13, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v3, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "invalid parameter type. second arg must be an event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1150
    :cond_5
    sget-object v3, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    if-eq v2, v3, :cond_6

    .line 1151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Second arg is supported only for ON_ANY value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move v3, v6

    .line 1155
    :cond_7
    array-length v12, v12

    if-le v12, v6, :cond_8

    .line 1156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "cannot have more than 2 params"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1158
    :cond_8
    new-instance v12, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-direct {v12, v3, v11}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;-><init>(ILjava/lang/reflect/Method;)V

    .line 1159
    invoke-static {v8, v12, v2, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 1128
    :cond_9
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_3

    .line 1161
    :cond_a
    new-instance v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    .end local v0    # "existing":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    invoke-direct {v0, v8}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;-><init>(Ljava/util/Map;)V

    .line 1162
    sget-object v2, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .restart local v0    # "existing":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    move-object v1, v0

    .line 91
    .restart local v1    # "existing":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v1    # "existing":Ljava/lang/Object;
    :cond_b
    move v3, v5

    goto :goto_4
.end method

.method private a(Ljava/util/List;Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 6
    .param p2, "source"    # Ld;
    .param p3, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            ">;",
            "Ld;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 50
    .local p1, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;>;"
    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 52
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    .line 1067
    .local v1, "reference":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;
    :try_start_0
    iget v2, v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->a:I

    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1069
    :pswitch_0
    iget-object v2, v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1078
    :catch_0
    move-exception v2

    .line 1079
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to call observer method"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1072
    :pswitch_1
    :try_start_1
    iget-object v2, v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1080
    :catch_1
    move-exception v2

    .line 1081
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1075
    :pswitch_2
    :try_start_2
    iget-object v2, v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    iget-object v3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 56
    .end local v0    # "i":I
    .end local v1    # "reference":Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;
    :cond_0
    return-void

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .locals 5
    .param p1, "newHandler"    # Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;
    .param p2, "newEvent"    # Landroid/arch/lifecycle/Lifecycle$Event;
    .param p3, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            ">;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            "Landroid/arch/lifecycle/Lifecycle$Event;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "handlers":Ljava/util/Map;, "Ljava/util/Map<Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/Lifecycle$Event;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle$Event;

    .line 97
    .local v0, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    if-eqz v0, :cond_0

    if-eq p2, v0, :cond_0

    .line 98
    iget-object v1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    .line 99
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    if-nez v0, :cond_1

    .line 105
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Ld;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    .line 1060
    iget-object v0, v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/util/List;Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 1061
    iget-object v0, v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->a:Ljava/util/Map;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_ANY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a(Ljava/util/List;Ld;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 46
    return-void
.end method
