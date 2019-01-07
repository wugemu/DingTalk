.class public abstract Lantlr/CharScanner;
.super Ljava/lang/Object;
.source "CharScanner.java"

# interfaces
.implements Lnv;


# instance fields
.field protected a:Lng;

.field protected b:Z

.field protected c:Ljava/lang/Class;

.field protected d:Z

.field protected e:Z

.field protected f:Ljava/util/Hashtable;

.field protected g:I

.field protected h:Lns;

.field protected i:Lnf;

.field protected j:Lnp;

.field protected k:Z

.field protected l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-boolean v0, p0, Lantlr/CharScanner;->b:Z

    .line 23
    iput-boolean v0, p0, Lantlr/CharScanner;->d:Z

    .line 24
    iput-boolean v0, p0, Lantlr/CharScanner;->e:Z

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lantlr/CharScanner;->g:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lantlr/CharScanner;->h:Lns;

    .line 43
    iput-boolean v1, p0, Lantlr/CharScanner;->k:Z

    .line 46
    iput v1, p0, Lantlr/CharScanner;->l:I

    .line 49
    new-instance v0, Lng;

    invoke-direct {v0}, Lng;-><init>()V

    iput-object v0, p0, Lantlr/CharScanner;->a:Lng;

    .line 50
    new-instance v0, Lnf;

    invoke-direct {v0, p0}, Lnf;-><init>(Lantlr/CharScanner;)V

    iput-object v0, p0, Lantlr/CharScanner;->i:Lnf;

    .line 51
    const-string/jumbo v0, "antlr.CommonToken"

    .line 1337
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lantlr/CharScanner;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :goto_0
    return-void

    .line 1340
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "ClassNotFoundException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/CharScanner;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lnp;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lantlr/CharScanner;-><init>()V

    .line 61
    iput-object p1, p0, Lantlr/CharScanner;->j:Lnp;

    .line 62
    return-void
.end method

.method public static b(C)C
    .locals 1

    .prologue
    .line 371
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 273
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "CharScanner; panic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 275
    return-void
.end method

.method private c(C)V
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lantlr/CharScanner;->b:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lantlr/CharScanner;->a:Lng;

    invoke-virtual {v0, p1}, Lng;->a(C)V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lantlr/CharScanner;->d:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget-object v0, v0, Lnp;->e:Lnn;

    invoke-virtual {v0, p1}, Lnn;->b(I)C

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget-object v0, v0, Lnp;->e:Lnn;

    invoke-virtual {v0, p1}, Lnn;->b(I)C

    move-result v0

    .line 3371
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_0
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0, v2}, Lantlr/CharScanner;->a(I)C

    move-result v0

    .line 83
    iget-boolean v1, p0, Lantlr/CharScanner;->d:Z

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, v0}, Lantlr/CharScanner;->c(C)V

    .line 91
    :goto_0
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 3124
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget v0, v0, Lnp;->a:I

    .line 2243
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lantlr/CharScanner;->g:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lantlr/CharScanner;->g:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 3128
    iget-object v1, p0, Lantlr/CharScanner;->j:Lnp;

    iput v0, v1, Lnp;->a:I

    .line 98
    :goto_1
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget-object v0, v0, Lnp;->e:Lnn;

    invoke-virtual {v0}, Lnn;->a()V

    .line 99
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lantlr/CharScanner;->j:Lnp;

    iget-object v1, v1, Lnp;->e:Lnn;

    invoke-virtual {v1, v2}, Lnn;->b(I)C

    move-result v1

    invoke-direct {p0, v1}, Lantlr/CharScanner;->c(C)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget v1, v0, Lnp;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnp;->a:I

    goto :goto_1
.end method

