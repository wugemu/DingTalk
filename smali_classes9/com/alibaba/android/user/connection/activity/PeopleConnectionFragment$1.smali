.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$1;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Lfdp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$1;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$1;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->a(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$1;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return-object v0
.end method
