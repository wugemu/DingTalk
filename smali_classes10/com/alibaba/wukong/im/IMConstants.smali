.class public Lcom/alibaba/wukong/im/IMConstants;
.super Ljava/lang/Object;
.source "IMConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/IMConstants$VERSION;,
        Lcom/alibaba/wukong/im/IMConstants$ErrorCode;
    }
.end annotation


# static fields
.field public static final AT_ALL_UID:J = 0xaL

.field public static final DING_BIZ_TYPE_VALUE:Ljava/lang/String; = "1"

.field public static final KEY_IS_LISTV3_CALLED:Ljava/lang/String; = "k_is_listV3_called_"

.field public static final MESSAGE_EXTENSION_DING_BIZ_TYPE:Ljava/lang/String; = "ding_biz_type"

.field public static final TAG:Ljava/lang/String; = "WKLog"

.field public static USER_AVAILABLE:Z

.field public static YEAR_2000_MILLS:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/wukong/im/IMConstants;->USER_AVAILABLE:Z

    .line 16
    const-wide v0, 0xdc69183800L

    sput-wide v0, Lcom/alibaba/wukong/im/IMConstants;->YEAR_2000_MILLS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method
