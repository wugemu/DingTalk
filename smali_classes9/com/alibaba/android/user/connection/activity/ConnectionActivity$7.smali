.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$7;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lfdp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$7;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$7;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->d(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$7;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return-object v0
.end method
