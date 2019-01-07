.class public Lcom/j256/ormlite/android/apptools/OpenHelperManager;
.super Ljava/lang/Object;
.source "OpenHelperManager.java"


# static fields
.field private static a:Lcom/j256/ormlite/logger/Logger;

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

.field private static d:Z

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    const-class v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->a(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    .line 41
    sput-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    .line 42
    sput-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 43
    sput-boolean v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->d:Z

    .line 44
    sput v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const-class v9, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 106
    if-nez p0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 109
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 110
    .local v8, "appContext":Landroid/content/Context;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1147
    if-nez v0, :cond_1

    .line 1148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Helper class was trying to be reset to null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_1
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 1150
    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    .line 112
    .end local v8    # "appContext":Landroid/content/Context;
    :cond_2
    sget-object v10, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    .line 1158
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-nez v0, :cond_6

    .line 1159
    sget-boolean v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->d:Z

    if-eqz v0, :cond_3

    .line 1161
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "helper was already closed and is being re-opened"

    .line 2194
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->INFO:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v4, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1163
    :cond_3
    if-nez p0, :cond_5

    .line 1164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    .restart local v8    # "appContext":Landroid/content/Context;
    :cond_4
    sget-object v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    if-eq v1, v0, :cond_2

    .line 1152
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Helper class was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but is trying to be reset to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1166
    .end local v8    # "appContext":Landroid/content/Context;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1167
    invoke-static {v0, v10}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 1168
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "zero instances, created helper {}"

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1185
    invoke-static {}, Lcom/j256/ormlite/dao/BaseDaoImpl;->e()V

    .line 1192
    invoke-static {}, Lcom/j256/ormlite/dao/DaoManager;->a()V

    .line 1193
    const/4 v0, 0x0

    sput v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    .line 1196
    :cond_6
    sget v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    .line 1197
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "returning helper {}, instance count = {} "

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1199
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit v9

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;)",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "openHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 211
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not find public constructor that has a single (Context) argument for helper class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not construct instance of helper class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static declared-synchronized a()V
    .locals 9

    .prologue
    .line 127
    const-class v8, Lcom/j256/ormlite/android/apptools/OpenHelperManager;

    monitor-enter v8

    :try_start_0
    sget v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    .line 128
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "releasing helper {}, instance count = {}"

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    sget v3, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    sget v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    if-gtz v0, :cond_1

    .line 130
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v1, "zero instances, closing helper {}"

    sget-object v2, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-virtual {v0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->c:Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->d:Z

    .line 136
    :cond_0
    sget v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    if-gez v0, :cond_1

    .line 137
    sget-object v0, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->a:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v3, "too many calls to release helper, instance count = {}"

    sget v1, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2341
    sget-object v1, Lcom/j256/ormlite/logger/Log$Level;->ERROR:Lcom/j256/ormlite/logger/Log$Level;

    const/4 v2, 0x0

    sget-object v5, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    sget-object v6, Lcom/j256/ormlite/logger/Logger;->a:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/j256/ormlite/logger/Logger;->a(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    monitor-exit v8

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 230
    .local v13, "resources":Landroid/content/res/Resources;
    const-string/jumbo v17, "open_helper_classname"

    const-string/jumbo v18, "string"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 231
    .local v12, "resourceId":I
    if-eqz v12, :cond_0

    .line 232
    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 266
    .end local v6    # "className":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 238
    .restart local v6    # "className":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 239
    .local v9, "e":Ljava/lang/Exception;
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Could not create helper instance for class "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 244
    .end local v6    # "className":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v8, p1

    .local v8, "componentClassWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v8, :cond_3

    .line 246
    invoke-virtual {v8}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 247
    .local v14, "superType":Ljava/lang/reflect/Type;
    if-eqz v14, :cond_2

    instance-of v0, v14, Ljava/lang/reflect/ParameterizedType;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 251
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .end local v14    # "superType":Ljava/lang/reflect/Type;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v16

    .line 253
    .local v16, "types":[Ljava/lang/reflect/Type;
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 256
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    array-length v11, v0

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_2

    aget-object v15, v3, v10

    .line 258
    .local v15, "type":Ljava/lang/reflect/Type;
    instance-of v0, v15, Ljava/lang/Class;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v7, v15

    .line 261
    check-cast v7, Ljava/lang/Class;

    .line 262
    .local v7, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v17, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 266
    move-object v5, v7

    .local v5, "castOpenHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    move-object v4, v7

    goto :goto_0

    .line 256
    .end local v5    # "castOpenHelperClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;>;"
    .end local v7    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 244
    .end local v3    # "arr$":[Ljava/lang/reflect/Type;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v15    # "type":Ljava/lang/reflect/Type;
    .end local v16    # "types":[Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_1

    .line 270
    :cond_3
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Could not find OpenHelperClass because none of the generic parameters of class "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
.end method
