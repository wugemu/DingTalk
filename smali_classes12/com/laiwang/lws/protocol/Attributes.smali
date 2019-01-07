.class public final Lcom/laiwang/lws/protocol/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/lws/protocol/Attributes$a;,
        Lcom/laiwang/lws/protocol/Attributes$b;,
        Lcom/laiwang/lws/protocol/Attributes$Name;
    }
.end annotation


# instance fields
.field final a:[Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/laiwang/lws/protocol/Attributes$Name;->values()[Lcom/laiwang/lws/protocol/Attributes$Name;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    .line 193
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, "len":I
    iget-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    .local v0, "arr$":[Ljava/util/List;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v7, v0, v3

    .line 108
    .local v7, "value":Ljava/util/List;
    if-eqz v7, :cond_0

    .line 109
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 110
    .local v6, "v":Ljava/lang/Object;
    check-cast v6, [B

    .end local v6    # "v":Ljava/lang/Object;
    move-object v1, v6

    check-cast v1, [B

    .line 111
    .local v1, "body":[B
    array-length v8, v1

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    .line 112
    goto :goto_1

    .line 107
    .end local v1    # "body":[B
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 114
    .end local v7    # "value":Ljava/util/List;
    :cond_1
    return v4
.end method

.method public final a(Lcom/laiwang/lws/protocol/Attributes$Name;)I
    .locals 10
    .param p1, "n"    # Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 1065
    iget-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    .line 1066
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1067
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1069
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 2022
    const-wide/16 v2, 0x0

    .line 2023
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 2024
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    mul-int/lit8 v4, v4, 0x8

    .line 2025
    aget-byte v5, v0, v1

    .line 2026
    shl-int/2addr v5, v4

    int-to-long v6, v5

    const-wide/16 v8, 0xff

    shl-long v4, v8, v4

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 2023
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1069
    :cond_2
    long-to-int v0, v2

    .line 61
    goto :goto_0
.end method

.method public final a(Lcom/laiwang/lws/protocol/Attributes$Name;I)V
    .locals 5
    .param p1, "n"    # Lcom/laiwang/lws/protocol/Attributes$Name;
    .param p2, "value"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 51
    sget-object v1, Lcom/laiwang/lws/protocol/Attributes$Name;->VIA:Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-virtual {v1, p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Ljab;->a(JI)[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    int-to-long v2, p2

    invoke-static {v2, v3, v4}, Ljab;->a(JI)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public final a(Lcom/laiwang/lws/protocol/Attributes$Name;Ljava/lang/String;)V
    .locals 1
    .param p1, "n"    # Lcom/laiwang/lws/protocol/Attributes$Name;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/laiwang/lws/protocol/Attributes;->a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V

    .line 83
    return-void
.end method

.method public final a(Lcom/laiwang/lws/protocol/Attributes$Name;[B)V
    .locals 3
    .param p1, "n"    # Lcom/laiwang/lws/protocol/Attributes$Name;
    .param p2, "value"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v2

    aput-object v0, v1, v2

    .line 103
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 161
    iget-object v6, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    aget-object v3, v6, v1

    .line 162
    .local v3, "list":Ljava/util/List;
    if-eqz v3, :cond_0

    .line 164
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 165
    .local v4, "o":Ljava/lang/Object;
    check-cast v4, [B

    .end local v4    # "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, [B

    .line 167
    .local v5, "value":[B
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$a;

    array-length v6, v5

    invoke-direct {v0, v1, v6}, Lcom/laiwang/lws/protocol/Attributes$a;-><init>(II)V

    .line 2218
    .local v0, "h":Lcom/laiwang/lws/protocol/Attributes$a;
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2219
    iget v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->a:I

    shl-int/lit8 v7, v7, 0xc

    iget v8, v0, Lcom/laiwang/lws/protocol/Attributes$a;->b:I

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2220
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 169
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 160
    .end local v0    # "h":Lcom/laiwang/lws/protocol/Attributes$a;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "value":[B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "list":Ljava/util/List;
    :cond_1
    return-void
.end method

.method public final a([BI)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "attrCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 137
    new-instance v0, Lcom/laiwang/lws/protocol/Attributes$a;

    invoke-direct {v0}, Lcom/laiwang/lws/protocol/Attributes$a;-><init>()V

    .line 138
    .local v0, "h":Lcom/laiwang/lws/protocol/Attributes$a;
    new-array v1, v8, [B

    .line 139
    .local v1, "hValue":[B
    invoke-static {p1, v4, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2211
    invoke-static {v1, v9, v8}, Ljab;->b([BII)S

    move-result v6

    .line 2213
    const v7, 0xf000

    and-int/2addr v7, v6

    shr-int/lit8 v7, v7, 0xc

    int-to-short v7, v7

    iput v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->a:I

    .line 2214
    and-int/lit16 v6, v6, 0xfff

    iput v6, v0, Lcom/laiwang/lws/protocol/Attributes$a;->b:I

    .line 142
    array-length v6, p1

    iget v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->b:I

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    if-ge v6, v7, :cond_1

    .line 157
    .end local v0    # "h":Lcom/laiwang/lws/protocol/Attributes$a;
    .end local v1    # "hValue":[B
    :cond_0
    return-void

    .line 144
    .restart local v0    # "h":Lcom/laiwang/lws/protocol/Attributes$a;
    .restart local v1    # "hValue":[B
    :cond_1
    iget v6, v0, Lcom/laiwang/lws/protocol/Attributes$a;->b:I

    new-array v5, v6, [B

    .line 145
    .local v5, "value":[B
    add-int/lit8 v6, v4, 0x2

    iget v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->b:I

    invoke-static {p1, v6, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget-object v6, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    iget v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->a:I

    aget-object v6, v6, v7

    if-nez v6, :cond_2

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v6, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    iget v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->a:I

    aput-object v3, v6, v7

    .line 153
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_1
    iget v6, v0, Lcom/laiwang/lws/protocol/Attributes$a;->b:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    .line 155
    array-length v6, p1

    sub-int/2addr v6, v4

    if-le v6, v8, :cond_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget-object v6, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    iget v7, v0, Lcom/laiwang/lws/protocol/Attributes$a;->a:I

    aget-object v6, v6, v7

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "count":I
    iget-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    .local v0, "arr$":[Ljava/util/List;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 120
    .local v4, "value":Ljava/util/List;
    if-eqz v4, :cond_0

    .line 121
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v1, v5

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "value":Ljava/util/List;
    :cond_1
    return v1
.end method

.method public final b(Lcom/laiwang/lws/protocol/Attributes$Name;)[B
    .locals 2
    .param p1, "n"    # Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    .line 2090
    iget-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 2091
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2092
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public final c(Lcom/laiwang/lws/protocol/Attributes$Name;)Z
    .locals 2
    .param p1, "n"    # Lcom/laiwang/lws/protocol/Attributes$Name;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laiwang/lws/protocol/Attributes;->a:[Ljava/util/List;

    invoke-virtual {p1}, Lcom/laiwang/lws/protocol/Attributes$Name;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
