.class public final enum Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;
.super Ljava/lang/Enum;
.source "FocusDeviceObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/data/FocusDeviceObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

.field public static final enum EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

.field public static final enum LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

.field public static final enum RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

.field public static final enum UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 37
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    const-string/jumbo v1, "EDITABLE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 38
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 39
    new-instance v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->UNKNOWN:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->EDITABLE:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->LOADING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->RUNNING:Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->$VALUES:[Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->$VALUES:[Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/data/FocusDeviceObject$ShowType;

    return-object v0
.end method
