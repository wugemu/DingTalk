.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$5;
.super Ljava/lang/Object;
.source "SpaceStatisticActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 569
    check-cast p1, Ljava/util/List;

    .line 1572
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceStatisticActivity;Ljava/util/List;)V

    .line 569
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 583
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 578
    return-void
.end method
