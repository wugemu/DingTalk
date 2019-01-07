.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$6;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
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
        "Lgny;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 626
    check-cast p1, Lgny;

    .line 1629
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1634
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    if-nez p1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)V

    .line 626
    :cond_0
    return-void

    .line 1634
    :cond_1
    iget-wide v0, p1, Lgny;->a:J

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 644
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 639
    return-void
.end method
