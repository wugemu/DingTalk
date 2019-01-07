.class public final enum Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
.super Ljava/lang/Enum;
.source "FocusProjectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppShareStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field public static final enum Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field public static final enum Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field public static final enum Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

.field public static final enum Unknown:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Unknown:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    const-string/jumbo v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    const-string/jumbo v1, "Preparing"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    const-string/jumbo v1, "Running"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    .line 226
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Unknown:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Preparing:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->$VALUES:[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

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
    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    const-class v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->$VALUES:[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    return-object v0
.end method
