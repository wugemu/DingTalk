.class public final enum Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
.super Ljava/lang/Enum;
.source "H5Param.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/h5container/api/H5Param$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

.field public static final enum BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

.field public static final enum DOUBLE:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

.field public static final enum INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

.field public static final enum STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 381
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v1, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v1, "INT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    const-string/jumbo v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->DOUBLE:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    .line 380
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->BOOLEAN:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->STRING:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->INT:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->DOUBLE:Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 380
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/h5container/api/H5Param$ParamType;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/h5container/api/H5Param$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/h5container/api/H5Param$ParamType;

    return-object v0
.end method
