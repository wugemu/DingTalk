.class public final Lva;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    const-string/jumbo v0, "((Re|Fw|Fwd|Aw|R\\u00E9f\\.)(\\[\\d+\\])?[\\u00A0 ]?: *)+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lva;->a:Ljava/util/regex/Pattern;

    .line 37
    const-string/jumbo v0, "\\[[-_a-z0-9]+\\] "

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lva;->b:Ljava/util/regex/Pattern;

    .line 144
    const-string/jumbo v0, "^(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]|\\s)+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lva;->c:Ljava/util/regex/Pattern;

    .line 703
    const-string/jumbo v0, "(?is:<img[^>]+src\\s*=\\s*[\'\"]?([a-z]+)\\:)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lva;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    .line 98
    :cond_0
    new-instance v1, Lvv;

    invoke-direct {v1}, Lvv;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lvv;->b([B)[B

    move-result-object v0

    .line 99
    .local v0, "decoded":[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/Object;
    .param p1, "seperator"    # C

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 78
    const/4 v2, 0x0

    .line 89
    :goto_0
    return-object v2

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 83
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 55
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 57
    .local v0, "element":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 62
    .end local v0    # "element":Ljava/lang/Object;
    :cond_0
    return v1

    .line 55
    .restart local v0    # "element":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p0, :cond_0

    .line 109
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 108
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v1, Lvv;

    invoke-direct {v1}, Lvv;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lvv;->d([B)[B

    move-result-object v0

    .line 109
    .local v0, "encoded":[B
    new-instance p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lva;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1187
    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1181
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_2

    .line 1183
    const/4 p0, 0x0

    goto :goto_0

    .line 1185
    :cond_2
    const-string/jumbo v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
