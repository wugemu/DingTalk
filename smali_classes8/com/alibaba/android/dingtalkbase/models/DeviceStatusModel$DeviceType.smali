.class public final enum Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;
.super Ljava/lang/Enum;
.source "DeviceStatusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_ANDROID:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_DEFAULT:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_IOS:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_MAC:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_WEB:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

.field public static final enum DEVICE_TYPE_WIN:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;


# instance fields
.field private mCode:I

.field private mStringRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_DEFAULT"

    sget v2, Lcig$j;->device_default:I

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_DEFAULT:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 25
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_WEB"

    sget v2, Lcig$j;->device_web:I

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_WEB:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_ANDROID"

    sget v2, Lcig$j;->device_android:I

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_ANDROID:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_IOS"

    sget v2, Lcig$j;->device_ios:I

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IOS:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 28
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_MAC"

    sget v2, Lcig$j;->device_mac:I

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_MAC:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 29
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_WIN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    sget v4, Lcig$j;->device_win:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_WIN:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 30
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    const-string/jumbo v1, "DEVICE_TYPE_IPAD"

    const/4 v2, 0x6

    const/4 v3, 0x6

    sget v4, Lcig$j;->dt_device_ipad:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_DEFAULT:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_WEB:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_ANDROID:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IOS:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_MAC:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_WIN:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "stringRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->mCode:I

    .line 37
    iput p4, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->mStringRes:I

    .line 38
    return-void
.end method

.method public static valueOf(I)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 49
    if-gez p0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->values()[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_1

    .line 50
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->values()[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v0

    aget-object v0, v0, p0

    .line 52
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->values()[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->mCode:I

    return v0
.end method

.method public final getNameRes()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->mStringRes:I

    return v0
.end method
