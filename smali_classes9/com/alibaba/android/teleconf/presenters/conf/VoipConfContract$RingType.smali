.class public final enum Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;
.super Ljava/lang/Enum;
.source "VoipConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

.field public static final enum RING_CALLING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

.field public static final enum RING_ENDING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

.field public static final enum RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    const-string/jumbo v1, "RING_INCOMING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    .line 48
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    const-string/jumbo v1, "RING_CALLING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_CALLING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    .line 49
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    const-string/jumbo v1, "RING_ENDING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_ENDING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_CALLING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_ENDING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    return-object v0
.end method
