.class public Liwp;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final synthetic a:Z

.field private static b:Ljava/util/TimeZone;

.field private static c:[I

.field private static final d:Ljava/util/TimeZone;

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v2, 0x0

    const/16 v5, 0x7b2

    const/16 v4, 0xc

    .line 37
    const-class v1, Liwp;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Liwp;->a:Z

    .line 39
    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v3, "Etc/GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v1, Liwp;->b:Ljava/util/TimeZone;

    .line 195
    new-array v1, v4, [I

    sput-object v1, Liwp;->c:[I

    .line 197
    sget-boolean v1, Liwp;->a:Z

    if-nez v1, :cond_1

    invoke-static {v5}, Liwp;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    .line 37
    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x1

    .local v0, "m":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 199
    sget-object v1, Liwp;->c:[I

    sget-object v2, Liwp;->c:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    invoke-static {v5, v0}, Liwp;->a(II)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_2
    sget-boolean v1, Liwp;->a:Z

    if-nez v1, :cond_3

    const/16 v1, 0x16d

    sget-object v2, Liwp;->c:[I

    aget v2, v2, v6

    invoke-static {v5, v4}, Liwp;->a(II)I

    move-result v3

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Liwp;->c:[I

    aget v3, v3, v6

    invoke-static {v5, v4}, Liwp;->a(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 276
    :cond_3
    const-string/jumbo v1, "noSuchTimeZone"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Liwp;->d:Ljava/util/TimeZone;

    .line 279
    const-string/jumbo v1, "^GMT([+-]0(:00)?)?$|UTC|Zulu|Etc\\/GMT|Greenwich.*"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Liwp;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 169
    invoke-static {p0}, Liwp;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 182
    :pswitch_0
    const/16 v0, 0x1f

    .line 189
    :goto_0
    return v0

    .line 187
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-static {p0}, Liwp;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(III)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 151
    add-int/lit8 v0, p0, -0x1

    .line 152
    .local v0, "yearM1":I
    mul-int/lit16 v1, v0, 0x16d

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v2, v0, 0x190

    add-int/2addr v1, v2

    mul-int/lit16 v2, p1, 0x16f

    add-int/lit16 v2, v2, -0x16a

    div-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v1

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    add-int/2addr v1, p2

    return v1

    :cond_0
    invoke-static {p0}, Liwp;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public static a(Liws;)J
    .locals 8
    .param p0, "date"    # Liws;

    .prologue
    .line 251
    .line 1141
    invoke-interface {p0}, Liws;->d()I

    move-result v3

    invoke-interface {p0}, Liws;->e()I

    move-result v4

    invoke-interface {p0}, Liws;->f()I

    move-result v5

    invoke-static {v3, v4, v5}, Liwp;->a(III)I

    move-result v3

    .line 251
    int-to-long v4, v3

    const-wide/32 v6, 0x15180

    mul-long v0, v4, v6

    .line 253
    .local v0, "result":J
    instance-of v3, p0, Liwv;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 254
    check-cast v2, Liwv;

    .line 255
    .local v2, "time":Liwv;
    invoke-interface {v2}, Liwv;->c()I

    move-result v3

    invoke-interface {v2}, Liwv;->b()I

    move-result v4

    invoke-interface {v2}, Liwv;->a()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v3, v4

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 260
    .end local v2    # "time":Liwv;
    :cond_0
    return-wide v0
.end method

.method private static b(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 164
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
