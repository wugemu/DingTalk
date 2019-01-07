.class final enum Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;
.super Ljava/lang/Enum;
.source "WPSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WpsEditingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

.field public static final enum STATUS_COMPLETE:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

.field public static final enum STATUS_CREATE_TEMP:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

.field public static final enum STATUS_EDITING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

.field public static final enum STATUS_UPLOADING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 589
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    const-string/jumbo v1, "STATUS_CREATE_TEMP"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_CREATE_TEMP:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 590
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    const-string/jumbo v1, "STATUS_EDITING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_EDITING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 591
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    const-string/jumbo v1, "STATUS_UPLOADING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_UPLOADING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 592
    new-instance v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    const-string/jumbo v1, "STATUS_COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_COMPLETE:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    .line 588
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    sget-object v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_CREATE_TEMP:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_EDITING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_UPLOADING:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->STATUS_COMPLETE:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->$VALUES:[Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

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
    .line 588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 588
    const-class v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->$VALUES:[Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$WpsEditingStatus;

    return-object v0
.end method
