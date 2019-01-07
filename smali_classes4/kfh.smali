.class public final Lkfh;
.super Ljava/nio/charset/Charset;
.source "UnsupportedCharset.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkfh;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "unsupported"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v1, Lkfh;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 95
    .local v0, "ret":Ljava/nio/charset/Charset;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lkfh;

    .end local v0    # "ret":Ljava/nio/charset/Charset;
    invoke-direct {v0}, Lkfh;-><init>()V

    .line 97
    .restart local v0    # "ret":Ljava/nio/charset/Charset;
    sget-object v1, Lkfh;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/nio/charset/Charset;)Z
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public final displayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public final displayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public final newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
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
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This is no real Charset but a flag you should test for!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
