.class public final enum Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;
.super Ljava/lang/Enum;
.source "SearchLogConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/utils/log/SearchLogConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchPositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

.field public static final enum CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

.field public static final enum CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

.field public static final enum MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

.field public static final enum PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

.field public static final enum TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 246
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    const-string/jumbo v1, "CELL"

    invoke-direct {v0, v1, v7, v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    .line 247
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    const-string/jumbo v1, "PROFILE_BTN"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    .line 248
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    const-string/jumbo v1, "CALL_BTN"

    invoke-direct {v0, v1, v4, v5}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    .line 249
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    const-string/jumbo v1, "MORE"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    .line 250
    new-instance v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    const-string/jumbo v1, "TAB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    .line 244
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CELL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->PROFILE_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->MORE:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->TAB:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->$VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

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
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 255
    iput p3, p0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->value:I

    .line 256
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    const-class v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->$VALUES:[Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->value:I

    return v0
.end method
