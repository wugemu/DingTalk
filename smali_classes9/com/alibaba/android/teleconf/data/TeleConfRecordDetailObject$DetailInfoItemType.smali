.class public final enum Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;
.super Ljava/lang/Enum;
.source "TeleConfRecordDetailObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailInfoItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

.field public static final enum DetailItemInfo:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

.field public static final enum InfoFooter:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

.field public static final enum InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    const-string/jumbo v1, "InfoHeader"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    .line 9
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    const-string/jumbo v1, "DetailItemInfo"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->DetailItemInfo:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    .line 10
    new-instance v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    const-string/jumbo v1, "InfoFooter"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoFooter:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->DetailItemInfo:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoFooter:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->$VALUES:[Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    return-object v0
.end method
