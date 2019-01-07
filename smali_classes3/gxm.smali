.class public final Lgxm;
.super Ljava/lang/Object;
.source "JSONReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lgxr;

.field private b:Ljava/io/Reader;


# direct methods
.method private constructor <init>(Lgxr;)V
    .locals 0
    .param p1, "parser"    # Lgxr;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lgxm;->a:Lgxr;

    .line 58
    return-void
.end method

.method private constructor <init>(Lgxt;)V
    .locals 1
    .param p1, "lexer"    # Lgxt;

    .prologue
    .line 53
    new-instance v0, Lgxr;

    invoke-direct {v0, p1}, Lgxr;-><init>(Lgxt;)V

    invoke-direct {p0, v0}, Lgxm;-><init>(Lgxr;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 29
    new-instance v0, Lgxt;

    invoke-static {p1}, Lgxm;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgxt;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lgxm;-><init>(Lgxt;)V

    .line 30
    iput-object p1, p0, Lgxm;->b:Ljava/io/Reader;

    .line 31
    return-void
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 6
    .param p0, "reader"    # Ljava/io/Reader;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x800

    :try_start_0
    new-array v1, v4, [C

    .line 39
    .local v1, "chars":[C
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x800

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 40
    .local v3, "len":I
    if-ltz v3, :cond_0

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v1    # "chars":[C
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 46
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "read string from reader error"

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 49
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v1    # "chars":[C
    .restart local v3    # "len":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public final close()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 166
    iget-object v1, p0, Lgxm;->a:Lgxr;

    iget-object v1, v1, Lgxr;->e:Lgxt;

    invoke-virtual {v1}, Lgxt;->b()V

    .line 167
    iget-object v1, p0, Lgxm;->b:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 169
    :try_start_0
    iget-object v1, p0, Lgxm;->b:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "closed reader error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
