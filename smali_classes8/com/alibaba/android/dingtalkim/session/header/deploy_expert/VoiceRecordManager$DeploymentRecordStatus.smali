.class public final enum Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;
.super Ljava/lang/Enum;
.source "VoiceRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeploymentRecordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

.field public static final enum INVALID_PARAM:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

.field public static final enum PERMISSION_DENIED:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

.field public static final enum SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

.field public static final enum UNKNOWN:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    const-string/jumbo v1, "INVALID_PARAM"

    invoke-direct {v0, v1, v5, v3}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->INVALID_PARAM:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->UNKNOWN:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    new-instance v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    const-string/jumbo v1, "PERMISSION_DENIED"

    invoke-direct {v0, v1, v4, v6}, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->PERMISSION_DENIED:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    .line 354
    new-array v0, v6, [Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->SUCCESS:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->INVALID_PARAM:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->UNKNOWN:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->PERMISSION_DENIED:Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->$VALUES:[Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 358
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 359
    iput p3, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->code:I

    .line 360
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    const-class v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->$VALUES:[Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/header/deploy_expert/VoiceRecordManager$DeploymentRecordStatus;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
