.class public final enum Lcom/taobao/windmill/module/base/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/module/base/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/module/base/Status;

.field public static final enum EXCEPTION:Lcom/taobao/windmill/module/base/Status;

.field public static final enum FAILED:Lcom/taobao/windmill/module/base/Status;

.field public static final enum NOT_SUPPORTED:Lcom/taobao/windmill/module/base/Status;

.field public static final enum NO_PERMISSION:Lcom/taobao/windmill/module/base/Status;

.field public static final enum PARAM_ERR:Lcom/taobao/windmill/module/base/Status;

.field public static final enum SUCCESS:Lcom/taobao/windmill/module/base/Status;

.field public static final enum TIMEOUT:Lcom/taobao/windmill/module/base/Status;

.field public static final enum USER_CANCELLED:Lcom/taobao/windmill/module/base/Status;

.field public static final enum USER_DENIED:Lcom/taobao/windmill/module/base/Status;


# instance fields
.field private mStatusText:Ljava/lang/String;


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
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "SUCCESS"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->SUCCESS:Lcom/taobao/windmill/module/base/Status;

    .line 5
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "FAILED"

    const-string/jumbo v2, "FAILED"

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->FAILED:Lcom/taobao/windmill/module/base/Status;

    .line 6
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "NO_PERMISSION"

    const-string/jumbo v2, "NO_PERMISSION"

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->NO_PERMISSION:Lcom/taobao/windmill/module/base/Status;

    .line 7
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "TIMEOUT"

    const-string/jumbo v2, "TIMEOUT"

    invoke-direct {v0, v1, v7, v2}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->TIMEOUT:Lcom/taobao/windmill/module/base/Status;

    .line 8
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "PARAM_ERR"

    const-string/jumbo v2, "PARAM_ERR"

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->PARAM_ERR:Lcom/taobao/windmill/module/base/Status;

    .line 9
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "EXCEPTION"

    const/4 v2, 0x5

    const-string/jumbo v3, "EXCEPTION"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->EXCEPTION:Lcom/taobao/windmill/module/base/Status;

    .line 10
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "NOT_SUPPORTED"

    const/4 v2, 0x6

    const-string/jumbo v3, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->NOT_SUPPORTED:Lcom/taobao/windmill/module/base/Status;

    .line 11
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "USER_DENIED"

    const/4 v2, 0x7

    const-string/jumbo v3, "USER_DENIED"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->USER_DENIED:Lcom/taobao/windmill/module/base/Status;

    .line 12
    new-instance v0, Lcom/taobao/windmill/module/base/Status;

    const-string/jumbo v1, "USER_CANCELLED"

    const/16 v2, 0x8

    const-string/jumbo v3, "USER_CANCELLED"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/windmill/module/base/Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->USER_CANCELLED:Lcom/taobao/windmill/module/base/Status;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/taobao/windmill/module/base/Status;

    sget-object v1, Lcom/taobao/windmill/module/base/Status;->SUCCESS:Lcom/taobao/windmill/module/base/Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/windmill/module/base/Status;->FAILED:Lcom/taobao/windmill/module/base/Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/windmill/module/base/Status;->NO_PERMISSION:Lcom/taobao/windmill/module/base/Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/windmill/module/base/Status;->TIMEOUT:Lcom/taobao/windmill/module/base/Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/windmill/module/base/Status;->PARAM_ERR:Lcom/taobao/windmill/module/base/Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/windmill/module/base/Status;->EXCEPTION:Lcom/taobao/windmill/module/base/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/windmill/module/base/Status;->NOT_SUPPORTED:Lcom/taobao/windmill/module/base/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/windmill/module/base/Status;->USER_DENIED:Lcom/taobao/windmill/module/base/Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/windmill/module/base/Status;->USER_CANCELLED:Lcom/taobao/windmill/module/base/Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/windmill/module/base/Status;->$VALUES:[Lcom/taobao/windmill/module/base/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/taobao/windmill/module/base/Status;->mStatusText:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/module/base/Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/taobao/windmill/module/base/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/module/base/Status;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/module/base/Status;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/taobao/windmill/module/base/Status;->$VALUES:[Lcom/taobao/windmill/module/base/Status;

    invoke-virtual {v0}, [Lcom/taobao/windmill/module/base/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/module/base/Status;

    return-object v0
.end method


# virtual methods
.method public final statusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/windmill/module/base/Status;->mStatusText:Ljava/lang/String;

    return-object v0
.end method
