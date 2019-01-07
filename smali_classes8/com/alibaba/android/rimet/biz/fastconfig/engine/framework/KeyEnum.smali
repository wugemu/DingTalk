.class public final enum Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
.super Ljava/lang/Enum;
.source "KeyEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

.field public static final enum ORG:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

.field public static final enum OS:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

.field public static final enum OSVER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

.field public static final enum UID:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

.field public static final enum VER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    const-string/jumbo v1, "OS"

    const-string/jumbo v2, "os"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->OS:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    const-string/jumbo v1, "OSVER"

    const-string/jumbo v2, "osver"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->OSVER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    const-string/jumbo v1, "VER"

    const-string/jumbo v2, "ver"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->VER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    const-string/jumbo v1, "UID"

    const-string/jumbo v2, "uid"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->UID:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    const-string/jumbo v1, "ORG"

    const-string/jumbo v2, "org"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->ORG:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->OS:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->OSVER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->VER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->UID:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->ORG:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->name:Ljava/lang/String;

    .line 13
    return-void
.end method

.method private compareInt(II)I
    .locals 1
    .param p1, "local"    # I
    .param p2, "remote"    # I

    .prologue
    .line 108
    if-le p1, p2, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 112
    :cond_0
    if-ge p1, p2, :cond_1

    .line 113
    const/4 v0, -0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareIntArray([I[I)I
    .locals 6
    .param p1, "local"    # [I
    .param p2, "remote"    # [I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    array-length v1, p1

    .line 121
    .local v1, "ll":I
    array-length v3, p2

    .line 122
    .local v3, "rl":I
    move v2, v1

    .line 123
    .local v2, "min":I
    if-le v1, v3, :cond_0

    .line 124
    move v2, v3

    .line 127
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 128
    aget v4, p1, v0

    aget v5, p2, v0

    if-eq v4, v5, :cond_1

    .line 129
    aget v4, p1, v0

    aget v5, p2, v0

    invoke-direct {p0, v4, v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->compareInt(II)I

    move-result v4

    .line 141
    :goto_1
    return v4

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    if-ne v3, v1, :cond_3

    .line 134
    const/4 v4, 0x0

    goto :goto_1

    .line 137
    :cond_3
    if-ge v1, v3, :cond_4

    .line 138
    const/4 v4, -0x1

    goto :goto_1

    .line 141
    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private compareLong(JJ)I
    .locals 1
    .param p1, "local"    # J
    .param p3, "remote"    # J

    .prologue
    .line 96
    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    .line 100
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 101
    const/4 v0, -0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareNumber(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "localVal"    # Ljava/lang/String;
    .param p2, "remoteVal"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, -0x1

    .line 85
    invoke-static {p1, v6, v7}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 86
    .local v0, "local":J
    invoke-static {p2, v6, v7}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 89
    .local v2, "remote":J
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    cmp-long v4, v2, v6

    if-nez v4, :cond_1

    .line 90
    :cond_0
    const/4 v4, -0x2

    .line 92
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->compareLong(JJ)I

    move-result v4

    goto :goto_0
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "localVal"    # Ljava/lang/String;
    .param p2, "remoteVal"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 48
    .line 2018
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    const/4 v5, 0x0

    .line 80
    :cond_0
    :goto_0
    return v5

    .line 52
    :cond_1
    if-eqz p1, :cond_0

    .line 56
    if-nez p2, :cond_2

    .line 57
    const/4 v5, 0x1

    goto :goto_0

    .line 61
    :cond_2
    const-string/jumbo v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "local":[Ljava/lang/String;
    const-string/jumbo v7, "\\."

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "remote":[Ljava/lang/String;
    array-length v7, v1

    new-array v2, v7, [I

    .line 64
    .local v2, "localVer":[I
    array-length v7, v3

    new-array v4, v7, [I

    .line 66
    .local v4, "remoteVer":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v1

    if-ge v0, v7, :cond_4

    .line 67
    aget-object v7, v1, v0

    invoke-static {v7, v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v2, v0

    .line 68
    aget v7, v2, v0

    if-ne v7, v5, :cond_3

    move v5, v6

    .line 69
    goto :goto_0

    .line 66
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_4
    const/4 v0, 0x0

    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_6

    .line 74
    aget-object v7, v3, v0

    invoke-static {v7, v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v4, v0

    .line 75
    aget v7, v4, v0

    if-ne v7, v5, :cond_5

    move v5, v6

    .line 76
    goto :goto_0

    .line 73
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_6
    invoke-direct {p0, v2, v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->compareIntArray([I[I)I

    move-result v5

    goto :goto_0
.end method

.method public static getValidKey(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 20
    .line 1014
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 20
    if-eqz v2, :cond_1

    move-object v0, v1

    .line 30
    :cond_0
    :goto_0
    return-object v0

    .line 24
    :cond_1
    invoke-static {}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 25
    .local v0, "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    :cond_2
    move-object v0, v1

    .line 30
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    return-object v0
.end method


# virtual methods
.method public final compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "localVal"    # Ljava/lang/String;
    .param p2, "remoteVal"    # Ljava/lang/String;

    .prologue
    .line 34
    .line 1018
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    .line 38
    :cond_0
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->OSVER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->VER:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    if-ne p0, v0, :cond_2

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->UID:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->ORG:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    if-ne p0, v0, :cond_4

    .line 41
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->compareNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 43
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->name:Ljava/lang/String;

    return-object v0
.end method
