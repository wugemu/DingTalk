.class public final enum Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;
.super Ljava/lang/Enum;
.source "PreviewViewData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

.field public static final enum FromText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

.field public static final enum System:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

.field public static final enum ToText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    const-string/jumbo v1, "System"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->System:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    .line 46
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    const-string/jumbo v1, "ToText"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->ToText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    .line 47
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    const-string/jumbo v1, "FromText"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->FromText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->System:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->ToText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->FromText:Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->$VALUES:[Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->$VALUES:[Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/chat/theme/adapter/PreviewViewData$DisplayType;

    return-object v0
.end method
