.class public final enum Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;
.super Ljava/lang/Enum;
.source "TeleConfCallControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

.field public static final enum CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

.field public static final enum CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

.field public static final enum TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    const-string/jumbo v1, "CALLING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    const-string/jumbo v1, "CALLED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    const-string/jumbo v1, "TALKING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ShowState;

    return-object v0
.end method
