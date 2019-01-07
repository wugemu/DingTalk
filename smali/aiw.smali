.class public final Laiw;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/Locale;

.field private static c:Ljava/text/RuleBasedCollator;

.field private static d:Ljava/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laiw;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-static {}, Laiw;->a()Ljava/text/RuleBasedCollator;

    move-result-object v5

    .line 1074
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v1, v2

    move v3, v2

    .line 1076
    :goto_0
    array-length v4, v6

    if-ge v1, v4, :cond_1

    .line 1077
    aget-char v7, v6, v1

    .line 1078
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1079
    add-int/lit8 v4, v3, 0x1

    aput-char v7, v6, v3

    move v3, v4

    .line 1076
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    :cond_1
    array-length v1, v6

    if-eq v3, v1, :cond_2

    .line 1084
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v6, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 66
    :cond_2
    invoke-virtual {v5, p0}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    .line 67
    .local v0, "key":Ljava/text/CollationKey;
    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lait;->a([BZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a()Ljava/text/RuleBasedCollator;
    .locals 4

    .prologue
    .line 55
    sget-object v1, Laiw;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1040
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1041
    sget-object v0, Laiw;->b:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    sput-object v2, Laiw;->b:Ljava/util/Locale;

    .line 1046
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 1047
    sput-object v0, Laiw;->c:Ljava/text/RuleBasedCollator;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 1048
    sget-object v0, Laiw;->c:Ljava/text/RuleBasedCollator;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 1050
    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    .line 1051
    sput-object v0, Laiw;->d:Ljava/text/RuleBasedCollator;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 57
    :cond_0
    sget-object v0, Laiw;->c:Ljava/text/RuleBasedCollator;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
