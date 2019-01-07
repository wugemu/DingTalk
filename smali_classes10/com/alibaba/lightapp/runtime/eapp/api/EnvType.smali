.class public final enum Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;
.super Ljava/lang/Enum;
.source "EnvType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

.field public static final enum EAPP:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

.field public static final enum H5:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

.field public static final enum WEEX:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    const-string/jumbo v1, "EAPP"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->EAPP:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    .line 5
    new-instance v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    const-string/jumbo v1, "WEEX"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->WEEX:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    .line 6
    new-instance v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    const-string/jumbo v1, "H5"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->H5:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    sget-object v1, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->EAPP:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->WEEX:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->H5:Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->$VALUES:[Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->$VALUES:[Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/eapp/api/EnvType;

    return-object v0
.end method
