.class public final enum Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;
.super Ljava/lang/Enum;
.source "TeleConfCallControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

.field public static final enum TYPE_ACCEPTING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

.field public static final enum TYPE_CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

.field public static final enum TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

.field public static final enum TYPE_JOINING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

.field public static final enum TYPE_TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    const-string/jumbo v1, "TYPE_CALLING"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    .line 92
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    const-string/jumbo v1, "TYPE_CALLED"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    .line 93
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    const-string/jumbo v1, "TYPE_ACCEPTING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_ACCEPTING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    .line 94
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    const-string/jumbo v1, "TYPE_JOINING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_JOINING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    .line 95
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    const-string/jumbo v1, "TYPE_TALKING"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_ACCEPTING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_JOINING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    return-object v0
.end method
