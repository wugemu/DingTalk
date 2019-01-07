.class public final enum Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/file/download/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/file/download/Constants$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

.field public static final enum FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

.field public static final enum FILE_NOT_FOUND:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

.field public static final enum PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

.field public static final enum UNAUTHORIZED:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;


# instance fields
.field private final code:I

.field private final reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    const-string/jumbo v1, "PARAMETER_ERROR"

    const v2, 0xc6ab60

    const-string/jumbo v3, "PARAMETER_ERR"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    .line 15
    new-instance v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const v2, 0xc6ab61

    const-string/jumbo v3, "UNKNOWN_ERR"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    .line 16
    new-instance v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    const-string/jumbo v1, "UNAUTHORIZED"

    const v2, 0xc6ab65

    const-string/jumbo v3, "UNAUTHORIZED"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNAUTHORIZED:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    .line 17
    new-instance v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    const-string/jumbo v1, "FILE_NOT_FOUND"

    const v2, 0xc6b718

    const-string/jumbo v3, "FILE_NOT_FOUND"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_NOT_FOUND:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    .line 19
    new-instance v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    const-string/jumbo v1, "FILE_HANDLE_ERROR"

    const v2, 0xc6c6b8

    const-string/jumbo v3, "FILE_HANDLE_ERROR"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->PARAMETER_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNAUTHORIZED:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_NOT_FOUND:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->FILE_HANDLE_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->$VALUES:[Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code:I

    .line 26
    iput-object p4, p0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(I)Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->values()[Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    move-result-object v0

    .local v0, "arr$":[Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 39
    .local v1, "ec":Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    invoke-virtual {v1}, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 43
    .end local v1    # "ec":Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    :goto_1
    return-object v1

    .line 38
    .restart local v1    # "ec":Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "ec":Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    :cond_1
    sget-object v1, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->UNKNOWN_ERROR:Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/file/download/Constants$ErrorCode;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->$VALUES:[Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/file/download/Constants$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final code()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->code:I

    return v0
.end method

.method public final reason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/Constants$ErrorCode;->reason:Ljava/lang/String;

    return-object v0
.end method
