.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;
.super Ljava/lang/Object;
.source "SpaceBaseActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Z

.field final synthetic e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;ZLjava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->b:Z

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->c:Ljava/util/List;

    iput-boolean p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1092
    check-cast p1, Ljava/lang/Boolean;

    .line 2095
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->e:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;I)V

    .line 2096
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$23;Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1092
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1128
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1123
    return-void
.end method
