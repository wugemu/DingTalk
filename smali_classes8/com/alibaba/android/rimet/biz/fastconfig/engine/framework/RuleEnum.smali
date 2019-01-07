.class public final enum Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
.super Ljava/lang/Enum;
.source "RuleEnum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum EQ:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum GE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum GT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum HASH:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum LE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum LT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum PREFIX:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

.field public static final enum SUFFIX:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;


# instance fields
.field mathVal:Ljava/lang/String;

.field name:Ljava/lang/String;

.field shouldMatchNext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "GT"

    const-string/jumbo v2, "gt"

    const-string/jumbo v3, ">"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->GT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "EQ"

    const-string/jumbo v2, "eq"

    const-string/jumbo v3, "="

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->EQ:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "LT"

    const-string/jumbo v2, "lt"

    const-string/jumbo v3, "<"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->LT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "GE"

    const-string/jumbo v2, "ge"

    const-string/jumbo v3, ">="

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->GE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "LE"

    const-string/jumbo v2, "le"

    const-string/jumbo v3, "<="

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->LE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    .line 11
    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "HASH"

    const/4 v2, 0x5

    const-string/jumbo v3, "hash"

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->HASH:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "PREFIX"

    const/4 v2, 0x6

    const-string/jumbo v3, "prefix"

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->PREFIX:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    const-string/jumbo v1, "SUFFIX"

    const/4 v2, 0x7

    const-string/jumbo v3, "suffix"

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->SUFFIX:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->GT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->EQ:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->LT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->GE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->LE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->HASH:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->PREFIX:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->SUFFIX:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mathVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->name:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->mathVal:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->shouldMatchNext:Z

    .line 22
    return-void
.end method

.method public static convertToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 156
    invoke-static {p0, p1}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static convertToLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 151
    invoke-static {p0, p1, p2}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getHashMatchResult(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p0, "localVal"    # Ljava/lang/String;
    .param p1, "remoteVal"    # Ljava/lang/String;

    .prologue
    .line 124
    const-wide/16 v12, -0x1

    invoke-static {p0, v12, v13}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    .local v0, "castVal":J
    const-wide/16 v12, 0x1

    cmp-long v5, v0, v12

    if-gez v5, :cond_0

    .line 126
    const/4 v5, 0x0

    .line 146
    :goto_0
    return v5

    .line 129
    :cond_0
    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "hashValues":[Ljava/lang/String;
    array-length v5, v4

    const/4 v12, 0x3

    if-ge v5, v12, :cond_1

    .line 131
    const/4 v5, 0x0

    goto :goto_0

    .line 134
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-wide/16 v12, -0x1

    invoke-static {v5, v12, v13}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 135
    .local v6, "mode":J
    const-wide/16 v12, 0x1

    cmp-long v5, v6, v12

    if-gez v5, :cond_2

    .line 136
    const/4 v5, 0x0

    goto :goto_0

    .line 139
    :cond_2
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-wide/16 v12, -0x1

    invoke-static {v5, v12, v13}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 140
    .local v2, "from":J
    const/4 v5, 0x2

    aget-object v5, v4, v5

    const-wide/16 v12, -0x1

    invoke-static {v5, v12, v13}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->convertToLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 141
    .local v8, "to":J
    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-ltz v5, :cond_3

    cmp-long v5, v8, v6

    if-ltz v5, :cond_4

    .line 142
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 145
    :cond_4
    rem-long v10, v0, v6

    .line 146
    .local v10, "val":J
    cmp-long v5, v2, v10

    if-gtz v5, :cond_5

    cmp-long v5, v10, v8

    if-gez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMatchResult(Ljava/lang/String;Leja;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;
    .locals 9
    .param p0, "localVal"    # Ljava/lang/String;
    .param p1, "model"    # Leja;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Leja;->d()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2014
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 71
    if-eqz v7, :cond_1

    .line 72
    :cond_0
    sget-object v5, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    .line 120
    :goto_0
    return-object v5

    .line 75
    :cond_1
    invoke-virtual {p1}, Leja;->a()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;

    move-result-object v1

    .line 76
    .local v1, "key":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;
    invoke-virtual {p1}, Leja;->b()Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    move-result-object v4

    .line 77
    .local v4, "rule":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    invoke-virtual {p1}, Leja;->c()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "remoteVal":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 3014
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 78
    if-eqz v7, :cond_3

    .line 79
    :cond_2
    sget-object v5, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    goto :goto_0

    .line 82
    :cond_3
    const/4 v0, -0x2

    .line 83
    .local v0, "cmpRes":I
    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->GT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->EQ:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->LT:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->GE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->LE:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    if-ne v4, v7, :cond_5

    .line 84
    :cond_4
    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/KeyEnum;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    const/4 v7, -0x2

    if-ne v0, v7, :cond_5

    .line 86
    sget-object v5, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    goto :goto_0

    .line 90
    :cond_5
    const/4 v3, 0x0

    .line 91
    .local v3, "res":Z
    sget-object v7, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$1;->a:[I

    invoke-virtual {v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 120
    :goto_1
    invoke-static {v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->valueOf(Z)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    move-result-object v5

    goto :goto_0

    .line 93
    :pswitch_0
    if-lez v0, :cond_6

    move v3, v5

    .line 94
    :goto_2
    goto :goto_1

    :cond_6
    move v3, v6

    .line 93
    goto :goto_2

    .line 96
    :pswitch_1
    if-nez v0, :cond_7

    move v3, v5

    .line 97
    :goto_3
    goto :goto_1

    :cond_7
    move v3, v6

    .line 96
    goto :goto_3

    .line 99
    :pswitch_2
    if-gez v0, :cond_8

    move v3, v5

    .line 100
    :goto_4
    goto :goto_1

    :cond_8
    move v3, v6

    .line 99
    goto :goto_4

    .line 102
    :pswitch_3
    if-ltz v0, :cond_9

    move v3, v5

    .line 103
    :goto_5
    goto :goto_1

    :cond_9
    move v3, v6

    .line 102
    goto :goto_5

    .line 105
    :pswitch_4
    if-gtz v0, :cond_a

    move v3, v5

    .line 106
    :goto_6
    goto :goto_1

    :cond_a
    move v3, v6

    .line 105
    goto :goto_6

    .line 108
    :pswitch_5
    invoke-static {p0, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->getHashMatchResult(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 109
    goto :goto_1

    .line 111
    :pswitch_6
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 112
    goto :goto_1

    .line 114
    :pswitch_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getValidRule(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    .locals 6
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 57
    .line 1014
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 57
    if-eqz v2, :cond_1

    move-object v0, v1

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    invoke-static {}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 62
    .local v0, "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    iget-object v5, v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->name:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    :cond_2
    move-object v0, v1

    .line 67
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;

    return-object v0
.end method


# virtual methods
.method public final setShouldMatchNext(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;)V
    .locals 1
    .param p1, "logicEnum"    # Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    .prologue
    .line 49
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;->OR:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum$LogicEnum;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->shouldMatchNext:Z

    .line 50
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final shouldMatchNext()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/RuleEnum;->shouldMatchNext:Z

    return v0
.end method
