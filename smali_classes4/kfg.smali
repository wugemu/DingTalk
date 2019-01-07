.class public final Lkfg;
.super Ljava/nio/charset/Charset;
.source "UnknownCharset.java"


# static fields
.field private static a:Ljava/nio/charset/Charset;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "void"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static a()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lkfg;->a:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lkfg;

    invoke-direct {v0}, Lkfg;-><init>()V

    sput-object v0, Lkfg;->a:Ljava/nio/charset/Charset;

    .line 76
    :cond_0
    sget-object v0, Lkfg;->a:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/nio/charset/Charset;)Z
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is no real Charset but a flag you should test for!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is no real Charset but a flag you should test for!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
