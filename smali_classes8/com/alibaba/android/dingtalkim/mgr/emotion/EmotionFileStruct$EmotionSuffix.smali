.class public final enum Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;
.super Ljava/lang/Enum;
.source "EmotionFileStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmotionSuffix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

.field public static final enum GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

.field public static final enum ICON:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

.field public static final enum INFO:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

.field public static final enum PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

.field public static final enum ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;


# instance fields
.field private mSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "ZIP"

    const-string/jumbo v2, ".zip"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 105
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "INFO"

    const-string/jumbo v2, "info.json"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->INFO:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 106
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "ICON"

    const-string/jumbo v2, "icon.png"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->ICON:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 107
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "PNG"

    const-string/jumbo v2, ".png"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 108
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "GIF"

    const-string/jumbo v2, ".gif"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->INFO:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->ICON:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->PNG:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->GIF:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->$VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->mSuffix:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->$VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;

    return-object v0
.end method


# virtual methods
.method public final getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionSuffix;->mSuffix:Ljava/lang/String;

    return-object v0
.end method
