.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;
.super Ljava/lang/Enum;
.source "MakeupDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

.field public static final enum Left:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

.field public static final enum Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

.field public static final enum Right:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;


# instance fields
.field private direction:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    const-string/jumbo v1, "Normal"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 9
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    const-string/jumbo v1, "Left"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Left:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    const-string/jumbo v1, "Right"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Right:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Normal:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Left:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->Right:Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->direction:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;

    return-object v0
.end method


# virtual methods
.method public final direction()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/MakeupDirection;->direction:I

    return v0
.end method
