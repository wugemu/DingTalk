.class public Lmtopsdk/mtop/util/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field private static final API_NAME:Ljava/lang/String; = "API_NAME"

.field private static final NEED_ECODE:Ljava/lang/String; = "NEED_ECODE"

.field private static final NEED_SESSION:Ljava/lang/String; = "NEED_SESSION"

.field private static final ORIGINALJSON:Ljava/lang/String; = "ORIGINALJSON"

.field private static final SERIAL_VERSION_UID:Ljava/lang/String; = "serialVersionUID"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.ReflectUtil"

.field private static final VERSION:Ljava/lang/String; = "VERSION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static converMapToDataStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v0, "dataStr":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "{"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 116
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 119
    .local v6, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v6, :cond_0

    .line 121
    :try_start_0
    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {v6}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.ReflectUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[converMapToDataStr] convert key="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to dataStr error ---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 132
    .local v5, "length":I
    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    .line 133
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 136
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "length":I
    :cond_2
    const-string/jumbo v7, "}"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static convertToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;

    .prologue
    .line 33
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 34
    .local v0, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    if-eqz p0, :cond_0

    .line 35
    invoke-static {v0, p0}, Lmtopsdk/mtop/util/ReflectUtil;->parseParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-object v0
.end method

.method public static convertToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1
    .param p0, "inputDO"    # Lmtopsdk/mtop/domain/IMTOPDataObject;

    .prologue
    .line 45
    new-instance v0, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 46
    .local v0, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    if-eqz p0, :cond_0

    .line 47
    invoke-static {v0, p0}, Lmtopsdk/mtop/util/ReflectUtil;->parseParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-object v0
.end method

.method private static excludeField(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p2, "checkFieldInMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "dataParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 244
    const-string/jumbo v1, "$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    const-string/jumbo v1, "API_NAME"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VERSION"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NEED_ECODE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NEED_SESSION"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "serialVersionUID"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const-string/jumbo v1, "ORIGINALJSON"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    if-eqz p2, :cond_2

    .line 268
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 319
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v5

    .line 322
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 323
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 324
    .local v3, "fs":[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 325
    aget-object v2, v3, v4

    .line 326
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 327
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 329
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "mtopsdk.ReflectUtil"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 332
    :catch_1
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "mtopsdk.ReflectUtil"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static needEcode(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "inputObj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    const-string/jumbo v2, "NEED_ECODE"

    invoke-static {v2, p0}, Lmtopsdk/mtop/util/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 350
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 351
    .local v0, "need":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 352
    check-cast v0, Ljava/lang/Boolean;

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static needJsonType(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "inputObj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 383
    const-string/jumbo v2, "ORIGINALJSON"

    invoke-static {v2, p0}, Lmtopsdk/mtop/util/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 385
    .local v0, "need":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 386
    check-cast v0, Ljava/lang/Boolean;

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static needSession(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "inputObj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    const-string/jumbo v2, "NEED_SESSION"

    invoke-static {v2, p0}, Lmtopsdk/mtop/util/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 367
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 368
    .local v0, "need":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 369
    check-cast v0, Ljava/lang/Boolean;

    .line 371
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method private static parseDataParams(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p0, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 165
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 165
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lmtopsdk/mtop/util/ReflectUtil;->parseFields(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseDataParams(Lmtopsdk/mtop/domain/IMTOPDataObject;)Ljava/util/Map;
    .locals 2
    .param p0, "input"    # Lmtopsdk/mtop/domain/IMTOPDataObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    if-nez p0, :cond_0

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 151
    :goto_0
    return-object v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lmtopsdk/mtop/util/ReflectUtil;->parseFields(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseFields(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .param p0, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "dataParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 178
    .local v2, "subFields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Lmtopsdk/mtop/util/ReflectUtil;->parseFieldsToMap(Ljava/lang/Object;[Ljava/lang/reflect/Field;Ljava/util/HashMap;Z)V

    .line 180
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 181
    .local v1, "publicFields":[Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-static {p0, v1, v0, v3}, Lmtopsdk/mtop/util/ReflectUtil;->parseFieldsToMap(Ljava/lang/Object;[Ljava/lang/reflect/Field;Ljava/util/HashMap;Z)V

    .line 182
    return-object v0
.end method

.method private static parseFieldsToMap(Ljava/lang/Object;[Ljava/lang/reflect/Field;Ljava/util/HashMap;Z)V
    .locals 7
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .param p3, "checkFieldInMap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    .local p2, "dataParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 227
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v1, 0x0

    .line 196
    .local v1, "fieldName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 197
    const/4 v3, 0x0

    .line 199
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1, p2, p3}, Lmtopsdk/mtop/util/ReflectUtil;->excludeField(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 196
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    aget-object v4, p1, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    aget-object v4, p1, v2

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 214
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    if-eqz v3, :cond_2

    .line 216
    :try_start_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 217
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.ReflectUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[parseFieldsToMap]transform biz param to json string error.---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 212
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.ReflectUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[parseFieldsToMap]get biz param error through reflection.---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 219
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    :try_start_2
    invoke-static {v3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static parseParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/Object;)V
    .locals 13
    .param p0, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p1, "inputDO"    # Ljava/lang/Object;

    .prologue
    .line 54
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 57
    .local v2, "cls":Ljava/lang/Class;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 58
    .local v6, "fieldSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/reflect/Field;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 63
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "fieldName":Ljava/lang/String;
    const-string/jumbo v11, "$"

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    const-string/jumbo v11, "serialVersionUID"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "ORIGINALJSON"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 69
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    const-string/jumbo v11, "API_NAME"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 71
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "apiName":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v0    # "apiName":Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "fieldSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/reflect/Field;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 102
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "mtopsdk.ReflectUtil"

    const-string/jumbo v12, "parseParams failed."

    invoke-static {v11, v12, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 75
    .restart local v2    # "cls":Ljava/lang/Class;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v5    # "fieldName":Ljava/lang/String;
    .restart local v6    # "fieldSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/reflect/Field;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v11, "VERSION"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 77
    .local v10, "version":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 78
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    .end local v10    # "version":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v11, "NEED_ECODE"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 81
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 82
    .local v1, "b":Ljava/lang/Boolean;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p0, v11}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 83
    .end local v1    # "b":Ljava/lang/Boolean;
    :cond_4
    const-string/jumbo v11, "NEED_SESSION"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 85
    .restart local v1    # "b":Ljava/lang/Boolean;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p0, v11}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 87
    .end local v1    # "b":Ljava/lang/Boolean;
    :cond_6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 88
    .local v8, "obj":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 89
    instance-of v11, v8, Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 92
    :cond_7
    invoke-static {v8}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 99
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_8
    iput-object v9, p0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 100
    invoke-static {v9}, Lmtopsdk/mtop/util/ReflectUtil;->converMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static parseUrlParams(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/Object;)V
    .locals 6
    .param p0, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p1, "input"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 284
    if-eqz p1, :cond_3

    .line 286
    const-string/jumbo v4, "API_NAME"

    invoke-static {v4, p1}, Lmtopsdk/mtop/util/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 287
    .local v1, "apiObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "api":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 292
    .end local v0    # "api":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "VERSION"

    invoke-static {v4, p1}, Lmtopsdk/mtop/util/ReflectUtil;->getFieldValueByName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 293
    .local v3, "versionObject":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 294
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 298
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lmtopsdk/mtop/util/ReflectUtil;->needEcode(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 302
    :cond_2
    invoke-static {p1}, Lmtopsdk/mtop/util/ReflectUtil;->needSession(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    invoke-virtual {p0, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedSession(Z)V

    .line 308
    .end local v1    # "apiObject":Ljava/lang/Object;
    .end local v3    # "versionObject":Ljava/lang/Object;
    :cond_3
    return-void
.end method
