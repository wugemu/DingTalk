.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;
.super Ljava/lang/Object;
.source "CircleGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "guideImgMediaId"    # Ljava/lang/String;
    .param p2, "guideText"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->a:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$b;->b:Ljava/lang/String;

    .line 125
    return-void
.end method
