.class public final enum Lcom/taobao/accs/common/Constants$Operate;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/accs/common/Constants$Operate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

.field public static final enum TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string/jumbo v1, "ASK_VERSION"

    invoke-direct {v0, v1, v4, v4}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    .line 308
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string/jumbo v1, "REPORT_VERSION"

    invoke-direct {v0, v1, v5, v5}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    .line 309
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string/jumbo v1, "TRY_ELECTION"

    invoke-direct {v0, v1, v6, v6}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 310
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string/jumbo v1, "START_ELECTION"

    invoke-direct {v0, v1, v7, v7}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 311
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string/jumbo v1, "RESULT_ELECTION"

    invoke-direct {v0, v1, v8, v8}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 312
    new-instance v0, Lcom/taobao/accs/common/Constants$Operate;

    const-string/jumbo v1, "PING_ELECTION"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/common/Constants$Operate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    .line 305
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/accs/common/Constants$Operate;

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->ASK_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->REPORT_VERSION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->TRY_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->START_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/accs/common/Constants$Operate;->RESULT_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/accs/common/Constants$Operate;->PING_ELECTION:Lcom/taobao/accs/common/Constants$Operate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/accs/common/Constants$Operate;->$VALUES:[Lcom/taobao/accs/common/Constants$Operate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 318
    iput p3, p0, Lcom/taobao/accs/common/Constants$Operate;->value:I

    .line 319
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/common/Constants$Operate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v0, Lcom/taobao/accs/common/Constants$Operate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/common/Constants$Operate;

    return-object v0
.end method

.method public static values()[Lcom/taobao/accs/common/Constants$Operate;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/taobao/accs/common/Constants$Operate;->$VALUES:[Lcom/taobao/accs/common/Constants$Operate;

    invoke-virtual {v0}, [Lcom/taobao/accs/common/Constants$Operate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/common/Constants$Operate;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/taobao/accs/common/Constants$Operate;->value:I

    return v0
.end method
