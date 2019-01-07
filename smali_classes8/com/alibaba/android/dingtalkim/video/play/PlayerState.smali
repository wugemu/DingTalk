.class public final enum Lcom/alibaba/android/dingtalkim/video/play/PlayerState;
.super Ljava/lang/Enum;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/video/play/PlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum PREPARED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

.field public static final enum PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "ERROR"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "PREPARING"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "PREPARED"

    invoke-direct {v0, v1, v7, v6}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 19
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v8, v7}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 21
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v8}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "BUFFERING_PLAYING"

    const/4 v2, 0x6

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 25
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "BUFFERING_PAUSED"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    const-string/jumbo v1, "COMPLETED"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->ERROR:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->IDLE:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PREPARED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PLAYING:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->BUFFERING_PAUSED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->COMPLETED:Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->$VALUES:[Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->mValue:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/video/play/PlayerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/video/play/PlayerState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->$VALUES:[Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/video/play/PlayerState;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/android/dingtalkim/video/play/PlayerState;->mValue:I

    return v0
.end method
