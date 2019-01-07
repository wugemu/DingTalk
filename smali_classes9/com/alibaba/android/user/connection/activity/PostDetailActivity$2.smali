.class final Lcom/alibaba/android/user/connection/activity/PostDetailActivity$2;
.super Ljava/lang/Object;
.source "PostDetailActivity.java"

# interfaces
.implements Lfdp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostDetailActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PostDetailActivity;->a(Lcom/alibaba/android/user/connection/activity/PostDetailActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method
