.class public final Lair;
.super Ljava/lang/Object;
.source "EmailDataFormat.java"


# static fields
.field private static a:Lcom/google/gson/JsonParser;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lair;->a:Lcom/google/gson/JsonParser;

    .line 99
    const-string/jumbo v0, "[<>&]| {2,}|\r?\n"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lair;->b:Ljava/util/regex/Pattern;

    .line 526
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lair;->c:Ljava/util/HashMap;

    .line 745
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_display_name"

    aput-object v2, v0, v1

    sput-object v0, Lair;->d:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x1

    .line 417
    .local v2, "useFastJson":Z
    const/4 v1, 0x0

    .line 420
    .local v1, "object":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {p0, p1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    .end local v1    # "object":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v2, :cond_0

    .line 428
    invoke-static {}, Lair;->c()Lcom/google/gson/JsonParser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 429
    .local v0, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 434
    .end local v0    # "jsonElement":Lcom/google/gson/JsonElement;
    :cond_0
    return-object v1

    .line 422
    .restart local v1    # "object":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    .line 423
    const-string/jumbo v3, "EmailDataFromat"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "parse json fail with fastjson, text: "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com_cloudmail_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "folderId"    # J
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 973
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 974
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 975
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 976
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .prologue
    .line 314
    if-nez p0, :cond_1

    .line 315
    const-string/jumbo v0, ""

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 318
    :cond_1
    const/4 v1, 0x1

    .line 319
    .local v1, "useFastJson":Z
    const/4 v0, 0x0

    .line 322
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_1
    if-nez v1, :cond_0

    .line 330
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    .line 325
    const-string/jumbo v2, "EmailDataFromat"

    const-string/jumbo v3, "toJson with fastJson fail for AliAddress"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static a(Lcom/alibaba/alimei/restfulapi/data/ExtData;)Ljava/lang/String;
    .locals 4
    .param p0, "extData"    # Lcom/alibaba/alimei/restfulapi/data/ExtData;

    .prologue
    .line 375
    const/4 v2, 0x1

    .line 376
    .local v2, "useFastJson":Z
    const/4 v0, 0x0

    .line 379
    .local v0, "json":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Lgxk;->toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    :goto_0
    if-nez v2, :cond_0

    .line 387
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 380
    .restart local v0    # "json":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 381
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "EmailDataFromat"

    invoke-static {v3, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "calendar"    # Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .prologue
    .line 687
    if-nez p0, :cond_0

    .line 688
    const-string/jumbo v0, ""

    .line 690
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AddressModel;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    .prologue
    .line 239
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 240
    .local v0, "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    .line 242
    invoke-static {v0}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;)Ljava/lang/String;
    .locals 2
    .param p0, "extData"    # Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string/jumbo v1, ""

    .line 264
    :goto_0
    return-object v1

    .line 260
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/ExtData;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/ExtData;-><init>()V

    .line 261
    .local v0, "extData2":Lcom/alibaba/alimei/restfulapi/data/ExtData;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/ExtData;->atList:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/ExtData;->imThrough:Ljava/lang/String;

    .line 264
    invoke-static {v0}, Lair;->a(Lcom/alibaba/alimei/restfulapi/data/ExtData;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 393
    if-nez p0, :cond_1

    .line 394
    const-string/jumbo v0, ""

    .line 411
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    const/4 v2, 0x1

    .line 398
    .local v2, "useFastJson":Z
    const/4 v0, 0x0

    .line 401
    .local v0, "json":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Lgxk;->toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 408
    :goto_1
    if-nez v2, :cond_0

    .line 409
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "EmailDataFromat"

    invoke-static {v3, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    .line 115
    sget-object v6, Lair;->b:Ljava/util/regex/Pattern;

    .line 116
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 118
    .local v3, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v5, "out":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 122
    .local v1, "end":I
    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 123
    .local v7, "start":I
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 125
    invoke-virtual {p0, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 126
    .local v0, "c":I
    if-ne v0, v9, :cond_4

    .line 128
    const/4 v2, 0x1

    .local v2, "i":I
    sub-int v4, v1, v7

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 129
    const-string/jumbo v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 145
    .end local v0    # "c":I
    .end local v1    # "end":I
    .end local v5    # "out":Ljava/lang/StringBuilder;
    .end local v7    # "start":I
    :cond_3
    return-object p0

    .line 132
    .restart local v0    # "c":I
    .restart local v1    # "end":I
    .restart local v5    # "out":Ljava/lang/StringBuilder;
    .restart local v7    # "start":I
    :cond_4
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5

    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    .line 133
    :cond_5
    const-string/jumbo v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_6
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_7

    .line 135
    const-string/jumbo v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    :cond_7
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_8

    .line 137
    const-string/jumbo v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_8
    const/16 v8, 0x26

    if-ne v0, v8, :cond_2

    .line 139
    const-string/jumbo v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "htmlContent"    # Ljava/lang/String;
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, "summary":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    move-object v0, p1

    .line 1027
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1028
    const-string/jumbo v1, "\n"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    const-string/jumbo v1, "\r"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    const-string/jumbo v1, "\t"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    const-string/jumbo v1, "\\s+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1032
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1033
    const-string/jumbo v0, " "

    .line 1036
    :cond_1
    return-object v0

    .line 1023
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1024
    invoke-static {p0}, Luy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 280
    :cond_0
    const-string/jumbo v3, ""

    .line 305
    :cond_1
    :goto_0
    return-object v3

    .line 283
    :cond_2
    const/4 v3, 0x0

    .line 284
    .local v3, "json":Ljava/lang/String;
    const/4 v5, 0x1

    .line 287
    .local v5, "useFastJson":Z
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0, v6}, Lgxk;->toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 294
    :goto_1
    if-nez v5, :cond_1

    .line 295
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v2, "aliaddresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 297
    .local v0, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    new-instance v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct {v1}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 298
    .local v1, "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v7, v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    .line 299
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v7, v1, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    .line 300
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 288
    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v1    # "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v2    # "aliaddresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :catch_0
    move-exception v4

    .line 289
    .local v4, "tr":Ljava/lang/Throwable;
    const-string/jumbo v6, "EmailDataFromat"

    invoke-static {v6, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v5, 0x0

    goto :goto_1

    .line 302
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v2    # "aliaddresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :cond_3
    invoke-static {v2}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static a(Lvo;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Lvo;

    .prologue
    .line 486
    if-nez p0, :cond_0

    .line 487
    const-string/jumbo v1, ""

    .line 492
    :goto_0
    return-object v1

    .line 489
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 2075
    .local v0, "add":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    iget-object v1, p0, Lvo;->a:Ljava/lang/String;

    .line 490
    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    .line 2085
    iget-object v1, p0, Lvo;->b:Ljava/lang/String;

    .line 491
    iput-object v1, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    .line 492
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a([Lvo;)Ljava/lang/String;
    .locals 6
    .param p0, "addresses"    # [Lvo;

    .prologue
    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p0, v3

    .line 503
    .local v1, "address":Lvo;
    new-instance v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/data/AliAddress;-><init>()V

    .line 3075
    .local v0, "add":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    iget-object v5, v1, Lvo;->a:Ljava/lang/String;

    .line 504
    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    .line 3085
    iget-object v5, v1, Lvo;->b:Ljava/lang/String;

    .line 505
    iput-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    .line 506
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 508
    .end local v0    # "add":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v1    # "address":Lvo;
    :cond_0
    invoke-static {v2}, Lair;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "mailboxTye"    # I

    .prologue
    .line 70
    const/16 v0, 0x40

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/restfulapi/data/Mail;)Z
    .locals 4
    .param p0, "mail"    # Lcom/alibaba/alimei/restfulapi/data/Mail;

    .prologue
    const/4 v1, 0x0

    .line 189
    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/data/Mail;->tags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "tag":Ljava/lang/String;
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/alibaba/alimei/restfulapi/data/AliAddress;)Ljava/lang/String;
    .locals 3
    .param p0, "addr"    # Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .prologue
    .line 672
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 673
    :cond_0
    const/4 v1, 0x0

    .line 682
    :goto_0
    return-object v1

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 676
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 677
    .local v0, "index":I
    if-gtz v0, :cond_2

    .line 678
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    goto :goto_0

    .line 680
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 682
    .end local v0    # "index":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const-string/jumbo v0, ""

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    const-string/jumbo v0, "&lt;"

    const-string/jumbo v1, "<"

    .line 154
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&gt;"

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "&amp;"

    const-string/jumbo v2, "&"

    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 518
    :cond_0
    const-string/jumbo v0, ""

    .line 520
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final c()Lcom/google/gson/JsonParser;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lair;->a:Lcom/google/gson/JsonParser;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    sput-object v0, Lair;->a:Lcom/google/gson/JsonParser;

    .line 77
    :cond_0
    sget-object v0, Lair;->a:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method public static c(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 592
    :cond_0
    const-string/jumbo v2, ""

    .line 600
    :goto_0
    return-object v2

    .line 595
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "@,@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 598
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "@,@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 600
    .end local v1    # "tag":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "serverId"    # Ljava/lang/String;

    .prologue
    .line 172
    if-eqz p0, :cond_0

    const-string/jumbo v0, "com_cloudmail_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 208
    if-nez p0, :cond_1

    .line 209
    const/4 v2, 0x0

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 212
    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 213
    .local v1, "lastDot":I
    const/4 v0, 0x0

    .line 214
    .local v0, "extension":Ljava/lang/String;
    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_2

    .line 215
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_2
    if-nez v0, :cond_3

    .line 219
    const-string/jumbo v2, "application/octet-stream"

    .local v2, "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2    # "mimeType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "application/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static d(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1045
    .local p0, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult$Item;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1046
    :cond_0
    const/4 v0, 0x0

    .line 1063
    :cond_1
    :goto_0
    return-object v0

    .line 1049
    :cond_2
    const/4 v2, 0x1

    .line 1050
    .local v2, "useFastJson":Z
    const/4 v0, 0x0

    .line 1053
    .local v0, "jsonString":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p0, v3}, Lgxk;->toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1060
    :goto_1
    if-nez v2, :cond_1

    .line 1061
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "EmailDataFromat"

    const-string/jumbo v4, "fastJson to json string fail"

    invoke-static {v3, v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AddressModel;
    .locals 3
    .param p0, "addressText"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-static {p0}, Lair;->g(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-result-object v0

    .line 247
    .local v0, "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    if-nez v0, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 253
    :goto_0
    return-object v1

    .line 250
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 251
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 252
    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;
    .locals 3
    .param p0, "extDataText"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {p0}, Lair;->h(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/ExtData;

    move-result-object v0

    .line 269
    .local v0, "extData":Lcom/alibaba/alimei/restfulapi/data/ExtData;
    if-nez v0, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 275
    :goto_0
    return-object v1

    .line 272
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;-><init>()V

    .line 273
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;
    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/data/ExtData;->atList:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    .line 274
    iget-object v2, v0, Lcom/alibaba/alimei/restfulapi/data/ExtData;->imThrough:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .locals 8
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 341
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 342
    :cond_0
    const/4 v4, 0x0

    .line 362
    :goto_0
    return-object v4

    .line 345
    :cond_1
    const/4 v3, 0x1

    .line 346
    .local v3, "useFastJson":Z
    const/4 v1, 0x0

    .line 349
    .local v1, "aliAddress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    :try_start_0
    const-class v4, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-static {p0, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_1
    if-nez v3, :cond_2

    .line 357
    invoke-static {}, Lair;->c()Lcom/google/gson/JsonParser;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 358
    .local v2, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    goto :goto_0

    .line 351
    .end local v2    # "jsonElement":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v4

    const/4 v3, 0x0

    .line 352
    const-string/jumbo v4, "EmailDataFromat"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "parse json fail with fastjson, text: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 362
    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/ExtData;
    .locals 8
    .param p0, "extData"    # Ljava/lang/String;

    .prologue
    .line 443
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 444
    :cond_0
    const/4 v4, 0x0

    .line 464
    :goto_0
    return-object v4

    .line 447
    :cond_1
    const/4 v3, 0x1

    .line 448
    .local v3, "useFastJson":Z
    const/4 v1, 0x0

    .line 451
    .local v1, "data":Lcom/alibaba/alimei/restfulapi/data/ExtData;
    :try_start_0
    const-class v4, Lcom/alibaba/alimei/restfulapi/data/ExtData;

    invoke-static {p0, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/ExtData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_1
    if-nez v3, :cond_2

    .line 459
    invoke-static {}, Lair;->c()Lcom/google/gson/JsonParser;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 460
    .local v2, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/alibaba/alimei/restfulapi/data/ExtData;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/ExtData;

    goto :goto_0

    .line 453
    .end local v2    # "jsonElement":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "EmailDataFromat"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "parse with fastjson fail, text:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object v4, v1

    .line 464
    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    invoke-static {p0}, Lair;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 474
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    .local v3, "resulst":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 477
    .local v0, "addr":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    new-instance v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v5, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    iget-object v6, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->alias:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v0    # "addr":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v3    # "resulst":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return-object v3
.end method

.method public static j(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "tags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-object v5

    .line 532
    :cond_1
    sget-object v8, Lair;->c:Ljava/util/HashMap;

    invoke-virtual {v8, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 534
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_7

    .line 535
    const-string/jumbo v8, "@,@"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, "ts":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 537
    .local v0, "hasBeeBox":Z
    if-eqz v7, :cond_7

    .line 538
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v6, v7, v8

    .line 540
    .local v6, "t":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 543
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 544
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 545
    .local v2, "length":I
    if-eqz v2, :cond_2

    .line 550
    const/4 v10, 0x5

    if-lt v2, v10, :cond_3

    const-string/jumbo v10, "dingmail-cid"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 551
    const/4 v0, 0x1

    .line 539
    .end local v2    # "length":I
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 554
    .restart local v2    # "length":I
    :cond_3
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 557
    .end local v2    # "length":I
    .end local v6    # "t":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    if-nez v0, :cond_7

    .line 558
    sget-object v8, Lair;->c:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    const/4 v9, 0x6

    if-lt v8, v9, :cond_6

    .line 560
    :try_start_0
    sget-object v8, Lair;->c:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 561
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 562
    .local v3, "removeKey":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 563
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "removeKey":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 565
    .restart local v3    # "removeKey":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    .line 566
    sget-object v8, Lair;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "removeKey":Ljava/lang/String;
    :cond_6
    :goto_3
    sget-object v8, Lair;->c:Ljava/util/HashMap;

    invoke-virtual {v8, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .end local v0    # "hasBeeBox":Z
    .end local v7    # "ts":[Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 578
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v5, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .end local v5    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0    # "hasBeeBox":Z
    .restart local v7    # "ts":[Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const-string/jumbo v1, ""

    .line 616
    :goto_0
    return-object v1

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "@,@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@,@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "@,@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@,@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "addresses"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/AliAddress;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 630
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_2

    .line 631
    :cond_0
    const/4 v7, 0x0

    .line 668
    :cond_1
    :goto_0
    return-object v7

    .line 634
    :cond_2
    const/4 v2, 0x0

    .line 635
    .local v2, "addressList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    const/4 v10, 0x1

    .line 638
    .local v10, "useFastJson":Z
    :try_start_0
    const-class v11, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-static {p0, v11}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 645
    :goto_1
    if-nez v10, :cond_6

    .line 647
    invoke-static {}, Lair;->c()Lcom/google/gson/JsonParser;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 648
    .local v6, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 649
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v11

    const-class v13, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-virtual {v11, v6, v13}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 650
    .local v3, "adress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 651
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    .end local v3    # "adress":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v6    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    :catch_0
    move-exception v9

    .line 640
    .local v9, "tr":Ljava/lang/Throwable;
    const/4 v10, 0x0

    .line 641
    const-string/jumbo v11, "EmailDataFromat"

    const-string/jumbo v13, "fastjson parse address fail"

    invoke-static {v11, v13, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 653
    .end local v9    # "tr":Ljava/lang/Throwable;
    .restart local v6    # "jsonElement":Lcom/google/gson/JsonElement;
    :cond_3
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 654
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 655
    .local v4, "array":Lcom/google/gson/JsonArray;
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    .line 656
    .local v8, "size":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    .restart local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v8, :cond_1

    .line 658
    invoke-virtual {v4, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 659
    .local v1, "addressElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v11

    const-class v13, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    invoke-virtual {v11, v1, v13}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;

    .line 3720
    .local v0, "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    if-eqz v0, :cond_5

    iget-object v11, v0, Lcom/alibaba/alimei/restfulapi/data/AliAddress;->address:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    move v11, v12

    .line 660
    :goto_3
    if-eqz v11, :cond_4

    .line 661
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3724
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .end local v0    # "address":Lcom/alibaba/alimei/restfulapi/data/AliAddress;
    .end local v1    # "addressElement":Lcom/google/gson/JsonElement;
    .end local v4    # "array":Lcom/google/gson/JsonArray;
    .end local v5    # "i":I
    .end local v6    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v7    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/data/AliAddress;>;"
    .end local v8    # "size":I
    :cond_6
    move-object v7, v2

    .line 668
    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    .locals 9
    .param p0, "calendar"    # Ljava/lang/String;

    .prologue
    .line 694
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 695
    :cond_0
    const/4 v3, 0x0

    .line 716
    :goto_0
    return-object v3

    .line 698
    :cond_1
    const/4 v4, 0x1

    .line 699
    .local v4, "useFastJson":Z
    const/4 v1, 0x0

    .line 702
    .local v1, "calObject":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    :try_start_0
    const-class v5, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-static {p0, v5}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_1
    if-nez v4, :cond_2

    .line 710
    invoke-static {}, Lair;->c()Lcom/google/gson/JsonParser;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 711
    .local v2, "jsonElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 712
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v5

    const-class v6, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;

    .line 713
    .local v3, "result":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    goto :goto_0

    .line 704
    .end local v2    # "jsonElement":Lcom/google/gson/JsonElement;
    .end local v3    # "result":Lcom/alibaba/alimei/restfulapi/data/calendar/Calendar;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "EmailDataFromat"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "parse with fastjson fail, text: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 716
    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x40

    const/16 v6, 0x2e

    .line 736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 737
    .local v4, "len":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 738
    .local v0, "firstAt":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 739
    .local v2, "lastAt":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 740
    .local v1, "firstDot":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 741
    .local v3, "lastDot":I
    if-lez v0, :cond_0

    if-ne v0, v2, :cond_0

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_0

    if-gt v1, v3, :cond_0

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "remoteFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 835
    if-nez p0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-object v3

    .line 838
    :cond_1
    const-string/jumbo v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, "names":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 840
    array-length v4, v1

    if-eqz v4, :cond_0

    array-length v4, v1

    if-eq v4, v5, :cond_0

    .line 842
    array-length v4, v1

    if-le v4, v5, :cond_0

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 846
    if-eqz v0, :cond_2

    .line 847
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_2
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 852
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static q(Ljava/lang/String;)I
    .locals 2
    .param p0, "remoteFolderName"    # Ljava/lang/String;

    .prologue
    .line 864
    if-nez p0, :cond_0

    .line 865
    const/4 v1, 0x0

    .line 869
    :goto_0
    return v1

    .line 868
    :cond_0
    const-string/jumbo v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "remoteFolderName"    # Ljava/lang/String;

    .prologue
    .line 878
    if-nez p0, :cond_1

    .line 879
    const/4 v0, 0x0

    .line 887
    :cond_0
    :goto_0
    return-object v0

    .line 881
    :cond_1
    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "names":[Ljava/lang/String;
    move-object v0, p0

    .line 883
    .local v0, "folderName":Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 885
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mimeMessageId"    # Ljava/lang/String;

    .prologue
    .line 928
    if-eqz p0, :cond_0

    .line 929
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "<"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 931
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mimeMessageId"    # Ljava/lang/String;

    .prologue
    .line 940
    if-eqz p0, :cond_0

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 944
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    :goto_0
    return-object v1

    .line 947
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static u(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 959
    if-eqz p0, :cond_0

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 964
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    :goto_0
    return-object v1

    .line 966
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)J
    .locals 4
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 981
    if-eqz p0, :cond_0

    .line 982
    const-string/jumbo v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "strings":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 984
    const/4 v2, 0x1

    aget-object v1, v0, v2

    .line 986
    .local v1, "uid":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 991
    .end local v0    # "strings":[Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/String;
    :goto_0
    return-wide v2

    .restart local v0    # "strings":[Ljava/lang/String;
    .restart local v1    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .end local v0    # "strings":[Ljava/lang/String;
    .end local v1    # "uid":Ljava/lang/String;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "failedList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1072
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1073
    const/4 v1, 0x0

    .line 1092
    :cond_0
    :goto_0
    return-object v1

    .line 1076
    :cond_1
    const/4 v3, 0x1

    .line 1077
    .local v3, "useFastJson":Z
    const/4 v1, 0x0

    .line 1080
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    :try_start_0
    const-class v4, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;

    invoke-static {p0, v4}, Lgxk;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1087
    :goto_1
    if-nez v3, :cond_0

    .line 1088
    new-instance v4, Lair$1;

    invoke-direct {v4}, Lair$1;-><init>()V

    invoke-virtual {v4}, Lair$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1089
    .local v0, "listType":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    goto :goto_0

    .line 1081
    .end local v0    # "listType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v2

    .line 1082
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v4, "EmailDataFromat"

    const-string/jumbo v5, "fastJson to json string fail"

    invoke-static {v4, v5, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1083
    const/4 v3, 0x0

    goto :goto_1
.end method
