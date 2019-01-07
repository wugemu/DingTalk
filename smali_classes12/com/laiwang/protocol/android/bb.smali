.class public abstract Lcom/laiwang/protocol/android/bb;
.super Ljava/lang/Object;
.source "Decode.java"

# interfaces
.implements Lcom/laiwang/protocol/core/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/bb$a;,
        Lcom/laiwang/protocol/android/bb$b;,
        Lcom/laiwang/protocol/android/bb$c;,
        Lcom/laiwang/protocol/android/bb$d;,
        Lcom/laiwang/protocol/android/bb$e;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:I

.field protected final d:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/laiwang/protocol/android/bb;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/laiwang/protocol/android/bb$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/laiwang/protocol/android/bb$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/laiwang/protocol/android/bb;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 0
    .param p1, "startLine"    # Ljava/lang/String;
    .param p3, "len"    # I
    .param p4, "zip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/laiwang/protocol/android/bb;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/laiwang/protocol/android/bb;->b:Ljava/util/List;

    .line 24
    iput p3, p0, Lcom/laiwang/protocol/android/bb;->c:I

    .line 25
    iput-boolean p4, p0, Lcom/laiwang/protocol/android/bb;->d:Z

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;IZLcom/laiwang/protocol/android/bb$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/laiwang/protocol/android/bb$1;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/laiwang/protocol/android/bb;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method

.method public static a()Lcom/laiwang/protocol/android/bb;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/laiwang/protocol/android/bb$c;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bb$c;-><init>()V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/util/List;)Lcom/laiwang/protocol/android/bd;
    .locals 2
    .param p0, "startLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/laiwang/protocol/android/bd;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/laiwang/protocol/android/bb;->a(Ljava/lang/String;Ljava/util/List;Z[B)Lcom/laiwang/protocol/android/bd;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/util/List;Z[B)Lcom/laiwang/protocol/android/bd;
    .locals 12
    .param p0, "startLine"    # Ljava/lang/String;
    .param p2, "zip"    # Z
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z[B)",
            "Lcom/laiwang/protocol/android/bd;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 123
    .local v1, "h":I
    const-string/jumbo v9, "LWP "

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 124
    new-instance v5, Lcom/laiwang/protocol/core/Request;

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;)V

    .line 128
    .local v5, "message":Lcom/laiwang/protocol/android/bd;
    :goto_0
    invoke-virtual {v5}, Lcom/laiwang/protocol/android/bd;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 130
    .local v3, "hs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 131
    .local v2, "header":Ljava/lang/String;
    const-string/jumbo v10, ":"

    const/4 v11, 0x2

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "split":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 133
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_0

    .line 134
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .restart local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v10, 0x0

    aget-object v4, v6, v10

    .line 137
    .local v4, "key":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v7, v6, v10

    .line 138
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v1, v10, 0x2

    .line 141
    goto :goto_1

    .line 126
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "hs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "message":Lcom/laiwang/protocol/android/bd;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Lcom/laiwang/protocol/core/Response;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    .restart local v5    # "message":Lcom/laiwang/protocol/android/bd;
    goto :goto_0

    .line 142
    .restart local v3    # "hs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_HEADER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 143
    if-eqz p3, :cond_4

    array-length v9, p3

    if-lez v9, :cond_4

    .line 144
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    array-length v10, p3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 145
    if-eqz p2, :cond_3

    .line 146
    const-string/jumbo v9, "zip"

    const-string/jumbo v10, "true"

    invoke-virtual {v5, v9, v10}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 148
    :try_start_0
    const-string/jumbo v9, "x-len-before"

    array-length v10, p3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    .line 149
    invoke-static {p3}, Lcom/laiwang/protocol/util/IOUtils;->unzip([B)[B

    move-result-object p3

    .line 150
    const-string/jumbo v9, "x-len-after"

    array-length v10, p3

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_3
    iput-object p3, v5, Lcom/laiwang/protocol/android/bd;->payload:[B

    .line 160
    :goto_2
    return-object v5

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 157
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    sget-object v9, Lcom/laiwang/protocol/attribute/Attributes;->SIZE_OF_BODY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v5, v9}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract a(Lcom/laiwang/protocol/android/bb$d;Ljava/util/List;)Lcom/laiwang/protocol/android/bb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/bb$d;",
            "Ljava/util/List",
            "<",
            "Lcom/laiwang/protocol/android/bd;",
            ">;)",
            "Lcom/laiwang/protocol/android/bb;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laiwang/protocol/android/bb$e;
        }
    .end annotation
.end method
