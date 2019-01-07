.class public Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final ALL_INT:I = -0x80000000

.field public static final DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final DEBUG_INT:I = 0x2710

.field public static final ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final ERROR_INT:I = 0x9c40

.field public static final INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final INFO_INT:I = 0x4e20

.field public static final LOGGER_HIGH:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final LOGGER_LOW:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final LOGGER_MEDIUM:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final OFF_INT:I = 0x1388

.field public static final VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final VERBOSE_INT:I = 0x1388

.field public static final WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final WARN_INT:I = 0x7530

.field private static final serialVersionUID:J = -0xb4c3d0f032cb399L


# instance fields
.field public levelInt:I

.field public levelStr:Ljava/lang/String;

.field public loggerLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    .line 124
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const v1, 0x9c40

    const-string/jumbo v2, "E"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 129
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/16 v1, 0x7530

    const-string/jumbo v2, "W"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 135
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/16 v1, 0x4e20

    const-string/jumbo v2, "I"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 141
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/16 v1, 0x2710

    const-string/jumbo v2, "D"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 147
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v1, "V"

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 152
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 157
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/high16 v1, -0x80000000

    const-string/jumbo v2, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ALL:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 159
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->LOGGER_HIGH:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 161
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->LOGGER_MEDIUM:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 163
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->LOGGER_LOW:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->loggerLevel:I

    .line 170
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->loggerLevel:I

    .line 171
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->loggerLevel:I

    .line 177
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    .line 178
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelStr:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public static toLevel(I)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->toLevel(ILcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(ILcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 0

    .prologue
    .line 237
    sparse-switch p0, :sswitch_data_0

    .line 249
    :goto_0
    return-object p1

    .line 239
    :sswitch_0
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 241
    :sswitch_1
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 243
    :sswitch_2
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 245
    :sswitch_3
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 247
    :sswitch_4
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 237
    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_0
        0x2710 -> :sswitch_1
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_3
        0x9c40 -> :sswitch_4
    .end sparse-switch
.end method

.method public static toLevel(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->toLevel(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 258
    if-nez p0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object p1

    .line 262
    :cond_1
    const-string/jumbo v0, "ALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ALL:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 265
    :cond_2
    const-string/jumbo v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 268
    :cond_3
    const-string/jumbo v0, "DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 271
    :cond_4
    const-string/jumbo v0, "INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 272
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 274
    :cond_5
    const-string/jumbo v0, "WARN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 277
    :cond_6
    const-string/jumbo v0, "ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 280
    :cond_7
    const-string/jumbo v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->toLevel(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isGreaterOrEqual(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    iget v1, p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toInt()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelStr:Ljava/lang/String;

    return-object v0
.end method
