.class public final enum Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;
.super Ljava/lang/Enum;
.source "MtopClientMudpUpdateResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RemindStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum FORCE:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum SILENT:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum WIFI_FORCE_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum WIFI_REMIND_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum WIFI_SILENT_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

.field public static final enum WIFI_SILENT_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 44
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "REMIND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 45
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "FORCE"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->FORCE:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 46
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "WIFI_FORCE_ELSE_REMIND"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_FORCE_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 47
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "WIFI_SILENT_ELSE_NO"

    invoke-direct {v0, v1, v6, v7}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_SILENT_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 48
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "WIFI_SILENT_ELSE_REMIND"

    invoke-direct {v0, v1, v7, v8}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_SILENT_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 49
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "SILENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->SILENT:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 50
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "NO"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 51
    new-instance v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const-string/jumbo v1, "WIFI_REMIND_ELSE_NO"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_REMIND_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->FORCE:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_FORCE_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_SILENT_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_SILENT_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->SILENT:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_REMIND_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->$VALUES:[Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->value:I

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->$VALUES:[Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->value:I

    return v0
.end method
