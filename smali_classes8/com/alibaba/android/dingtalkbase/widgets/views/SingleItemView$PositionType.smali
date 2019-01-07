.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;
.super Ljava/lang/Enum;
.source "SingleItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PositionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

.field public static final enum BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

.field public static final enum MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

.field public static final enum SINGLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

.field public static final enum TOP:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->TOP:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    .line 47
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    const-string/jumbo v1, "MIDDLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    .line 49
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    .line 51
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    const-string/jumbo v1, "SINGLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->SINGLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->TOP:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->SINGLE:Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->nativeInt:I

    .line 55
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/SingleItemView$PositionType;

    return-object v0
.end method
