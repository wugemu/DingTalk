.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

.field public static final enum HORIZONTAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

.field public static final enum VERTICAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    const-string/jumbo v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->HORIZONTAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    const-string/jumbo v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->VERTICAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->HORIZONTAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->VERTICAL:Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/popup/Orientation;

    return-object v0
.end method
