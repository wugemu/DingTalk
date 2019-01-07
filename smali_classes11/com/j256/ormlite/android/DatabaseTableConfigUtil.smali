.class public Lcom/j256/ormlite/android/DatabaseTableConfigUtil;
.super Ljava/lang/Object;
.source "DatabaseTableConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Field;

.field private static e:Ljava/lang/reflect/Field;

.field private static f:I

.field private static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const-string/jumbo v0, "ormlite.annotation.hack.disable"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a()[I

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    return-void
.end method

.method private static a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .locals 7
    .param p0, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 253
    sget-object v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    if-nez v2, :cond_0

    .line 254
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 261
    :cond_0
    const-class v2, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/field/DatabaseField;

    .line 263
    .local v1, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    const/4 v0, 0x0

    .line 265
    .local v0, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v1, :cond_1

    .line 2291
    :try_start_0
    invoke-static {v1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .line 2292
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_2

    move-object v0, v3

    .line 272
    :cond_1
    :goto_1
    if-nez v0, :cond_6

    .line 278
    invoke-static {p0, p1, p2}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v0

    goto :goto_0

    .line 2296
    :cond_2
    :try_start_1
    sget-object v4, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2297
    if-nez v2, :cond_3

    move-object v0, v3

    .line 2298
    goto :goto_1

    .line 2300
    :cond_3
    new-instance v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;-><init>(Ljava/lang/String;)V

    .line 2301
    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 2302
    const/4 v3, 0x0

    move v5, v3

    :goto_2
    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    array-length v3, v3

    if-ge v5, v3, :cond_5

    .line 2303
    sget-object v3, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->e:Ljava/lang/reflect/Field;

    aget-object v6, v2, v5

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2304
    if-eqz v3, :cond_4

    .line 2305
    sget-object v6, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->g:[I

    aget v6, v6, v5

    .line 2316
    packed-switch v6, :pswitch_data_0

    .line 2410
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Could not find support for DatabaseField number "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 2318
    :pswitch_0
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3141
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->d:Ljava/lang/String;

    .line 2302
    :cond_4
    :goto_3
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    .line 2321
    :pswitch_1
    check-cast v3, Lcom/j256/ormlite/field/DataType;

    .line 3152
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->e:Lcom/j256/ormlite/field/DataType;

    goto :goto_3

    .line 2324
    :pswitch_2
    check-cast v3, Ljava/lang/String;

    .line 2325
    if-eqz v3, :cond_4

    const-string/jumbo v6, "__ormlite__ no default value string was specified"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3181
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->g:Ljava/lang/String;

    goto :goto_3

    .line 2330
    :pswitch_3
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3192
    iput v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->h:I

    goto :goto_3

    .line 2333
    :pswitch_4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3203
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->i:Z

    goto :goto_3

    .line 2336
    :pswitch_5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3214
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->j:Z

    goto :goto_3

    .line 2339
    :pswitch_6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3225
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->k:Z

    goto :goto_3

    .line 2342
    :pswitch_7
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3236
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->l:Ljava/lang/String;

    goto :goto_3

    .line 2345
    :pswitch_8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3247
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->m:Z

    goto :goto_3

    .line 2348
    :pswitch_9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3270
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->n:Z

    goto :goto_3

    .line 2351
    :pswitch_a
    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/j256/ormlite/field/DatabaseFieldConfig;->a(Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    .line 3278
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->o:Ljava/lang/Enum;

    goto :goto_3

    .line 2354
    :pswitch_b
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3286
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->p:Z

    goto :goto_3

    .line 2357
    :pswitch_c
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3294
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->q:Z

    goto/16 :goto_3

    .line 2360
    :pswitch_d
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3302
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->r:Ljava/lang/String;

    goto/16 :goto_3

    .line 2363
    :pswitch_e
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3310
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->s:Z

    goto/16 :goto_3

    .line 2366
    :pswitch_f
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3318
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->t:Z

    goto/16 :goto_3

    .line 2369
    :pswitch_10
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3326
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->u:Z

    goto/16 :goto_3

    .line 2372
    :pswitch_11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3345
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->w:Z

    goto/16 :goto_3

    .line 2375
    :pswitch_12
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4337
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->v:Ljava/lang/String;

    goto/16 :goto_3

    .line 2378
    :pswitch_13
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4356
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->x:Ljava/lang/String;

    goto/16 :goto_3

    .line 2381
    :pswitch_14
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4360
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->y:Z

    goto/16 :goto_3

    .line 2384
    :pswitch_15
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4380
    iput v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->z:I

    goto/16 :goto_3

    .line 2388
    :pswitch_16
    check-cast v3, Ljava/lang/Class;

    .line 4448
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->A:Ljava/lang/Class;

    goto/16 :goto_3

    .line 2392
    :pswitch_17
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4456
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->B:Z

    goto/16 :goto_3

    .line 2395
    :pswitch_18
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4464
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->C:Ljava/lang/String;

    goto/16 :goto_3

    .line 2398
    :pswitch_19
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4472
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->D:Z

    goto/16 :goto_3

    .line 2401
    :pswitch_1a
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4480
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->E:Z

    goto/16 :goto_3

    .line 2404
    :pswitch_1b
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4488
    iput-object v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->F:Ljava/lang/String;

    goto/16 :goto_3

    .line 2407
    :pswitch_1c
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 4496
    iput-boolean v3, v4, Lcom/j256/ormlite/field/DatabaseFieldConfig;->G:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_5
    move-object v0, v4

    .line 2308
    goto/16 :goto_1

    .line 280
    :cond_6
    sget v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->f:I

    goto/16 :goto_0

    .line 2316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static a(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;
    .locals 10
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Lcom/j256/ormlite/support/ConnectionSource;->b()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v3

    .line 64
    .local v3, "databaseType":Lcom/j256/ormlite/db/DatabaseType;
    invoke-static {p1}, Lcom/j256/ormlite/table/DatabaseTableConfig;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "tableName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v5, "fieldConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/field/DatabaseFieldConfig;>;"
    move-object v1, p1

    .local v1, "classWalk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v4, v0, v6

    .line 68
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-static {v3, v8, v4}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/j256/ormlite/field/DatabaseFieldConfig;

    move-result-object v2

    .line 69
    .local v2, "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    if-eqz v2, :cond_0

    .line 1290
    iget-boolean v9, v2, Lcom/j256/ormlite/field/DatabaseFieldConfig;->q:Z

    .line 69
    if-eqz v9, :cond_0

    .line 70
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 66
    .end local v2    # "config":Lcom/j256/ormlite/field/DatabaseFieldConfig;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 74
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 75
    const/4 v9, 0x0

    .line 77
    :goto_2
    return-object v9

    :cond_3
    new-instance v9, Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v9, p1, v8, v5}, Lcom/j256/ormlite/table/DatabaseTableConfig;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 415
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    const/4 p0, 0x0

    .line 418
    :cond_1
    return-object p0
.end method

.method private static a()[I
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 95
    :try_start_0
    const-string/jumbo v11, "org.apache.harmony.lang.annotation.AnnotationFactory"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;

    .line 96
    const-string/jumbo v11, "org.apache.harmony.lang.annotation.AnnotationMember"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;

    .line 97
    const-string/jumbo v11, "[Lorg.apache.harmony.lang.annotation.AnnotationMember;"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    .local v1, "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;

    const-string/jumbo v13, "elements"

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 105
    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->b:Ljava/lang/reflect/Field;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;

    const-string/jumbo v13, "name"

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 108
    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->d:Ljava/lang/reflect/Field;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 109
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->c:Ljava/lang/Class;

    const-string/jumbo v13, "value"

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 110
    sput-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->e:Ljava/lang/reflect/Field;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    const-class v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil$DatabaseFieldSample;

    const-string/jumbo v13, "a"

    invoke-virtual {v11, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 119
    .local v6, "fieldField":Ljava/lang/reflect/Field;
    const-class v11, Lcom/j256/ormlite/field/DatabaseField;

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/j256/ormlite/field/DatabaseField;

    .line 120
    .local v3, "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v9

    .line 121
    .local v9, "proxy":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v13, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->a:Ljava/lang/Class;

    if-eq v11, v13, :cond_1

    move-object v2, v10

    .line 142
    .end local v1    # "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    .end local v6    # "fieldField":Ljava/lang/reflect/Field;
    .end local v9    # "proxy":Ljava/lang/reflect/InvocationHandler;
    :cond_0
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v11

    move-object v2, v10

    goto :goto_0

    .line 114
    .restart local v1    # "annotationMemberArrayClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v11

    move-object v2, v10

    goto :goto_0

    .line 116
    :catch_2
    move-exception v11

    move-object v2, v10

    goto :goto_0

    .line 127
    .restart local v3    # "databaseField":Lcom/j256/ormlite/field/DatabaseField;
    .restart local v6    # "fieldField":Ljava/lang/reflect/Field;
    .restart local v9    # "proxy":Ljava/lang/reflect/InvocationHandler;
    :cond_1
    :try_start_2
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v11, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 128
    .local v5, "elements":Ljava/lang/Object;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v11, v1, :cond_3

    :cond_2
    move-object v2, v10

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    check-cast v5, [Ljava/lang/Object;

    .end local v5    # "elements":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 133
    .local v4, "elementArray":[Ljava/lang/Object;
    array-length v11, v4

    new-array v2, v11, [I

    .line 136
    .local v2, "configNums":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v11, v4

    if-ge v7, v11, :cond_0

    .line 137
    sget-object v11, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->d:Ljava/lang/reflect/Field;

    aget-object v13, v4, v7

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2184
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "columnName"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v12

    .line 138
    :goto_2
    aput v11, v2, v7

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2186
    :cond_4
    const-string/jumbo v11, "dataType"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2187
    const/4 v11, 0x2

    goto :goto_2

    .line 2188
    :cond_5
    const-string/jumbo v11, "defaultValue"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2189
    const/4 v11, 0x3

    goto :goto_2

    .line 2190
    :cond_6
    const-string/jumbo v11, "width"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2191
    const/4 v11, 0x4

    goto :goto_2

    .line 2192
    :cond_7
    const-string/jumbo v11, "canBeNull"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2193
    const/4 v11, 0x5

    goto :goto_2

    .line 2194
    :cond_8
    const-string/jumbo v11, "id"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2195
    const/4 v11, 0x6

    goto :goto_2

    .line 2196
    :cond_9
    const-string/jumbo v11, "generatedId"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2197
    const/4 v11, 0x7

    goto :goto_2

    .line 2198
    :cond_a
    const-string/jumbo v11, "generatedIdSequence"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2199
    const/16 v11, 0x8

    goto :goto_2

    .line 2200
    :cond_b
    const-string/jumbo v11, "foreign"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2201
    const/16 v11, 0x9

    goto :goto_2

    .line 2202
    :cond_c
    const-string/jumbo v11, "useGetSet"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 2203
    const/16 v11, 0xa

    goto :goto_2

    .line 2204
    :cond_d
    const-string/jumbo v11, "unknownEnumName"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2205
    const/16 v11, 0xb

    goto/16 :goto_2

    .line 2206
    :cond_e
    const-string/jumbo v11, "throwIfNull"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 2207
    const/16 v11, 0xc

    goto/16 :goto_2

    .line 2208
    :cond_f
    const-string/jumbo v11, "persisted"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2209
    const/16 v11, 0xd

    goto/16 :goto_2

    .line 2210
    :cond_10
    const-string/jumbo v11, "format"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2211
    const/16 v11, 0xe

    goto/16 :goto_2

    .line 2212
    :cond_11
    const-string/jumbo v11, "unique"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 2213
    const/16 v11, 0xf

    goto/16 :goto_2

    .line 2214
    :cond_12
    const-string/jumbo v11, "uniqueCombo"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2215
    const/16 v11, 0x10

    goto/16 :goto_2

    .line 2216
    :cond_13
    const-string/jumbo v11, "index"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2217
    const/16 v11, 0x11

    goto/16 :goto_2

    .line 2218
    :cond_14
    const-string/jumbo v11, "uniqueIndex"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 2219
    const/16 v11, 0x12

    goto/16 :goto_2

    .line 2220
    :cond_15
    const-string/jumbo v11, "indexName"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 2221
    const/16 v11, 0x13

    goto/16 :goto_2

    .line 2222
    :cond_16
    const-string/jumbo v11, "uniqueIndexName"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 2223
    const/16 v11, 0x14

    goto/16 :goto_2

    .line 2224
    :cond_17
    const-string/jumbo v11, "foreignAutoRefresh"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 2225
    const/16 v11, 0x15

    goto/16 :goto_2

    .line 2226
    :cond_18
    const-string/jumbo v11, "maxForeignAutoRefreshLevel"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 2227
    const/16 v11, 0x16

    goto/16 :goto_2

    .line 2228
    :cond_19
    const-string/jumbo v11, "persisterClass"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 2229
    const/16 v11, 0x17

    goto/16 :goto_2

    .line 2230
    :cond_1a
    const-string/jumbo v11, "allowGeneratedIdInsert"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 2231
    const/16 v11, 0x18

    goto/16 :goto_2

    .line 2232
    :cond_1b
    const-string/jumbo v11, "columnDefinition"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 2233
    const/16 v11, 0x19

    goto/16 :goto_2

    .line 2234
    :cond_1c
    const-string/jumbo v11, "foreignAutoCreate"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 2235
    const/16 v11, 0x1a

    goto/16 :goto_2

    .line 2236
    :cond_1d
    const-string/jumbo v11, "version"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 2237
    const/16 v11, 0x1b

    goto/16 :goto_2

    .line 2238
    :cond_1e
    const-string/jumbo v11, "foreignColumnName"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 2239
    const/16 v11, 0x1c

    goto/16 :goto_2

    .line 2240
    :cond_1f
    const-string/jumbo v11, "readOnly"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    .line 2241
    const/16 v11, 0x1d

    goto/16 :goto_2

    .line 2243
    :cond_20
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Could not find support for DatabaseField "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 142
    .end local v2    # "configNums":[I
    .end local v4    # "elementArray":[Ljava/lang/Object;
    .end local v7    # "i":I
    .end local v8    # "name":Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v2, v10

    goto/16 :goto_0
.end method
