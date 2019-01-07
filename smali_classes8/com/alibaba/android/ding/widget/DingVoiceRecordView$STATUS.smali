.class public final enum Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;
.super Ljava/lang/Enum;
.source "DingVoiceRecordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingVoiceRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

.field public static final enum STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

.field public static final enum STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

.field public static final enum STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

.field public static final enum STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

.field public static final enum STATUS_RECORDING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 727
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    const-string/jumbo v1, "STATUS_INIT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 728
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    const-string/jumbo v1, "STATUS_RECORDING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_RECORDING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 729
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    const-string/jumbo v1, "STATUS_READY"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 730
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    const-string/jumbo v1, "STATUS_PLAYING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 731
    new-instance v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    const-string/jumbo v1, "STATUS_PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    .line 726
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_INIT:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_RECORDING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_READY:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PLAYING:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->STATUS_PAUSE:Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->$VALUES:[Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

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
    .line 726
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 726
    const-class v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;
    .locals 1

    .prologue
    .line 726
    sget-object v0, Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->$VALUES:[Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/widget/DingVoiceRecordView$STATUS;

    return-object v0
.end method
