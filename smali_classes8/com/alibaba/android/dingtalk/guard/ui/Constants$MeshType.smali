.class public final enum Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeshType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

.field public static final enum AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

.field public static final enum BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

.field public static final enum MANUAL_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    const-string/jumbo v1, "BIND_AND_ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    const-string/jumbo v1, "AUTO_MESH"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    const-string/jumbo v1, "MANUAL_MESH"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->MANUAL_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->BIND_AND_ACTIVE:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->MANUAL_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->$VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->$VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    return-object v0
.end method
