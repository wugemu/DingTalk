.class public final enum Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;
.super Ljava/lang/Enum;
.source "VoipConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoipConfError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

.field public static final enum ERR_LOW_VOLUME:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    const-string/jumbo v1, "ERR_LOW_VOLUME"

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->ERR_LOW_VOLUME:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->ERR_LOW_VOLUME:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->value:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->value:I

    return v0
.end method
