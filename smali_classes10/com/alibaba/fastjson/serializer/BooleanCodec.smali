.class public final Lcom/alibaba/fastjson/serializer/BooleanCodec;
.super Ljava/lang/Object;
.source "BooleanCodec.java"

# interfaces
.implements Lgyk;
.implements Lgys;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/BooleanCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public final deserialze(Lgxr;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "parser"    # Lgxr;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgxr;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x10

    .line 60
    iget-object v2, p1, Lgxr;->e:Lgxt;

    .line 63
    .local v2, "lexer":Lgxt;
    invoke-virtual {v2}, Lgxt;->a()I

    move-result v3

    .line 64
    .local v3, "token":I
    const/4 v5, 0x6

    if-ne v3, v5, :cond_1

    .line 65
    invoke-virtual {v2, v6}, Lgxt;->a(I)V

    .line 66
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 68
    invoke-virtual {v2, v6}, Lgxt;->a(I)V

    .line 69
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 70
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 71
    invoke-virtual {v2}, Lgxt;->i()I

    move-result v1

    .line 72
    .local v1, "intValue":I
    invoke-virtual {v2, v6}, Lgxt;->a(I)V

    .line 74
    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 75
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 77
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0

    .line 2362
    .end local v0    # "boolObj":Ljava/lang/Boolean;
    .end local v1    # "intValue":I
    :cond_4
    invoke-virtual {p1, v0}, Lgxr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 82
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 86
    invoke-static {v4}, Lgzd;->m(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0    # "boolObj":Ljava/lang/Boolean;
    goto :goto_0
.end method

.method public final write(Lgyq;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "serializer"    # Lgyq;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v0, p1, Lgyq;->b:Lgyy;

    .local v0, "out":Lgyy;
    move-object v1, p2

    .line 41
    check-cast v1, Ljava/lang/Boolean;

    .line 42
    .local v1, "value":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 43
    iget v2, v0, Lgyy;->c:I

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 44
    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 1451
    :cond_0
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 52
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Lgyy;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
