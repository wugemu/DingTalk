.class public final Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;
.super Ljava/lang/Object;
.source "SpaceConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants$CooperationRole;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/CharSequence;

.field public static b:I

.field public static c:I

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    const-string/jumbo v0, "default_folder"

    sput-object v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->a:Ljava/lang/CharSequence;

    .line 692
    sput v1, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->b:I

    .line 693
    sput v2, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->c:I

    .line 705
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->d:Ljava/lang/Integer;

    .line 706
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->e:Ljava/lang/Integer;

    .line 707
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->f:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    return-void
.end method
