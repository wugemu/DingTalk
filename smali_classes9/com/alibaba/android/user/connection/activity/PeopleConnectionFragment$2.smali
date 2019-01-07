.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$2;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$2;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$2;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;->b(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    invoke-static {}, Lfcc;->a()I

    move-result v1

    invoke-static {}, Lfcc;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->scrollToPositionWithOffset(II)V

    .line 165
    return-void
.end method
