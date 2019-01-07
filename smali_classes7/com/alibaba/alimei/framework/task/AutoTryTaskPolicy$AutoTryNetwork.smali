.class public final enum Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;
.super Ljava/lang/Enum;
.source "AutoTryTaskPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoTryNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

.field public static final enum All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

.field public static final enum Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 37
    new-instance v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    const-string/jumbo v1, "Wifi"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->All:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->Wifi:Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->$VALUES:[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->$VALUES:[Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/framework/task/AutoTryTaskPolicy$AutoTryNetwork;

    return-object v0
.end method
