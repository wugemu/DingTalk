.class public final enum Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;
.super Ljava/lang/Enum;
.source "TeleConfCustomFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

.field public static final enum ACTION_DRAG:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

.field public static final enum ACTION_RESET:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

.field public static final enum ACTION_ZOOM:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    const-string/jumbo v1, "ACTION_ZOOM"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_ZOOM:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    .line 42
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    const-string/jumbo v1, "ACTION_DRAG"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_DRAG:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    .line 43
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    const-string/jumbo v1, "ACTION_RESET"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_RESET:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_ZOOM:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_DRAG:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->ACTION_RESET:Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCustomFrameLayout$ActionType;

    return-object v0
.end method
