.class public final enum Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;
.super Ljava/lang/Enum;
.source "DdTextureVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

.field public static final enum CROP:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

.field public static final enum SCALE_TO_FIT:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    const-string/jumbo v1, "SCALE_TO_FIT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->SCALE_TO_FIT:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    const-string/jumbo v1, "CROP"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->CROP:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    sget-object v1, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->SCALE_TO_FIT:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->CROP:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->$VALUES:[Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->$VALUES:[Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    return-object v0
.end method
