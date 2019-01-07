.class public final Luh;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "bmp"

    aput-object v1, v0, v2

    const-string/jumbo v1, "png"

    aput-object v1, v0, v3

    const-string/jumbo v1, "jpg"

    aput-object v1, v0, v4

    const-string/jumbo v1, "jpeg"

    aput-object v1, v0, v5

    const-string/jumbo v1, "webp"

    aput-object v1, v0, v6

    sput-object v0, Luh;->a:[Ljava/lang/String;

    .line 20
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "png"

    aput-object v1, v0, v2

    const-string/jumbo v1, "jpg"

    aput-object v1, v0, v3

    const-string/jumbo v1, "gif"

    aput-object v1, v0, v4

    const-string/jumbo v1, "jpeg"

    aput-object v1, v0, v5

    sput-object v0, Luh;->b:[Ljava/lang/String;

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "tga"

    aput-object v1, v0, v2

    sput-object v0, Luh;->c:[Ljava/lang/String;

    .line 25
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "mp4"

    aput-object v1, v0, v2

    const-string/jumbo v1, "avi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "mkv"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mov"

    aput-object v1, v0, v5

    sput-object v0, Luh;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "extension":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 71
    .local v1, "lastDot":I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 72
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 75
    .end local v1    # "lastDot":I
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Luh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Luh;->a:[Ljava/lang/String;

    invoke-static {p1, v0}, Luh;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    const-string/jumbo p1, "webp"

    .line 94
    .end local p1    # "extension":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 88
    .restart local p1    # "extension":Ljava/lang/String;
    :cond_2
    sget-object v0, Luh;->c:[Ljava/lang/String;

    invoke-static {p1, v0}, Luh;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string/jumbo p1, "jpg"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 37
    array-length v4, p1

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 1053
    .local v0, "matchType":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 38
    :goto_1
    if-eqz v2, :cond_2

    .line 39
    const/4 v1, 0x1

    .line 42
    .end local v0    # "matchType":Ljava/lang/String;
    :cond_0
    return v1

    .line 1056
    .restart local v0    # "matchType":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "\\*"

    const-string/jumbo v5, "\\.\\*"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1058
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1059
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_1

    .line 37
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Luh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    const-string/jumbo v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "index":I
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 136
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "extension":Ljava/lang/String;
    sget-object v2, Luh;->d:[Ljava/lang/String;

    invoke-static {v0, v2}, Luh;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0}, Luh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Luh;->b:[Ljava/lang/String;

    invoke-static {p1, v0}, Luh;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
