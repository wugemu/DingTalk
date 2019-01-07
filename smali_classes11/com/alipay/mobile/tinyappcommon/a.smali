.class public final Lcom/alipay/mobile/tinyappcommon/a;
.super Ljava/lang/Object;
.source "UrlFixer.java"


# static fields
.field static a:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/UrlFixer$1;

    invoke-direct {v0}, Lcom/alipay/mobile/tinyappcommon/UrlFixer$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/a;->a:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "%(?![0-9A-Fa-f]{2})"

    const-string/jumbo v7, "%25"

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 23
    .local v1, "c":C
    sget-object v6, Lcom/alipay/mobile/tinyappcommon/a;->a:Ljava/util/BitSet;

    invoke-virtual {v6, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "tmp":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 30
    :catch_0
    move-exception v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 34
    .end local v1    # "c":C
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "#"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 35
    .local v4, "p":I
    :cond_2
    :goto_2
    if-ltz v4, :cond_3

    .line 36
    const-string/jumbo v6, "#"

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 37
    if-lez v4, :cond_2

    .line 38
    add-int/lit8 v6, v4, 0x1

    const-string/jumbo v7, "%23"

    invoke-virtual {v0, v4, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 41
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
