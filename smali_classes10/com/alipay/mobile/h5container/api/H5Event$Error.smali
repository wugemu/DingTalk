.class public final enum Lcom/alipay/mobile/h5container/api/H5Event$Error;
.super Ljava/lang/Enum;
.source "H5Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/h5container/api/H5Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/h5container/api/H5Event$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

.field public static final enum UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string/jumbo v1, "NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string/jumbo v1, "INVALID_PARAM"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    const-string/jumbo v1, "FORBIDDEN"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    .line 153
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/h5container/api/H5Event$Error;

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NONE:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->NOT_FOUND:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/h5container/api/H5Event$Error;->FORBIDDEN:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Event$Error;

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
    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 153
    const-class v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/h5container/api/H5Event$Error;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5Event$Error;->$VALUES:[Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-virtual {v0}, [Lcom/alipay/mobile/h5container/api/H5Event$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/h5container/api/H5Event$Error;

    return-object v0
.end method
