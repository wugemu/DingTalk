.class public final enum Lcom/alibaba/android/search/model/DingSearchResultModel$Type;
.super Ljava/lang/Enum;
.source "DingSearchResultModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/model/DingSearchResultModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/model/DingSearchResultModel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

.field public static final enum DING:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

.field public static final enum NUM:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    new-instance v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    const-string/jumbo v1, "DING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->DING:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    .line 237
    new-instance v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    const-string/jumbo v1, "NUM"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->NUM:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    sget-object v1, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->DING:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->NUM:Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->$VALUES:[Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

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
    .line 235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/model/DingSearchResultModel$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    const-class v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/model/DingSearchResultModel$Type;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->$VALUES:[Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/model/DingSearchResultModel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/model/DingSearchResultModel$Type;

    return-object v0
.end method
