.class public final enum Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;
.super Ljava/lang/Enum;
.source "DingAttachmentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

.field public static final enum NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

.field public static final enum PREPARED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

.field public static final enum UPLOADED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

.field public static final enum UPLOADING:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

.field public static final enum UPLOAD_FAILED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    const-string/jumbo v1, "PREPARED"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->PREPARED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 64
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    const-string/jumbo v1, "UPLOADING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADING:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 65
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    const-string/jumbo v1, "UPLOADED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 66
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    const-string/jumbo v1, "UPLOAD_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOAD_FAILED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 67
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    const-string/jumbo v1, "NOT_NEED_UPLOAD"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->PREPARED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADING:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOADED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOAD_FAILED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->NOT_NEED_UPLOAD:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->$VALUES:[Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->$VALUES:[Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    return-object v0
.end method
