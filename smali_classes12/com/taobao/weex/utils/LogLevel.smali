.class public final enum Lcom/taobao/weex/utils/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/utils/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/utils/LogLevel;

.field public static final enum ALL:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum DEBUG:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum ERROR:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum INFO:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum OFF:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum VERBOSE:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum WARN:Lcom/taobao/weex/utils/LogLevel;

.field public static final enum WTF:Lcom/taobao/weex/utils/LogLevel;


# instance fields
.field name:Ljava/lang/String;

.field priority:I

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    .line 27
    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "WTF"

    const/4 v2, 0x0

    const-string/jumbo v3, "wtf"

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->WTF:Lcom/taobao/weex/utils/LogLevel;

    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x1

    const-string/jumbo v3, "error"

    const/4 v4, 0x1

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "WARN"

    const-string/jumbo v3, "warn"

    move v2, v7

    move v4, v7

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "INFO"

    const-string/jumbo v3, "info"

    move v2, v6

    move v4, v6

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    .line 28
    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "DEBUG"

    const-string/jumbo v3, "debug"

    move v2, v8

    move v4, v8

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "VERBOSE"

    const-string/jumbo v3, "verbose"

    move v2, v9

    move v4, v9

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->VERBOSE:Lcom/taobao/weex/utils/LogLevel;

    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "ALL"

    const-string/jumbo v3, "debug"

    move v2, v10

    move v4, v10

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->ALL:Lcom/taobao/weex/utils/LogLevel;

    new-instance v0, Lcom/taobao/weex/utils/LogLevel;

    const-string/jumbo v1, "OFF"

    const/4 v2, 0x7

    const-string/jumbo v3, "off"

    const/4 v4, 0x7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/utils/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->OFF:Lcom/taobao/weex/utils/LogLevel;

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/taobao/weex/utils/LogLevel;

    const/4 v1, 0x0

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->WTF:Lcom/taobao/weex/utils/LogLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->ERROR:Lcom/taobao/weex/utils/LogLevel;

    aput-object v2, v0, v1

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->DEBUG:Lcom/taobao/weex/utils/LogLevel;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->VERBOSE:Lcom/taobao/weex/utils/LogLevel;

    aput-object v1, v0, v9

    sget-object v1, Lcom/taobao/weex/utils/LogLevel;->ALL:Lcom/taobao/weex/utils/LogLevel;

    aput-object v1, v0, v10

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/weex/utils/LogLevel;->OFF:Lcom/taobao/weex/utils/LogLevel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/utils/LogLevel;->$VALUES:[Lcom/taobao/weex/utils/LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "value"    # I
    .param p5, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/taobao/weex/utils/LogLevel;->name:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/taobao/weex/utils/LogLevel;->value:I

    .line 36
    iput p5, p0, Lcom/taobao/weex/utils/LogLevel;->priority:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/utils/LogLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/taobao/weex/utils/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/utils/LogLevel;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/taobao/weex/utils/LogLevel;->$VALUES:[Lcom/taobao/weex/utils/LogLevel;

    invoke-virtual {v0}, [Lcom/taobao/weex/utils/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/utils/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final compare(Lcom/taobao/weex/utils/LogLevel;)I
    .locals 2
    .param p1, "level"    # Lcom/taobao/weex/utils/LogLevel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    iget v0, p0, Lcom/taobao/weex/utils/LogLevel;->value:I

    iget v1, p1, Lcom/taobao/weex/utils/LogLevel;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/taobao/weex/utils/LogLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/taobao/weex/utils/LogLevel;->priority:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/taobao/weex/utils/LogLevel;->value:I

    return v0
.end method
