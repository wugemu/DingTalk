.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;
.super Lgqq;
.source "SpaceInterfaceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Void;

    .prologue
    .line 304
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 308
    :cond_0
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 289
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 297
    :cond_0
    const-string/jumbo v0, "2016"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_1
    return-void
.end method
