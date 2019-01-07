.class public final enum Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;
.super Ljava/lang/Enum;
.source "EnergyRecordObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/model/EnergyRecordObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnergyRecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

.field public static final enum CONSUME:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

.field public static final enum RECEIVE:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 32
    new-instance v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    const-string/jumbo v1, "RECEIVE"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->RECEIVE:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    .line 33
    new-instance v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    const-string/jumbo v1, "CONSUME"

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->CONSUME:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    .line 30
    new-array v0, v4, [Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    sget-object v1, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->RECEIVE:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->CONSUME:Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->$VALUES:[Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->mValue:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->$VALUES:[Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alibaba/android/user/model/EnergyRecordObject$EnergyRecordType;->mValue:I

    return v0
.end method
