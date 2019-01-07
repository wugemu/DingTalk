.class public final Lcom/alibaba/android/ding/base/interfaces/DingConstants;
.super Ljava/lang/Object;
.source "DingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_REMIND_TYPE_ENUM;,
        Lcom/alibaba/android/ding/base/interfaces/DingConstants$MeetingType;,
        Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_DEADLINE_TYPE;,
        Lcom/alibaba/android/ding/base/interfaces/DingConstants$DING_SEND_TYPE;,
        Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants;->a:I

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/android/ding/base/interfaces/DingConstants;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method
