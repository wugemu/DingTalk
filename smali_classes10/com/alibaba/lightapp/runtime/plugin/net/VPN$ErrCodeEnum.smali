.class public final enum Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;
.super Ljava/lang/Enum;
.source "VPN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/net/VPN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrCodeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_DNS_FAILED:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_LOGIN_FAILED:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_NOT_INSTALL:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_PARM_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_STARTING:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_SUCCESS:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

.field public static final enum DTSF_UNKNOWN_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;


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

    .line 255
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_SUCCESS:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 257
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_PARM_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_PARM_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 259
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_NOT_INSTALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_NOT_INSTALL:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 261
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_LOGIN_FAILED"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_LOGIN_FAILED:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 263
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_DNS_FAILED"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_DNS_FAILED:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 265
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_STARTING"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_STARTING:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 267
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    const-string/jumbo v1, "DTSF_UNKNOWN_ERROR"

    const/4 v2, 0x6

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_UNKNOWN_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    .line 253
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_SUCCESS:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_PARM_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_NOT_INSTALL:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_LOGIN_FAILED:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_DNS_FAILED:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_STARTING:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->DTSF_UNKNOWN_ERROR:Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->$VALUES:[Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value:I

    .line 272
    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value:I

    .line 273
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->$VALUES:[Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/alibaba/lightapp/runtime/plugin/net/VPN$ErrCodeEnum;->value:I

    return v0
.end method
