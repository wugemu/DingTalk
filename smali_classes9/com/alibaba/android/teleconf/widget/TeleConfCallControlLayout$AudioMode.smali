.class public final enum Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
.super Ljava/lang/Enum;
.source "TeleConfCallControlLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

.field public static final enum MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

.field public static final enum MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

.field public static final enum MODE_S_BLUETOOTH:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

.field public static final enum MODE_S_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

.field public static final enum MODE_S_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    const-string/jumbo v1, "MODE_N_SPEAKER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 100
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    const-string/jumbo v1, "MODE_N_RECEIVER"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 101
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    const-string/jumbo v1, "MODE_S_SPEAKER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 102
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    const-string/jumbo v1, "MODE_S_RECEIVER"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 103
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    const-string/jumbo v1, "MODE_S_BLUETOOTH"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_BLUETOOTH:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_BLUETOOTH:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->$VALUES:[Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    return-object v0
.end method
