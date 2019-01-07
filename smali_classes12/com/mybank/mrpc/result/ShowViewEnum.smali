.class public final enum Lcom/mybank/mrpc/result/ShowViewEnum;
.super Ljava/lang/Enum;
.source "ShowViewEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mybank/mrpc/result/ShowViewEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mybank/mrpc/result/ShowViewEnum;

.field public static final enum ALERT:Lcom/mybank/mrpc/result/ShowViewEnum;

.field public static final enum ERROR_PAGE:Lcom/mybank/mrpc/result/ShowViewEnum;

.field public static final enum SILENT:Lcom/mybank/mrpc/result/ShowViewEnum;

.field public static final enum TOAST:Lcom/mybank/mrpc/result/ShowViewEnum;


# instance fields
.field private final code:Ljava/lang/String;

.field private final desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/mybank/mrpc/result/ShowViewEnum;

    const-string/jumbo v1, "TOAST"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "\u91c7\u7528Toast(\u81ea\u52a8\u6d88\u5931\u7684\u534a\u900f\u660e\u5f39\u7a97)\u7684\u65b9\u5f0f\u5c55\u793a\u9519\u8bef\u4fe1\u606f"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/mybank/mrpc/result/ShowViewEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mybank/mrpc/result/ShowViewEnum;->TOAST:Lcom/mybank/mrpc/result/ShowViewEnum;

    .line 15
    new-instance v0, Lcom/mybank/mrpc/result/ShowViewEnum;

    const-string/jumbo v1, "ALERT"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "\u91c7\u7528Alert(\u5e26\u786e\u5b9a\u6309\u94ae\u7684\u5f39\u7a97)\u7684\u65b9\u5f0f\u5c55\u793a\u9519\u8bef\u4fe1\u606f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/mybank/mrpc/result/ShowViewEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mybank/mrpc/result/ShowViewEnum;->ALERT:Lcom/mybank/mrpc/result/ShowViewEnum;

    .line 16
    new-instance v0, Lcom/mybank/mrpc/result/ShowViewEnum;

    const-string/jumbo v1, "SILENT"

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "\u91c7\u7528\u9759\u9ed8\u5904\u7406(\u5373\u5ffd\u7565\u8be5\u9519\u8bef)"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/mybank/mrpc/result/ShowViewEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mybank/mrpc/result/ShowViewEnum;->SILENT:Lcom/mybank/mrpc/result/ShowViewEnum;

    .line 17
    new-instance v0, Lcom/mybank/mrpc/result/ShowViewEnum;

    const-string/jumbo v1, "ERROR_PAGE"

    const-string/jumbo v2, "9"

    const-string/jumbo v3, "\u8df3\u8f6c\u5230\u9519\u8bef\u9875(\u5f53\u524d\u4e1a\u52a1\u6d41\u7a0b\u5f7b\u5e95\u4e2d\u65ad)"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/mybank/mrpc/result/ShowViewEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mybank/mrpc/result/ShowViewEnum;->ERROR_PAGE:Lcom/mybank/mrpc/result/ShowViewEnum;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mybank/mrpc/result/ShowViewEnum;

    sget-object v1, Lcom/mybank/mrpc/result/ShowViewEnum;->TOAST:Lcom/mybank/mrpc/result/ShowViewEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mybank/mrpc/result/ShowViewEnum;->ALERT:Lcom/mybank/mrpc/result/ShowViewEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mybank/mrpc/result/ShowViewEnum;->SILENT:Lcom/mybank/mrpc/result/ShowViewEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mybank/mrpc/result/ShowViewEnum;->ERROR_PAGE:Lcom/mybank/mrpc/result/ShowViewEnum;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mybank/mrpc/result/ShowViewEnum;->$VALUES:[Lcom/mybank/mrpc/result/ShowViewEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/mybank/mrpc/result/ShowViewEnum;->code:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/mybank/mrpc/result/ShowViewEnum;->desc:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mybank/mrpc/result/ShowViewEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/mybank/mrpc/result/ShowViewEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mybank/mrpc/result/ShowViewEnum;

    return-object v0
.end method

.method public static values()[Lcom/mybank/mrpc/result/ShowViewEnum;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/mybank/mrpc/result/ShowViewEnum;->$VALUES:[Lcom/mybank/mrpc/result/ShowViewEnum;

    invoke-virtual {v0}, [Lcom/mybank/mrpc/result/ShowViewEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mybank/mrpc/result/ShowViewEnum;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mybank/mrpc/result/ShowViewEnum;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mybank/mrpc/result/ShowViewEnum;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mybank/mrpc/result/ShowViewEnum;->code:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
