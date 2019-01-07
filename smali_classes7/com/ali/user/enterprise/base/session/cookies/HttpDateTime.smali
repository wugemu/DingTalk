.class public Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    const-string/jumbo v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    goto :goto_0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 6
    .param p0, "monthString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 130
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    add-int/2addr v4, v5

    .line 131
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit16 v0, v4, -0x123

    .line 132
    .local v0, "hash":I
    sparse-switch v0, :sswitch_data_0

    .line 158
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :sswitch_0
    move v1, v2

    .line 156
    :goto_0
    :sswitch_1
    return v1

    :sswitch_2
    move v1, v3

    .line 138
    goto :goto_0

    .line 140
    :sswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 142
    :sswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 144
    :sswitch_5
    const/4 v1, 0x5

    goto :goto_0

    .line 146
    :sswitch_6
    const/4 v1, 0x6

    goto :goto_0

    .line 148
    :sswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 150
    :sswitch_8
    const/16 v1, 0x8

    goto :goto_0

    .line 152
    :sswitch_9
    const/16 v1, 0x9

    goto :goto_0

    .line 154
    :sswitch_a
    const/16 v1, 0xa

    goto :goto_0

    .line 156
    :sswitch_b
    const/16 v1, 0xb

    goto :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_0
        0x16 -> :sswitch_1
        0x1a -> :sswitch_7
        0x1d -> :sswitch_2
        0x20 -> :sswitch_3
        0x23 -> :sswitch_9
        0x24 -> :sswitch_4
        0x25 -> :sswitch_8
        0x28 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
    .locals 8
    .param p0, "timeString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "i":I
    const/4 v5, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 191
    .local v0, "hour":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_0

    .line 192
    mul-int/lit8 v5, v0, 0xa

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int v0, v5, v6

    .line 194
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 196
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v1, v2, 0x1

    .line 197
    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int v3, v5, v6

    .line 199
    .local v3, "minute":I
    add-int/lit8 v1, v1, 0x1

    .line 201
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    .line 202
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int v4, v5, v6

    .line 204
    .local v4, "second":I
    new-instance v5, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;

    invoke-direct {v5, v0, v3, v4}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;-><init>(III)V

    return-object v5
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 7
    .param p0, "yearString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 164
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    .line 165
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 166
    .local v0, "year":I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_0

    .line 167
    add-int/lit16 v1, v0, 0x76c

    .line 183
    .end local v0    # "year":I
    :goto_0
    return v1

    .line 169
    .restart local v0    # "year":I
    :cond_0
    add-int/lit16 v1, v0, 0x7d0

    goto :goto_0

    .line 171
    .end local v0    # "year":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 173
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    .line 174
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 175
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 176
    .restart local v0    # "year":I
    add-int/lit16 v1, v0, 0x76c

    goto :goto_0

    .line 177
    .end local v0    # "year":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 178
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    .line 179
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    .line 180
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 181
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 178
    goto :goto_0

    .line 183
    :cond_3
    const/16 v1, 0x7b2

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 12
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 74
    sget-object v1, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 75
    .local v8, "rfcMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 77
    .local v4, "date":I
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 78
    .local v5, "month":I
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "year":I
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 93
    .local v9, "timeOfDay":Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
    :goto_0
    const/16 v1, 0x7f6

    if-lt v6, v1, :cond_0

    .line 94
    const/16 v6, 0x7f6

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v4, 0x1

    .line 99
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "time":Landroid/text/format/Time;
    iget v1, v9, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;->second:I

    iget v2, v9, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;->minute:I

    iget v3, v9, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;->hour:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 81
    .end local v0    # "time":Landroid/text/format/Time;
    .end local v4    # "date":I
    .end local v5    # "month":I
    .end local v6    # "year":I
    .end local v9    # "timeOfDay":Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
    :cond_1
    sget-object v1, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 82
    .local v7, "ansicMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 84
    .restart local v5    # "month":I
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 85
    .restart local v4    # "date":I
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 86
    .restart local v9    # "timeOfDay":Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "year":I
    goto :goto_0

    .line 88
    .end local v4    # "date":I
    .end local v5    # "month":I
    .end local v6    # "year":I
    .end local v9    # "timeOfDay":Lcom/ali/user/enterprise/base/session/cookies/HttpDateTime$TimeOfDay;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
