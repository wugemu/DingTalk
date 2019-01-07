.class public final enum Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
.super Ljava/lang/Enum;
.source "H5Param.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Param;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/h5container/api/H5Param$OptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field public static final enum ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field public static final enum MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

.field public static final enum TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string/jumbo v1, "ICON"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const-string/jumbo v1, "MENU"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 388
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

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
    .line 388
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 388
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    return-object v0
.end method
