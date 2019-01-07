.class public final Liyp;
.super Ljava/lang/Object;
.source "MessageWriter.java"


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field b:Ljava/io/DataOutputStream;

.field c:Lizi;

.field d:Lize;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Liyp;->a:Ljava/io/ByteArrayOutputStream;

    .line 26
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Liyp;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Liyp;->b:Ljava/io/DataOutputStream;

    .line 27
    new-instance v0, Lizi;

    iget-object v1, p0, Liyp;->b:Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Lizi;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Liyp;->c:Lizi;

    .line 28
    new-instance v0, Lize;

    iget-object v1, p0, Liyp;->c:Lizi;

    invoke-direct {v0, v1}, Lize;-><init>(Lizf;)V

    iput-object v0, p0, Liyp;->d:Lize;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 117
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_0

    .line 118
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p2, [B

    .end local p2    # "object":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {v3, p2}, Lize;->a([B)Lizg;

    .line 130
    :goto_0
    return-void

    .line 122
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 123
    .local v2, "len":I
    iget-object v3, p0, Liyp;->d:Lize;

    invoke-virtual {v3, v2}, Lize;->c(I)Lizg;

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 126
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "arrayItem":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Liyp;->a(Ljava/lang/Object;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "arrayItem":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Liyp;->d:Lize;

    .line 2184
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lizd;->b(Z)Lizg;

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .param p1, "object"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    iget-object v2, p0, Liyp;->d:Lize;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lize;->d(I)Lizg;

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "o":Ljava/lang/Object;
    move-object v0, v1

    .line 136
    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    .local v0, "kv":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Liyp;->a(Ljava/lang/Object;)V

    .line 138
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Liyp;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    .end local v0    # "kv":Ljava/util/Map$Entry;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Liyp;->d:Lize;

    .line 2190
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lizd;->c(Z)Lizg;

    .line 141
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Liyp;->c:Lizi;

    invoke-virtual {v0}, Lizi;->close()V

    .line 146
    iget-object v0, p0, Liyp;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 63
    if-nez p1, :cond_0

    .line 64
    iget-object v3, p0, Liyp;->d:Lize;

    invoke-virtual {v3}, Lize;->a()Lizg;

    .line 1043
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 68
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Liyn;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 70
    .local v1, "hasMarshal":Z
    if-eqz v1, :cond_6

    .line 1037
    invoke-static {v0}, Lizb;->a(Ljava/lang/Class;)Lizb$a;

    move-result-object v3

    .line 1038
    iget-object v3, v3, Lizb$a;->b:Ljava/util/List;

    .line 1040
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1041
    :cond_1
    iget-object v3, p0, Liyp;->d:Lize;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lize;->c(I)Lizg;

    .line 1042
    iget-object v3, p0, Liyp;->d:Lize;

    .line 1184
    invoke-virtual {v3, v8}, Lizd;->b(Z)Lizg;

    goto :goto_0

    .line 1045
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liyz;

    .line 1047
    iget-object v6, v3, Liyz;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1048
    if-eqz v6, :cond_3

    .line 1050
    new-instance v7, Liza;

    iget v3, v3, Liyz;->b:I

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {v7, v3, v6}, Liza;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1051
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1054
    :cond_4
    iget-object v3, p0, Liyp;->d:Lize;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Lize;->d(I)Lizg;

    .line 1055
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liza;

    .line 1056
    iget-object v6, p0, Liyp;->d:Lize;

    iget-object v4, v3, Liza;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v6, v4}, Lize;->a(Ljava/lang/Short;)Lizg;

    .line 1057
    iget-object v3, v3, Liza;->b:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Liyp;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 1059
    :cond_5
    iget-object v3, p0, Liyp;->d:Lize;

    .line 1190
    invoke-virtual {v3, v8}, Lizd;->c(Z)Lizg;

    goto/16 :goto_0

    .line 75
    :cond_6
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_7

    .line 76
    check-cast p1, Ljava/util/Map;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Liyp;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 77
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_8

    .line 78
    check-cast p1, Ljava/util/List;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "values":[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Liyp;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 80
    .end local v2    # "values":[Ljava/lang/Object;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 81
    invoke-direct {p0, v0, p1}, Liyp;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 83
    :cond_9
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_a

    .line 84
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/String;)Lizg;

    goto/16 :goto_0

    .line 85
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_a
    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_b

    .line 86
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Integer;)Lizg;

    goto/16 :goto_0

    .line 87
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_b
    const-class v3, Ljava/lang/Short;

    if-ne v0, v3, :cond_c

    .line 88
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Short;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Short;)Lizg;

    goto/16 :goto_0

    .line 89
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_c
    const-class v3, Ljava/util/Date;

    if-ne v0, v3, :cond_d

    .line 95
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lize;->a(J)Lizg;

    goto/16 :goto_0

    .line 97
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_e

    .line 98
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Long;)Lizg;

    goto/16 :goto_0

    .line 99
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_e
    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_f

    .line 100
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Boolean;)Lizg;

    goto/16 :goto_0

    .line 101
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_f
    const-class v3, Ljava/lang/Float;

    if-ne v0, v3, :cond_10

    .line 102
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Float;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Float;)Lizg;

    goto/16 :goto_0

    .line 103
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_10
    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_11

    .line 104
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Double;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Double;)Lizg;

    goto/16 :goto_0

    .line 105
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_11
    const-class v3, Ljava/lang/Byte;

    if-ne v0, v3, :cond_12

    .line 106
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lize;->a(Ljava/lang/Byte;)Lizg;

    goto/16 :goto_0

    .line 107
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 108
    iget-object v3, p0, Liyp;->d:Lize;

    check-cast p1, Lizc;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {p1}, Lizc;->valueOf()I

    move-result v4

    invoke-virtual {v3, v4}, Lize;->a(I)Lizg;

    goto/16 :goto_0

    .line 110
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_13
    new-instance v3, Lcom/laiwang/idl/msgpacklite/MessageException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "unknown objectype:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/laiwang/idl/msgpacklite/MessageException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
