.class public final Lku;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "^[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lku;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/URL;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 151
    if-nez p0, :cond_0

    move-object v0, v5

    .line 185
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "ext":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 161
    .local v2, "length":I
    const/4 v6, 0x1

    if-gt v2, v6, :cond_1

    move-object v0, v5

    .line 162
    goto :goto_0

    .line 165
    :cond_1
    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 168
    .local v1, "lastSplash":I
    if-eq v1, v7, :cond_2

    add-int/lit8 v6, v2, -0x1

    if-ne v1, v6, :cond_3

    :cond_2
    move-object v0, v5

    .line 169
    goto :goto_0

    .line 172
    :cond_3
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 175
    .local v4, "pos":I
    if-eq v4, v7, :cond_4

    if-gt v4, v1, :cond_5

    :cond_4
    move-object v0, v5

    .line 176
    goto :goto_0

    .line 179
    :cond_5
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .end local v1    # "lastSplash":I
    .end local v2    # "length":I
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "pos":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 83
    .line 1065
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object v0, v3

    .line 84
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move-object v1, v3

    .line 87
    :goto_1
    return-object v1

    .line 1069
    .end local v0    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1070
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1071
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 1074
    goto :goto_0

    .line 87
    .restart local v0    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 56
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0

    .line 52
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    .local v0, "cloneMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static a(Lanet/channel/request/Request;ILjava/util/Map;)Z
    .locals 7
    .param p0, "request"    # Lanet/channel/request/Request;
    .param p1, "httpCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/request/Request;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    .line 1144
    iget-boolean v4, p0, Lanet/channel/request/Request;->e:Z

    .line 113
    if-eqz v4, :cond_4

    .line 2101
    iget v4, p0, Lanet/channel/request/Request;->h:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    move v4, v2

    .line 113
    :goto_0
    if-eqz v4, :cond_4

    .line 2109
    const/16 v4, 0x12c

    if-lt p1, v4, :cond_2

    const/16 v4, 0x190

    if-ge p1, v4, :cond_2

    const/16 v4, 0x130

    if-eq p1, v4, :cond_2

    move v4, v2

    .line 113
    :goto_1
    if-eqz v4, :cond_4

    .line 114
    const-string/jumbo v4, "Location"

    invoke-static {p2, v4}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    move-object v1, v0

    .line 3105
    :cond_0
    :goto_2
    iput-object v1, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 3106
    iput-object v6, p0, Lanet/channel/request/Request;->b:Ljava/net/URL;

    .line 3107
    iput-object v6, p0, Lanet/channel/request/Request;->d:Ljava/lang/String;

    .line 3108
    iget v3, p0, Lanet/channel/request/Request;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lanet/channel/request/Request;->h:I

    .line 126
    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :goto_3
    return v2

    :cond_1
    move v4, v3

    .line 2101
    goto :goto_0

    :cond_2
    move v4, v3

    .line 2109
    goto :goto_1

    .line 119
    .restart local v0    # "location":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "//"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .end local v0    # "location":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 126
    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ip"    # Ljava/lang/String;

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lku;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;Ljava/lang/String;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    move-object v1, p1

    .line 103
    :cond_1
    if-eqz v1, :cond_2

    .line 104
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 42
    :cond_0
    :goto_0
    return v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 30
    .local v0, "bytes":[C
    array-length v4, v0

    if-lez v4, :cond_2

    array-length v4, v0

    const/16 v5, 0xff

    if-le v4, v5, :cond_3

    :cond_2
    move v1, v3

    .line 31
    goto :goto_0

    .line 33
    :cond_3
    const/4 v1, 0x0

    .line 34
    .local v1, "containLetter":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 35
    aget-char v4, v0, v2

    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    aget-char v4, v0, v2

    const/16 v5, 0x5a

    if-le v4, v5, :cond_5

    :cond_4
    aget-char v4, v0, v2

    const/16 v5, 0x61

    if-lt v4, v5, :cond_7

    aget-char v4, v0, v2

    const/16 v5, 0x7a

    if-gt v4, v5, :cond_7

    .line 36
    :cond_5
    const/4 v1, 0x1

    .line 34
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_7
    aget-char v4, v0, v2

    const/16 v5, 0x30

    if-lt v4, v5, :cond_8

    aget-char v4, v0, v2

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    :cond_8
    aget-char v4, v0, v2

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_6

    aget-char v4, v0, v2

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_6

    move v1, v3

    .line 39
    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    const-string/jumbo v1, "Content-Encoding"

    invoke-static {p0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "encoding":Ljava/lang/String;
    const-string/jumbo v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 137
    .end local v0    # "encoding":Ljava/lang/String;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 143
    .local v0, "length":I
    :try_start_0
    const-string/jumbo v1, "Content-Length"

    invoke-static {p0, v1}, Lku;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 147
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
