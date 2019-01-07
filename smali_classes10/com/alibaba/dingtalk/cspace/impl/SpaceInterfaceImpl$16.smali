.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;->c:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2622
    const-string/jumbo v3, "LIFECYCLE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 2623
    .local v1, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    if-nez v1, :cond_0

    .line 2624
    sget v3, Lfzs$h;->send_fail:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 2625
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "SpaceInterfaceImpl"

    const-string/jumbo v5, "checkPermissionForSpaceLink: lifecycleMonitor is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    :goto_0
    return-void

    .line 2628
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->getForegroundTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2629
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 2630
    sget v3, Lfzs$h;->send_fail:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 2631
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "SpaceInterfaceImpl"

    const-string/jumbo v5, "checkPermissionForSpaceLink: activity is null"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2634
    :cond_1
    new-instance v2, Lglj$b;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v2, v0, v3, v4}, Lglj$b;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2636
    .local v2, "permissionChecker":Lglj$b;
    invoke-virtual {v2}, Lglj$b;->d()V

    goto :goto_0
.end method
