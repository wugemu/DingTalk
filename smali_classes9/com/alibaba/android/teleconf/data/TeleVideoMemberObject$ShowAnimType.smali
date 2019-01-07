.class public final enum Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;
.super Ljava/lang/Enum;
.source "TeleVideoMemberObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowAnimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

.field public static final enum ANIM_NONE:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

.field public static final enum ANIM_TO_BACKWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

.field public static final enum ANIM_TO_FORWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    const-string/jumbo v1, "ANIM_NONE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_NONE:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    .line 88
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    const-string/jumbo v1, "ANIM_TO_FORWARD"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_TO_FORWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    .line 89
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    const-string/jumbo v1, "ANIM_TO_BACKWARD"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_TO_BACKWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_NONE:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_TO_FORWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->ANIM_TO_BACKWARD:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowAnimType;

    return-object v0
.end method
