.class public final Lhtv;
.super Ljava/lang/Object;
.source "FinalizeFake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhtv$c;,
        Lhtv$a;,
        Lhtv$b;
    }
.end annotation


# static fields
.field static a:Ljava/lang/reflect/Method;

.field static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static c:Ljava/lang/ThreadGroup;

.field static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static e:Ljava/lang/reflect/Method;

.field static f:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static h:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static i:[Ljava/lang/Object;

.field static j:[Ljava/lang/reflect/Method;

.field public static k:[Ljava/lang/reflect/Method;

.field static m:[Ljava/lang/StackTraceElement;


# instance fields
.field public volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 51
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lhtv;->h:[Ljava/lang/Class;

    .line 52
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lhtv;->i:[Ljava/lang/Object;

    .line 53
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lhtv;->j:[Ljava/lang/reflect/Method;

    .line 54
    new-array v0, v1, [Ljava/lang/reflect/Method;

    sput-object v0, Lhtv;->k:[Ljava/lang/reflect/Method;

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    sput-object v0, Lhtv;->m:[Ljava/lang/StackTraceElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lhtv;->l:Z

    .line 59
    :try_start_0
    invoke-static {}, Lhtv;->b()V

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhtv;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FinalizeFake initialize"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x5

    const/4 v9, 0x0

    const/4 v14, 0x1

    .line 169
    const-class v8, Ljava/lang/Object;

    const-string/jumbo v10, "finalize"

    new-array v11, v9, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 170
    sput-object v8, Lhtv;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    const-string/jumbo v8, "java.lang.ThreadGroup"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lhtv;->b:Ljava/lang/Class;

    .line 175
    :try_start_0
    sget-object v8, Lhtv;->b:Ljava/lang/Class;

    const-string/jumbo v10, "systemThreadGroup"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 176
    .local v7, "systemThreadGroupField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 177
    sget-object v8, Lhtv;->b:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ThreadGroup;

    sput-object v8, Lhtv;->c:Ljava/lang/ThreadGroup;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    const-string/jumbo v8, "java.lang.ref.FinalizerReference"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 184
    sput-object v8, Lhtv;->d:Ljava/lang/Class;

    const-string/jumbo v10, "queue"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 185
    .local v6, "queueField":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 186
    sget-object v8, Lhtv;->d:Ljava/lang/Class;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/ReferenceQueue;

    sput-object v8, Lhtv;->f:Ljava/lang/ref/ReferenceQueue;

    .line 187
    sget-object v8, Lhtv;->d:Ljava/lang/Class;

    const-string/jumbo v10, "remove"

    new-array v11, v14, [Ljava/lang/Class;

    sget-object v12, Lhtv;->d:Ljava/lang/Class;

    aput-object v12, v11, v9

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lhtv;->e:Ljava/lang/reflect/Method;

    .line 190
    new-array v2, v15, [Ljava/lang/String;

    const-string/jumbo v8, "java.lang.Daemons$ReferenceQueueDaemon"

    aput-object v8, v2, v9

    const-string/jumbo v8, "java.lang.Daemons$FinalizerDaemon"

    aput-object v8, v2, v14

    const/4 v8, 0x2

    const-string/jumbo v10, "java.lang.Daemons$FinalizerWatchdogDaemon"

    aput-object v10, v2, v8

    const/4 v8, 0x3

    const-string/jumbo v10, "java.lang.Daemons$HeapTrimmerDaemon"

    aput-object v10, v2, v8

    const/4 v8, 0x4

    const-string/jumbo v10, "java.lang.Daemons$GCDaemon"

    aput-object v10, v2, v8

    .line 194
    .local v2, "clazzNames":[Ljava/lang/String;
    const-string/jumbo v8, "java.lang.Daemons"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 195
    sput-object v8, Lhtv;->g:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 196
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v0

    move v8, v9

    :goto_1
    if-ge v8, v10, :cond_2

    aget-object v1, v0, v8

    .line 197
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v15, :cond_0

    .line 198
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v2, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 199
    sget-object v11, Lhtv;->h:[Ljava/lang/Class;

    aput-object v1, v11, v3

    .line 200
    const-string/jumbo v11, "INSTANCE"

    invoke-virtual {v1, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 201
    .local v5, "instanceField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 203
    .local v4, "instance":Ljava/lang/Object;
    sget-object v11, Lhtv;->i:[Ljava/lang/Object;

    aput-object v4, v11, v3

    .line 204
    sget-object v11, Lhtv;->j:[Ljava/lang/reflect/Method;

    const-string/jumbo v12, "start"

    new-array v13, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v11, v3

    .line 205
    sget-object v11, Lhtv;->k:[Ljava/lang/reflect/Method;

    const-string/jumbo v12, "stop"

    new-array v13, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    aput-object v12, v11, v3

    .line 196
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "instanceField":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "clazzNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v6    # "queueField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v8

    sget-object v8, Lhtv;->b:Ljava/lang/Class;

    const-string/jumbo v10, "mSystem"

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 180
    invoke-virtual {v7, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    sget-object v8, Lhtv;->b:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ThreadGroup;

    sput-object v8, Lhtv;->c:Ljava/lang/ThreadGroup;

    goto/16 :goto_0

    .line 197
    .restart local v0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "clazzNames":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v6    # "queueField":Ljava/lang/reflect/Field;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 210
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    iget-boolean v1, p0, Lhtv;->l:Z

    if-nez v1, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    :try_start_0
    sget-object v1, Lhtv;->k:[Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lhtv;->i:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 85
    :cond_2
    :try_start_1
    sget-object v1, Lhtv;->k:[Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lhtv;->i:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 94
    :cond_3
    :try_start_2
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v1

    invoke-virtual {v1}, Lhtv$b;->a()V

    .line 95
    invoke-static {}, Lhtv$c;->e()Lhtv$c;

    move-result-object v1

    invoke-virtual {v1}, Lhtv$c;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 1105
    iget-boolean v1, p0, Lhtv;->l:Z

    if-eqz v1, :cond_0

    .line 1109
    :try_start_3
    invoke-static {}, Lhtv$b;->e()Lhtv$b;

    move-result-object v1

    invoke-virtual {v1}, Lhtv$b;->d()V

    .line 1110
    invoke-static {}, Lhtv$c;->e()Lhtv$c;

    move-result-object v1

    invoke-virtual {v1}, Lhtv$c;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1116
    :goto_1
    :try_start_4
    sget-object v1, Lhtv;->j:[Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    sget-object v2, Lhtv;->i:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1127
    :cond_4
    :try_start_5
    sget-object v1, Lhtv;->j:[Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lhtv;->i:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1128
    :catch_1
    move-exception v1

    .line 1130
    :try_start_6
    instance-of v2, v1, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "already running"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    :cond_5
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v1

    goto :goto_0

    .line 75
    :catch_3
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "not running"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    :cond_6
    throw v0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "not running"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    :cond_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 1119
    :try_start_8
    instance-of v2, v1, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "already running"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1121
    :cond_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method
