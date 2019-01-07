.class public final enum Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;
.super Ljava/lang/Enum;
.source "VideoConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

.field public static final enum MEDIA_ALL:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

.field public static final enum MEDIA_AUDIO:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

.field public static final enum MEDIA_DESKTOP:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

.field public static final enum MEDIA_VIDEO:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    const-string/jumbo v1, "MEDIA_ALL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_ALL:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    .line 33
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    const-string/jumbo v1, "MEDIA_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_AUDIO:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    .line 34
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    const-string/jumbo v1, "MEDIA_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_VIDEO:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    .line 35
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    const-string/jumbo v1, "MEDIA_DESKTOP"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_DESKTOP:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_ALL:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_AUDIO:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_VIDEO:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->MEDIA_DESKTOP:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$MediaType;

    return-object v0
.end method
