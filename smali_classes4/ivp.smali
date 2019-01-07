.class public final Livp;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "CharsetProvider.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Ljava/nio/charset/Charset;

.field private e:Ljava/nio/charset/Charset;

.field private f:Ljava/nio/charset/Charset;

.field private g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "UNICODE-1-1-UTF-7"

    aput-object v1, v0, v2

    const-string/jumbo v1, "CSUNICODE11UTF7"

    aput-object v1, v0, v3

    const-string/jumbo v1, "X-RFC2152"

    aput-object v1, v0, v4

    const-string/jumbo v1, "X-RFC-2152"

    aput-object v1, v0, v5

    sput-object v0, Livp;->a:[Ljava/lang/String;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "X-RFC2152-OPTIONAL"

    aput-object v1, v0, v2

    const-string/jumbo v1, "X-RFC-2152-OPTIONAL"

    aput-object v1, v0, v3

    sput-object v0, Livp;->b:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "X-IMAP-MODIFIED-UTF-7"

    aput-object v1, v0, v2

    const-string/jumbo v1, "X-IMAP4-MODIFIED-UTF7"

    aput-object v1, v0, v3

    const-string/jumbo v1, "X-IMAP4-MODIFIED-UTF-7"

    aput-object v1, v0, v4

    const-string/jumbo v1, "X-RFC3501"

    aput-object v1, v0, v5

    const-string/jumbo v1, "X-RFC-3501"

    aput-object v1, v0, v6

    sput-object v0, Livp;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    .line 54
    new-instance v0, Livr;

    const-string/jumbo v1, "UTF-7"

    sget-object v2, Livp;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Livr;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    iput-object v0, p0, Livp;->d:Ljava/nio/charset/Charset;

    .line 55
    new-instance v0, Livr;

    const-string/jumbo v1, "X-UTF-7-OPTIONAL"

    sget-object v2, Livp;->b:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Livr;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    iput-object v0, p0, Livp;->e:Ljava/nio/charset/Charset;

    .line 56
    new-instance v0, Livq;

    const-string/jumbo v1, "X-MODIFIED-UTF-7"

    sget-object v2, Livp;->c:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Livq;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Livp;->f:Ljava/nio/charset/Charset;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Livp;->d:Ljava/nio/charset/Charset;

    aput-object v1, v0, v3

    iget-object v1, p0, Livp;->f:Ljava/nio/charset/Charset;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Livp;->e:Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Livp;->g:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public final charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3
    .param p1, "charsetName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v2, p0, Livp;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 72
    .local v0, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v2, p0, Livp;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 77
    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 80
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final charsets()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Livp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
