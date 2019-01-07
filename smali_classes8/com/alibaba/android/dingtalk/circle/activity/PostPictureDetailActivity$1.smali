.class final Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$1;
.super Ljava/lang/Object;
.source "PostPictureDetailActivity.java"

# interfaces
.implements Lboy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/PostPictureDetailActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method
