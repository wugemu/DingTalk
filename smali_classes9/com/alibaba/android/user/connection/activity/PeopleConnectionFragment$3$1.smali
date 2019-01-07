.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;->c:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;

    iput p2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;->a:I

    iput p3, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;->c:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;->a:I

    iget v2, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$3$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->scrollToPositionWithOffset(II)V

    .line 259
    return-void
.end method
