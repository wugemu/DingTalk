.class public Lcom/laiwang/protocol/android/be;
.super Ljava/lang/Object;
.source "MessageConvert.java"

# interfaces
.implements Lcom/laiwang/protocol/core/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/android/be$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "REQUEST_IS_REGISTER"

    sput-object v0, Lcom/laiwang/protocol/android/be;->a:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "MEDIA"

    sput-object v0, Lcom/laiwang/protocol/android/be;->b:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "REMOTE"

    sput-object v0, Lcom/laiwang/protocol/android/be;->c:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "NO_AUTH"

    sput-object v0, Lcom/laiwang/protocol/android/be;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "NO_ACK"

    sput-object v0, Lcom/laiwang/protocol/android/be;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;
    .locals 3
    .param p0, "message"    # Lcom/laiwang/protocol/android/bd;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/laiwang/protocol/android/be;->c(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    const-string/jumbo v1, "payload"

    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 68
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/laiwang/protocol/android/bd;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const-string/jumbo v6, "url"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 25
    new-instance v3, Lcom/laiwang/protocol/core/Request;

    const-string/jumbo v6, "url"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/laiwang/protocol/core/Request;-><init>(Ljava/lang/String;)V

    .line 29
    .local v3, "message":Lcom/laiwang/protocol/android/bd;
    :goto_0
    const-string/jumbo v6, "headers"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 30
    .local v1, "headers":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 32
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 36
    .local v5, "v":Ljava/lang/String;
    invoke-virtual {v3, v0, v5}, Lcom/laiwang/protocol/android/bd;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/android/bd;

    goto :goto_1

    .line 27
    .end local v0    # "header":Ljava/lang/String;
    .end local v1    # "headers":Landroid/os/Bundle;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "message":Lcom/laiwang/protocol/android/bd;
    .end local v5    # "v":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/laiwang/protocol/core/Response;

    const-string/jumbo v6, "status"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/laiwang/protocol/core/Response;-><init>(Ljava/lang/Integer;)V

    .restart local v3    # "message":Lcom/laiwang/protocol/android/bd;
    goto :goto_0

    .line 40
    .restart local v1    # "headers":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v6, "payload"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 41
    .local v4, "payload":[B
    if-eqz v4, :cond_3

    .line 42
    invoke-virtual {v3, v4}, Lcom/laiwang/protocol/android/bd;->payload([B)V

    .line 44
    :cond_3
    const-string/jumbo v6, "retry"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 45
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    const-string/jumbo v7, "retry"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 47
    :cond_4
    sget-object v6, Lcom/laiwang/protocol/android/be;->b:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 48
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    sget-object v7, Lcom/laiwang/protocol/android/be;->b:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 50
    :cond_5
    sget-object v6, Lcom/laiwang/protocol/android/be;->c:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 51
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    sget-object v7, Lcom/laiwang/protocol/android/be;->c:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 53
    :cond_6
    sget-object v6, Lcom/laiwang/protocol/android/be;->d:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 54
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->NO_AUTH:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    sget-object v7, Lcom/laiwang/protocol/android/be;->d:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 56
    :cond_7
    sget-object v6, Lcom/laiwang/protocol/android/be;->e:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 57
    sget-object v6, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {v3, v6}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v6

    sget-object v7, Lcom/laiwang/protocol/android/be;->e:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/laiwang/protocol/attribute/Attribute;->set(Ljava/lang/Object;)V

    .line 60
    :cond_8
    return-object v3
.end method

.method public static b(Lcom/laiwang/protocol/android/bd;)Ljava/util/List;
    .locals 13
    .param p0, "message"    # Lcom/laiwang/protocol/android/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/laiwang/protocol/android/bd;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 106
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->payload()[B

    move-result-object v7

    .line 108
    .local v7, "payload":[B
    if-eqz v7, :cond_0

    array-length v10, v7

    sget v11, Lcom/laiwang/protocol/Config;->g:I

    if-gt v10, v11, :cond_2

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/laiwang/protocol/android/be;->a(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    return-object v6

    .line 112
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "id":Ljava/lang/String;
    invoke-static {p0}, Lcom/laiwang/protocol/android/be;->c(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;

    move-result-object v2

    .line 114
    .local v2, "first":Landroid/os/Bundle;
    array-length v10, v7

    sget v11, Lcom/laiwang/protocol/Config;->g:I

    div-int/2addr v10, v11

    add-int/lit8 v9, v10, 0x1

    .line 115
    .local v9, "total":I
    sget v10, Lcom/laiwang/protocol/Config;->g:I

    new-array v0, v10, [B

    .line 116
    .local v0, "buffer":[B
    sget v10, Lcom/laiwang/protocol/Config;->g:I

    invoke-static {v7, v12, v0, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    const-string/jumbo v10, "payload"

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 118
    const-string/jumbo v10, "bundle-id"

    invoke-virtual {v2, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v10, "bundle-seq"

    invoke-virtual {v2, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string/jumbo v10, "bundle-total"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_1

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v10, "bundle-id"

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v10, "bundle-seq"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    sget v10, Lcom/laiwang/protocol/Config;->g:I

    mul-int v8, v10, v3

    .line 127
    .local v8, "start":I
    sget v5, Lcom/laiwang/protocol/Config;->g:I

    .line 128
    .local v5, "len":I
    array-length v10, v7

    sub-int/2addr v10, v8

    sget v11, Lcom/laiwang/protocol/Config;->g:I

    if-ge v10, v11, :cond_3

    .line 129
    array-length v10, v7

    sub-int v5, v10, v8

    .line 131
    :cond_3
    new-array v0, v5, [B

    .line 132
    invoke-static {v7, v8, v0, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    const-string/jumbo v10, "payload"

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 134
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/laiwang/protocol/android/bd;)Landroid/os/Bundle;
    .locals 8
    .param p0, "message"    # Lcom/laiwang/protocol/android/bd;

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    instance-of v4, p0, Lcom/laiwang/protocol/core/Request;

    if-eqz v4, :cond_1

    .line 74
    const-string/jumbo v5, "url"

    move-object v4, p0

    check-cast v4, Lcom/laiwang/protocol/core/Request;

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Request;->startLine()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v1, "headBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/laiwang/protocol/android/bd;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 80
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v4, "mid"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    const-string/jumbo v4, "mid"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Lcom/laiwang/protocol/core/MessageID;->newMid()Lcom/laiwang/protocol/core/MessageID;

    move-result-object v7

    invoke-virtual {v7}, Lcom/laiwang/protocol/core/MessageID;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "header":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 76
    .end local v1    # "headBundle":Landroid/os/Bundle;
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    const-string/jumbo v5, "status"

    move-object v4, p0

    check-cast v4, Lcom/laiwang/protocol/core/Response;

    invoke-virtual {v4}, Lcom/laiwang/protocol/core/Response;->startLine()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    .restart local v1    # "headBundle":Landroid/os/Bundle;
    .restart local v3    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_2
    const-string/jumbo v4, "headers"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    const-string/jumbo v5, "retry"

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->RETRY:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    :cond_3
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 91
    sget-object v5, Lcom/laiwang/protocol/android/be;->b:Ljava/lang/String;

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->SLAVER:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    :cond_4
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    sget-object v5, Lcom/laiwang/protocol/android/be;->c:Ljava/lang/String;

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->REMOTE:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    :cond_5
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->NO_AUTH:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 97
    sget-object v5, Lcom/laiwang/protocol/android/be;->d:Ljava/lang/String;

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->NO_AUTH:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    :cond_6
    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->hasAttr(Lcom/laiwang/protocol/attribute/AttributeKey;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 100
    sget-object v5, Lcom/laiwang/protocol/android/be;->e:Ljava/lang/String;

    sget-object v4, Lcom/laiwang/protocol/attribute/Attributes;->NO_ACK:Lcom/laiwang/protocol/attribute/AttributeKey;

    invoke-virtual {p0, v4}, Lcom/laiwang/protocol/android/bd;->attr(Lcom/laiwang/protocol/attribute/AttributeKey;)Lcom/laiwang/protocol/attribute/Attribute;

    move-result-object v4

    invoke-interface {v4}, Lcom/laiwang/protocol/attribute/Attribute;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    :cond_7
    return-object v0
.end method
