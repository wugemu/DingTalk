.class public final Lcom/alibaba/android/dingtalkim/IMConstant;
.super Ljava/lang/Object;
.source "IMConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Long;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/IMConstant;->a:Ljava/lang/Long;

    .line 864
    const-string/jumbo v0, "isFirstTimeSingleChatUnreadMemberTipShow"

    sput-object v0, Lcom/alibaba/android/dingtalkim/IMConstant;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    return-void
.end method
