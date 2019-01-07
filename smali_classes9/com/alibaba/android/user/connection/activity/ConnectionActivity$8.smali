.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$8;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
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
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$8;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

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
    .line 776
    .line 1779
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$8;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->i(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    invoke-static {}, Lfcc;->a()I

    move-result v1

    invoke-static {}, Lfcc;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/connection/ui/ScrollControlLinearlLayoutManager;->scrollToPositionWithOffset(II)V

    .line 776
    return-void
.end method
