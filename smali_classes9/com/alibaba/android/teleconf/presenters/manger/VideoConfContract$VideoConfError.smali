.class public final enum Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;
.super Ljava/lang/Enum;
.source "VideoConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoConfError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_JoinFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_LeaveFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_NoErr:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_PublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_ServerError:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_SubscribeFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_UnpublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

.field public static final enum ERR_UnsubscribeFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_NoErr"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_NoErr:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 48
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_JoinFail"

    const/16 v2, 0x2710

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_JoinFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 49
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_PublishFail"

    const/16 v2, 0x2711

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_PublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 50
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_UnpublishFail"

    const/16 v2, 0x2712

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_UnpublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 51
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_SubscribeFail"

    const/16 v2, 0x2713

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_SubscribeFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 52
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_UnsubscribeFail"

    const/4 v2, 0x5

    const/16 v3, 0x2714

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_UnsubscribeFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 53
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_LeaveFail"

    const/4 v2, 0x6

    const/16 v3, 0x2715

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_LeaveFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 54
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    const-string/jumbo v1, "ERR_ServerError"

    const/4 v2, 0x7

    const/16 v3, 0x2716

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_ServerError:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_NoErr:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_JoinFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_PublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_UnpublishFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_SubscribeFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_UnsubscribeFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_LeaveFail:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->ERR_ServerError:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfError;->value:I

    return v0
.end method
