.class final enum Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;
.super Ljava/lang/Enum;
.source "HydroPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/net/HydroPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

.field public static final enum CACHE_FIRST:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

.field public static final enum DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

.field public static final enum NO_INTERCEPT:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    const-string/jumbo v1, "NO_INTERCEPT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->NO_INTERCEPT:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    .line 34
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    const-string/jumbo v1, "CACHE_FIRST"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->CACHE_FIRST:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    .line 35
    new-instance v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->NO_INTERCEPT:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->CACHE_FIRST:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->DEFAULT:Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->$VALUES:[Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->$VALUES:[Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/net/HydroPolicy$MODE;

    return-object v0
.end method
