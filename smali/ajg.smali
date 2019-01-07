.class public final Lajg;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# static fields
.field static a:I

.field static b:I

.field private static c:Lcmt$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 3
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 195
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 196
    .local v0, "random":Ljava/util/Random;
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x65

    add-int/lit8 v1, v2, 0x0

    .line 198
    .local v1, "ret":I
    return v1
.end method

.method static a(Ljava/lang/String;I)I
    .locals 1
    .param p0, "newValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 152
    :goto_0
    return p1

    .line 146
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 158
    sget-object v2, Lajg;->c:Lcmt$a;

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Lajg$1;

    invoke-direct {v2}, Lajg$1;-><init>()V

    sput-object v2, Lajg;->c:Lcmt$a;

    .line 175
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    sget-object v3, Lajg;->c:Lcmt$a;

    invoke-virtual {v2, v3}, Lcmt;->a(Lcmt$a;)V

    .line 178
    :cond_0
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "vip_alarm_alluser_rate"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "newValue":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lajg;->a(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lajg;->a:I

    .line 183
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "dt_function"

    const-string/jumbo v4, "imap_alarm_alluser_rate"

    invoke-virtual {v2, v3, v4}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "newValue2":Ljava/lang/String;
    const/16 v2, 0x32

    invoke-static {v1, v2}, Lajg;->a(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lajg;->b:I

    .line 187
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subType"    # I
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v0, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "desc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p0, v0, p2}, Lajg;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static a(ILjava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p0, "subType"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lajg;->a()V

    .line 81
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 82
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "mail"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, v0, Lhzu;->b:Ljava/util/Map;

    .line 86
    :cond_0
    iput p0, v0, Lhzu;->c:I

    .line 87
    iput-object p2, v0, Lhzu;->d:Ljava/lang/String;

    .line 1134
    const/16 v2, 0x64

    invoke-static {v1, v2}, Lajg;->a(II)I

    move-result v2

    sget v3, Lajg;->a:I

    if-ge v2, v3, :cond_1

    .line 1135
    const/4 v1, 0x1

    .line 89
    :cond_1
    if-eqz v1, :cond_2

    .line 90
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->b(Lhzu;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_2
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    goto :goto_0
.end method

.method public static a(ILjava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p0, "subType"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lajg;->a()V

    .line 101
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 102
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "mail"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 103
    iput-object p1, v0, Lhzu;->b:Ljava/util/Map;

    .line 104
    const/16 v2, 0xdac

    iput v2, v0, Lhzu;->c:I

    .line 105
    iput-object p2, v0, Lhzu;->d:Ljava/lang/String;

    .line 107
    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lajg;->a(II)I

    move-result v1

    .line 109
    .local v1, "radNum":I
    sget v2, Lajg;->b:I

    if-ge v1, v2, :cond_0

    .line 110
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->b(Lhzu;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    goto :goto_0
.end method
