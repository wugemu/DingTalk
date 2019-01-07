.class public final enum Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;
.super Ljava/lang/Enum;
.source "TeleVideoMemberObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field public static final enum AddTailType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field public static final enum CloseCameraType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field public static final enum DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field public static final enum MuteTailType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field public static final enum NotCallerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

.field public static final enum OwnerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    const-string/jumbo v1, "DefaultType"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 74
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    const-string/jumbo v1, "NotCallerType"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->NotCallerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 75
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    const-string/jumbo v1, "AddTailType"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->AddTailType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 76
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    const-string/jumbo v1, "MuteTailType"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->MuteTailType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 77
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    const-string/jumbo v1, "CloseCameraType"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->CloseCameraType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 78
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    const-string/jumbo v1, "OwnerType"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->OwnerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->NotCallerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->AddTailType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->MuteTailType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->CloseCameraType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->OwnerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    return-object v0
.end method
