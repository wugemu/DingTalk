.class public final enum Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;
.super Ljava/lang/Enum;
.source "EmotionFileStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmotionFolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

.field public static final enum THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

.field public static final enum UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;


# instance fields
.field private mFolder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "THUMNAIL"

    const-string/jumbo v2, "t"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 87
    new-instance v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "UNZIP"

    const-string/jumbo v2, "unzip"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->THUMNAIL:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->UNZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->$VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->mFolder:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->$VALUES:[Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;

    return-object v0
.end method


# virtual methods
.method public final getFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct$EmotionFolder;->mFolder:Ljava/lang/String;

    return-object v0
.end method
