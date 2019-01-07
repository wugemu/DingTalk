.class public Llcj;
.super Ljava/lang/Object;
.source "Html5Entities.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Llcj;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Llcj;->a:Ljava/util/Map;

    .line 16
    const-string/jumbo v0, "^&#[Xx]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llcj;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v5, Llcj;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 22
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/16 v0, 0xa

    .line 25
    .local v0, "base":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 26
    .local v1, "codePoint":I
    if-nez v1, :cond_2

    .line 27
    const-string/jumbo v4, "\ufffd"

    .line 39
    .end local v0    # "base":I
    .end local v1    # "codePoint":I
    :cond_0
    :goto_1
    return-object v4

    .line 23
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 29
    .restart local v0    # "base":I
    .restart local v1    # "codePoint":I
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 31
    .end local v1    # "codePoint":I
    :catch_0
    move-exception v5

    const-string/jumbo v4, "\ufffd"

    goto :goto_1

    .line 34
    .end local v0    # "base":I
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "name":Ljava/lang/String;
    sget-object v5, Llcj;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 36
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v4, p0

    .line 39
    goto :goto_1
.end method

.method private static a()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v3, "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v9, Llcj;

    const-string/jumbo v10, "/org/commonmark/internal/util/entities.properties"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 47
    .local v7, "stream":Ljava/io/InputStream;
    const-string/jumbo v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 48
    .local v1, "charset":Ljava/nio/charset/Charset;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 50
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 51
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 54
    const-string/jumbo v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 55
    .local v4, "equal":I
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v3, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 48
    .end local v4    # "equal":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :catchall_0
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_1
    if-eqz v10, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 60
    .local v2, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Failed reading data for HTML named character references"

    invoke-direct {v9, v10, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 59
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 62
    const-string/jumbo v9, "NewLine"

    const-string/jumbo v10, "\n"

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v3

    .line 59
    .end local v6    # "line":Ljava/lang/String;
    :catch_2
    move-exception v11

    :try_start_6
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v9

    goto :goto_1
.end method
