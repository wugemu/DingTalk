.class public final Lbrw;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/Object;

.field public static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "left"

    aput-object v1, v0, v5

    const-string/jumbo v1, "center"

    aput-object v1, v0, v3

    const-string/jumbo v1, "right"

    aput-object v1, v0, v4

    const-string/jumbo v1, "justify"

    aput-object v1, v0, v6

    sput-object v0, Lbrw;->a:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "ulist-0"

    aput-object v1, v0, v5

    const-string/jumbo v1, "olist-0"

    aput-object v1, v0, v3

    sput-object v0, Lbrw;->b:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "heading-1"

    aput-object v1, v0, v5

    const-string/jumbo v1, "heading-2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "heading-3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "heading-4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "paragraph"

    aput-object v1, v0, v7

    sput-object v0, Lbrw;->c:[Ljava/lang/String;

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "top"

    aput-object v1, v0, v5

    const-string/jumbo v1, "center"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bottom"

    aput-object v1, v0, v4

    sput-object v0, Lbrw;->d:[Ljava/lang/String;

    .line 68
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "left"

    aput-object v1, v0, v5

    const-string/jumbo v1, "center"

    aput-object v1, v0, v3

    const-string/jumbo v1, "right"

    aput-object v1, v0, v4

    sput-object v0, Lbrw;->e:[Ljava/lang/String;

    .line 72
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lbrw;->f:[Ljava/lang/Object;

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    aput-object v1, v0, v5

    const-string/jumbo v1, "top"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bottom"

    aput-object v1, v0, v4

    const-string/jumbo v1, "left"

    aput-object v1, v0, v6

    const-string/jumbo v1, "right"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "outline"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "inside"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "all"

    aput-object v2, v0, v1

    sput-object v0, Lbrw;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
