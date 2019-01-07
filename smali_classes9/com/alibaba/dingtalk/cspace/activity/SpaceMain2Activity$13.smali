.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


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
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
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
    .line 893
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 922
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "SpaceBaseActivity"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getRecentInfo errorCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " errorMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 893
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 893
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1896
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$13;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 893
    return-void
.end method
