.class public final enum Lorg/webrtc/model/SophonViewStatus$ViewMode;
.super Ljava/lang/Enum;
.source "SophonViewStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/model/SophonViewStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/model/SophonViewStatus$ViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/model/SophonViewStatus$ViewMode;

.field public static final enum LOACALVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

.field public static final enum REMOTEVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;

    const-string/jumbo v1, "LOACALVIEW"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/model/SophonViewStatus$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;->LOACALVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    .line 16
    new-instance v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;

    const-string/jumbo v1, "REMOTEVIEW"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/model/SophonViewStatus$ViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;->REMOTEVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/model/SophonViewStatus$ViewMode;

    sget-object v1, Lorg/webrtc/model/SophonViewStatus$ViewMode;->LOACALVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/model/SophonViewStatus$ViewMode;->REMOTEVIEW:Lorg/webrtc/model/SophonViewStatus$ViewMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;->$VALUES:[Lorg/webrtc/model/SophonViewStatus$ViewMode;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/model/SophonViewStatus$ViewMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/model/SophonViewStatus$ViewMode;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lorg/webrtc/model/SophonViewStatus$ViewMode;->$VALUES:[Lorg/webrtc/model/SophonViewStatus$ViewMode;

    invoke-virtual {v0}, [Lorg/webrtc/model/SophonViewStatus$ViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/model/SophonViewStatus$ViewMode;

    return-object v0
.end method
