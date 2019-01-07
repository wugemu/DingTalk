.class public final Lanet/channel/request/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/request/Request$a;,
        Lanet/channel/request/Request$Method;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/net/URL;

.field public c:Lanet/channel/request/Request$Method;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public final k:Lanet/channel/statist/RequestStatistic;

.field private l:Ljava/util/Map;
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

.field private m:Ljava/util/Map;
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

.field private n:Ljava/lang/String;

.field private o:Lanet/channel/request/BodyEntry;

.field private p:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lanet/channel/request/Request$a;)V
    .locals 3
    .param p1, "builder"    # Lanet/channel/request/Request$a;

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lanet/channel/request/Request$Method;->GET:Lanet/channel/request/Request$Method;

    iput-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    .line 51
    iput-boolean v1, p0, Lanet/channel/request/Request;->e:Z

    .line 52
    iput-boolean v1, p0, Lanet/channel/request/Request;->f:Z

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lanet/channel/request/Request;->h:I

    .line 56
    iput v2, p0, Lanet/channel/request/Request;->i:I

    .line 57
    iput v2, p0, Lanet/channel/request/Request;->j:I

    .line 1210
    iget-object v0, p1, Lanet/channel/request/Request$a;->b:Lanet/channel/request/Request$Method;

    .line 61
    iput-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    .line 2210
    iget-object v0, p1, Lanet/channel/request/Request$a;->c:Ljava/util/Map;

    .line 62
    iput-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    .line 3210
    iget-object v0, p1, Lanet/channel/request/Request$a;->d:Ljava/util/Map;

    .line 63
    iput-object v0, p0, Lanet/channel/request/Request;->m:Ljava/util/Map;

    .line 4210
    iget-object v0, p1, Lanet/channel/request/Request$a;->f:Lanet/channel/request/BodyEntry;

    .line 64
    iput-object v0, p0, Lanet/channel/request/Request;->o:Lanet/channel/request/BodyEntry;

    .line 5210
    iget-object v0, p1, Lanet/channel/request/Request$a;->e:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lanet/channel/request/Request;->n:Ljava/lang/String;

    .line 6210
    iget-boolean v0, p1, Lanet/channel/request/Request$a;->g:Z

    .line 66
    iput-boolean v0, p0, Lanet/channel/request/Request;->e:Z

    .line 7210
    iget v0, p1, Lanet/channel/request/Request$a;->h:I

    .line 67
    iput v0, p0, Lanet/channel/request/Request;->h:I

    .line 8210
    iget-boolean v0, p1, Lanet/channel/request/Request$a;->i:Z

    .line 68
    iput-boolean v0, p0, Lanet/channel/request/Request;->f:Z

    .line 9210
    iget-object v0, p1, Lanet/channel/request/Request$a;->a:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 10210
    iget-object v0, p1, Lanet/channel/request/Request$a;->j:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lanet/channel/request/Request;->p:Ljava/lang/String;

    .line 11210
    iget-object v0, p1, Lanet/channel/request/Request$a;->k:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lanet/channel/request/Request;->g:Ljava/lang/String;

    .line 12210
    iget v0, p1, Lanet/channel/request/Request$a;->l:I

    .line 72
    iput v0, p0, Lanet/channel/request/Request;->i:I

    .line 13210
    iget v0, p1, Lanet/channel/request/Request$a;->m:I

    .line 73
    iput v0, p0, Lanet/channel/request/Request;->j:I

    .line 14210
    iget-object v0, p1, Lanet/channel/request/Request$a;->n:Lanet/channel/statist/RequestStatistic;

    .line 74
    if-eqz v0, :cond_0

    .line 15210
    iget-object v0, p1, Lanet/channel/request/Request$a;->n:Lanet/channel/statist/RequestStatistic;

    .line 74
    :goto_0
    iput-object v0, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    .line 75
    invoke-direct {p0}, Lanet/channel/request/Request;->f()Ljava/lang/String;

    .line 76
    return-void

    .line 74
    :cond_0
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/request/Request;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lanet/channel/request/Request$a;B)V
    .locals 0
    .param p1, "x0"    # Lanet/channel/request/Request$a;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$a;)V

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lanet/channel/request/Request;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/Request;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "UTF-8"

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v4, 0x26

    .line 188
    iget-object v2, p0, Lanet/channel/request/Request;->m:Ljava/util/Map;

    invoke-direct {p0}, Lanet/channel/request/Request;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lla;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "paramString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    sget-object v3, Lanet/channel/request/Request$Method;->GET:Lanet/channel/request/Request$Method;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lanet/channel/request/Request;->c:Lanet/channel/request/Request$Method;

    sget-object v3, Lanet/channel/request/Request$Method;->POST:Lanet/channel/request/Request$Method;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lanet/channel/request/Request;->o:Lanet/channel/request/BodyEntry;

    if-eqz v2, :cond_4

    .line 191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 193
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 207
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    iget-object v2, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    return-object v2

    .line 194
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v2, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    iget-object v3, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    .line 195
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_0
    new-instance v2, Lanet/channel/request/ByteArrayEntry;

    invoke-direct {p0}, Lanet/channel/request/Request;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    iput-object v2, p0, Lanet/channel/request/Request;->o:Lanet/channel/request/BodyEntry;

    .line 202
    invoke-virtual {p0}, Lanet/channel/request/Request;->c()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "application/x-www-form-urlencoded; charset="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lanet/channel/request/Request;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)I
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "cnt":I
    iget-object v1, p0, Lanet/channel/request/Request;->o:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lanet/channel/request/Request;->o:Lanet/channel/request/BodyEntry;

    invoke-interface {v1, p1}, Lanet/channel/request/BodyEntry;->writeTo(Ljava/io/OutputStream;)I

    move-result v0

    .line 156
    :cond_0
    return v0
.end method

.method public final a()Ljava/net/URL;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lanet/channel/request/Request;->b:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/request/Request;->b:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    iget-object v0, p0, Lanet/channel/request/Request;->b:Ljava/net/URL;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 93
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 94
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ":"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lla;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "newHost":Ljava/lang/String;
    iget-object v1, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lanet/channel/request/Request;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lanet/channel/request/Request;->k:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v1, p1, p2}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 98
    .end local v0    # "newHost":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    .line 136
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 112
    iget-object v1, p0, Lanet/channel/request/Request;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 113
    iget-object v1, p0, Lanet/channel/request/Request;->a:Ljava/lang/String;

    invoke-static {v1}, Lla;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "urlElements":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 115
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lanet/channel/request/Request;->d:Ljava/lang/String;

    .line 118
    .end local v0    # "urlElements":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lanet/channel/request/Request;->d:Ljava/lang/String;

    return-object v1
.end method

.method public final c()Ljava/util/Map;
    .locals 1
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
    .line 126
    iget-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    .line 129
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final d()[B
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 160
    iget-object v1, p0, Lanet/channel/request/Request;->o:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 163
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lanet/channel/request/Request;->a(Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 168
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
