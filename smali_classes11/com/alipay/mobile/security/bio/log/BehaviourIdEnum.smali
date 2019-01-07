.class public final enum Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
.super Ljava/lang/Enum;
.source "BehaviourIdEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum AUTO_CLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum AUTO_OPENPAGE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum BIZLAUNCHED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum CHECKGESTURE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum CLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum DYNAMICLOADTOCHECK:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum ERROR:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum EVENT:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum EXCEPTION:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum EXECCOMMAND:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum LONGCLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum MONITOR:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum MONITORPERF:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum NONE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum OPENPAGE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum SETGESTURE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum SLIDED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

.field public static final enum SUBMITED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 5
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "EVENT"

    const-string/jumbo v2, "event"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 6
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "CLICKED"

    const-string/jumbo v2, "clicked"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "OPENPAGE"

    const-string/jumbo v2, "openPage"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 8
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "LONGCLICKED"

    const-string/jumbo v2, "longClicked"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->LONGCLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 9
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "DYNAMICLOADTOCHECK"

    const/4 v2, 0x5

    const-string/jumbo v3, "dynamicLoadToCheck"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->DYNAMICLOADTOCHECK:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "AUTO_CLICKED"

    const/4 v2, 0x6

    const-string/jumbo v3, "auto_clicked"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->AUTO_CLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "AUTO_OPENPAGE"

    const/4 v2, 0x7

    const-string/jumbo v3, "auto_openPage"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->AUTO_OPENPAGE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "SUBMITED"

    const/16 v2, 0x8

    const-string/jumbo v3, "submited"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->SUBMITED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 13
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "BIZLAUNCHED"

    const/16 v2, 0x9

    const-string/jumbo v3, "bizLaunched"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->BIZLAUNCHED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "ERROR"

    const/16 v2, 0xa

    const-string/jumbo v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->ERROR:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 15
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "EXCEPTION"

    const/16 v2, 0xb

    const-string/jumbo v3, "exception"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->EXCEPTION:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 16
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "SETGESTURE"

    const/16 v2, 0xc

    const-string/jumbo v3, "setGesture"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->SETGESTURE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 17
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "CHECKGESTURE"

    const/16 v2, 0xd

    const-string/jumbo v3, "checkGesture"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->CHECKGESTURE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "SLIDED"

    const/16 v2, 0xe

    const-string/jumbo v3, "slided"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->SLIDED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 19
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "MONITOR"

    const/16 v2, 0xf

    const-string/jumbo v3, "monitor"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 20
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "EXECCOMMAND"

    const/16 v2, 0x10

    const-string/jumbo v3, "execCommand"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->EXECCOMMAND:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 21
    new-instance v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    const-string/jumbo v1, "MONITORPERF"

    const/16 v2, 0x11

    const-string/jumbo v3, "monitorPerf"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    .line 3
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    sget-object v1, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->LONGCLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->DYNAMICLOADTOCHECK:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->AUTO_CLICKED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->AUTO_OPENPAGE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->SUBMITED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->BIZLAUNCHED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->ERROR:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->EXCEPTION:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->SETGESTURE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->CHECKGESTURE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->SLIDED:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->EXECCOMMAND:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->desc:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->values()[Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 36
    .local v0, "v":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    iget-object v4, v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->desc:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    .end local v0    # "v":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    :goto_1
    return-object v0

    .line 34
    .restart local v0    # "v":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "v":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->$VALUES:[Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->desc:Ljava/lang/String;

    return-object v0
.end method
