.class public final enum Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;
.super Ljava/lang/Enum;
.source "TeleBusinessConfRecordObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

.field public static final enum CanceledItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

.field public static final enum EndedItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

.field public static final enum HeaderItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

.field public static final enum MoreItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

.field public static final enum OrderItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

.field public static final enum RunningItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    const-string/jumbo v1, "HeaderItemInfo"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    .line 27
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    const-string/jumbo v1, "RunningItemInfo"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    .line 28
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    const-string/jumbo v1, "OrderItemInfo"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    .line 29
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    const-string/jumbo v1, "EndedItemInfo"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    .line 30
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    const-string/jumbo v1, "CanceledItemInfo"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->CanceledItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    .line 31
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    const-string/jumbo v1, "MoreItemInfo"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->HeaderItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->RunningItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->OrderItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->EndedItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->CanceledItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->MoreItemInfo:Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleBusinessConfRecordObject$ItemInfoType;

    return-object v0
.end method
