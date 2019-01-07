.class public final Llea;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "   "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "     "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "      "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "       "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "        "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "         "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "          "

    aput-object v2, v0, v1

    sput-object v0, Llea;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 4
    .param p0, "width"    # I

    .prologue
    .line 51
    if-gez p0, :cond_0

    .line 52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    const/16 v2, 0xb

    if-ge p0, v2, :cond_1

    .line 55
    sget-object v2, Llea;->a:[Ljava/lang/String;

    aget-object v2, v2, p0

    .line 60
    :goto_0
    return-object v2

    .line 57
    :cond_1
    new-array v1, p0, [C

    .line 58
    .local v1, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 59
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strings"    # Ljava/util/Collection;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1030
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1031
    const-string/jumbo v0, ""

    .line 1035
    :cond_0
    :goto_0
    return-object v0

    .line 1033
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1038
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1039
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1042
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "accum"    # Ljava/lang/StringBuilder;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "stripLeading"    # Z

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "lastWasWhite":Z
    const/4 v4, 0x0

    .line 128
    .local v4, "reachedNonWhite":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 130
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 132
    .local v0, "c":I
    invoke-static {v0}, Llea;->b(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    if-eqz p2, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-nez v2, :cond_1

    .line 135
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    const/4 v2, 0x1

    .line 130
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 140
    const/4 v2, 0x0

    .line 141
    const/4 v4, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "c":I
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v2

    .line 72
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Llea;->b(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "needle"    # Ljava/lang/String;
    .param p1, "haystack"    # [Ljava/lang/String;

    .prologue
    .line 147
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 148
    .local v1, "hay":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const/4 v4, 0x1

    .line 151
    .end local v1    # "hay":Ljava/lang/String;
    :goto_1
    return v4

    .line 147
    .restart local v1    # "hay":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "hay":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static b(I)Z
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 103
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