.method public final a(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->a(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    .line 197
    new-instance v0, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->a(I)C

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p0}, Lantlr/MismatchedCharException;-><init>(CCZLantlr/CharScanner;)V

    throw v0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lantlr/CharScanner;->a()V

    .line 200
    return-void
.end method

.method public final a(CC)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-virtual {p0, v1}, Lantlr/CharScanner;->a(I)C

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->a(I)C

    move-result v0

    if-le v0, p2, :cond_1

    :cond_0
    new-instance v0, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v1}, Lantlr/CharScanner;->a(I)C

    move-result v1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lantlr/MismatchedCharException;-><init>(CCCZLantlr/CharScanner;)V

    throw v0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lantlr/CharScanner;->a()V

    .line 231
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/MismatchedCharException;,
            Lantlr/CharStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 213
    :goto_0
    if-ge v0, v2, :cond_1

    .line 214
    invoke-virtual {p0, v5}, Lantlr/CharScanner;->a(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    .line 215
    new-instance v2, Lantlr/MismatchedCharException;

    invoke-virtual {p0, v5}, Lantlr/CharScanner;->a(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {v2, v3, v0, v1, p0}, Lantlr/MismatchedCharException;-><init>(CCZLantlr/CharScanner;)V

    throw v2

    .line 217
    :cond_0
    invoke-virtual {p0}, Lantlr/CharScanner;->a()V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lantlr/CharScanner;->d:Z

    .line 316
    return-void
.end method

.method protected final b(I)Lns;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lantlr/CharScanner;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lns;

    .line 4072
    iput p1, v0, Lns;->d:I

    .line 177
    iget-object v1, p0, Lantlr/CharScanner;->j:Lnp;

    iget v1, v1, Lnp;->c:I

    invoke-virtual {v0, v1}, Lns;->b(I)V

    .line 178
    iget-object v1, p0, Lantlr/CharScanner;->j:Lnp;

    iget v1, v1, Lnp;->d:I

    invoke-virtual {v0, v1}, Lns;->a(I)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "can\'t instantiate token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CharScanner;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/CharScanner;->b(Ljava/lang/String;)V

    .line 188
    :goto_1
    sget-object v0, Lns;->e:Lns;

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "Token class is not accessible"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lantlr/CharScanner;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lantlr/CharScanner;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lantlr/CharScanner;->k:Z

    .line 320
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lantlr/CharScanner;->e:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget v0, v0, Lnp;->a:I

    return v0
.end method

.method public final c(I)I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 347
    iget-object v0, p0, Lantlr/CharScanner;->i:Lnf;

    iget-object v1, p0, Lantlr/CharScanner;->a:Lng;

    invoke-virtual {v1}, Lng;->a()[C

    move-result-object v1

    iget-object v2, p0, Lantlr/CharScanner;->a:Lng;

    invoke-virtual {v2}, Lng;->b()I

    move-result v2

    .line 4098
    iput-object v1, v0, Lnf;->b:[C

    .line 4099
    iput v2, v0, Lnf;->c:I

    .line 4100
    const/4 v1, 0x0

    iput-object v1, v0, Lnf;->a:Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lantlr/CharScanner;->f:Ljava/util/Hashtable;

    iget-object v1, p0, Lantlr/CharScanner;->i:Lnf;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 352
    :cond_0
    return p1
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lantlr/CharScanner;->k:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget v0, v0, Lnp;->b:I

    return v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 234
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget v1, v0, Lnp;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lnp;->b:I

    .line 235
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    const/4 v1, 0x1

    iput v1, v0, Lnp;->a:I

    .line 236
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 303
    iget-object v0, p0, Lantlr/CharScanner;->a:Lng;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lng;->a(I)V

    .line 304
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget-object v1, p0, Lantlr/CharScanner;->j:Lnp;

    iget v1, v1, Lnp;->a:I

    iput v1, v0, Lnp;->c:I

    .line 305
    iget-object v0, p0, Lantlr/CharScanner;->j:Lnp;

    iget-object v1, p0, Lantlr/CharScanner;->j:Lnp;

    iget v1, v1, Lnp;->b:I

    iput v1, v0, Lnp;->d:I

    .line 306
    return-void
.end method
