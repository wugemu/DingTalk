.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$2;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/circle/shield/ShieldPresenter$ShieldOperation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 1
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$2;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->g(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lbqd;

    move-result-object v0

    invoke-interface {v0, p1}, Lbqd;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    .line 568
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 0
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .prologue
    .line 573
    return-void
.end method
