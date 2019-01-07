.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;
.super Ljava/lang/Enum;
.source "SetupEditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

.field public static final enum BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

.field public static final enum MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

.field public static final enum TOP:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->TOP:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    const-string/jumbo v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->NORMAL:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->TOP:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->MIDDLE:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->BOTTOM:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->NORMAL:Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/SetupEditView$Position;

    return-object v0
.end method
