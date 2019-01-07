.class final Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$3;
.super Ljava/lang/Object;
.source "PostHistoryActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$3;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 123
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    check-cast p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 1126
    if-eqz p1, :cond_2

    .line 1127
    if-nez p2, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :cond_2
    const/4 v0, -0x1

    .line 123
    goto :goto_0
.end method
