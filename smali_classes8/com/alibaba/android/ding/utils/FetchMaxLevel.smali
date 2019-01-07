.class public final enum Lcom/alibaba/android/ding/utils/FetchMaxLevel;
.super Ljava/lang/Enum;
.source "FetchMaxLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/utils/FetchMaxLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/utils/FetchMaxLevel;

.field public static final enum DB:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

.field public static final enum MEMORY:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

.field public static final enum NETWORK:Lcom/alibaba/android/ding/utils/FetchMaxLevel;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    const-string/jumbo v1, "MEMORY"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ding/utils/FetchMaxLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->MEMORY:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    .line 9
    new-instance v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    const-string/jumbo v1, "DB"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/utils/FetchMaxLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->DB:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    .line 10
    new-instance v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/utils/FetchMaxLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->NETWORK:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    sget-object v1, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->MEMORY:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->DB:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->NETWORK:Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->$VALUES:[Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->mLevel:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/utils/FetchMaxLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/utils/FetchMaxLevel;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->$VALUES:[Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/utils/FetchMaxLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/utils/FetchMaxLevel;

    return-object v0
.end method


# virtual methods
.method public final getLevel()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/ding/utils/FetchMaxLevel;->mLevel:I

    return v0
.end method
