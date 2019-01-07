.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field b:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;I)V
    .locals 0
    .param p1, "post"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "index"    # I

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 921
    iput p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$a;->b:I

    .line 922
    return-void
.end method
