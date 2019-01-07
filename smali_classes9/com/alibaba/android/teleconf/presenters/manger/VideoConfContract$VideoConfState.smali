.class public final enum Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
.super Ljava/lang/Enum;
.source "VideoConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoConfState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field public static final enum STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field public static final enum STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field public static final enum STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field public static final enum STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field public static final enum STATE_PREPARED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

.field public static final enum STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    const-string/jumbo v1, "STATE_IDE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 39
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    const-string/jumbo v1, "STATE_CALLING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 40
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    const-string/jumbo v1, "STATE_CALLED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 41
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    const-string/jumbo v1, "STATE_JOINING"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 42
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    const-string/jumbo v1, "STATE_PREPARED"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_PREPARED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 43
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    const-string/jumbo v1, "STATE_RUNNING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_IDE:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_CALLED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_JOINING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_PREPARED:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->STATE_RUNNING:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$VideoConfState;

    return-object v0
.end method
