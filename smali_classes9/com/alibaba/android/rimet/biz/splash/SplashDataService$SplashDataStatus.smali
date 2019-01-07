.class public final enum Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;
.super Ljava/lang/Enum;
.source "SplashDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/splash/SplashDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplashDataStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

.field public static final enum DOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

.field public static final enum UNDOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;


# instance fields
.field status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    const-string/jumbo v1, "UNDOWNLOADED"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->UNDOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    .line 55
    new-instance v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    const-string/jumbo v1, "DOWNLOADED"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->DOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    sget-object v1, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->UNDOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->DOWNLOADED:Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->$VALUES:[Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->status:I

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->$VALUES:[Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$SplashDataStatus;->status:I

    return v0
.end method
