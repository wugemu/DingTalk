.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;
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

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->a:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1134
    check-cast p1, Ljava/lang/Boolean;

    .line 2137
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;I)V

    .line 2138
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v3, v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->h:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->b:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "true"

    :goto_0
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity$2;->c:Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    iget-object v5, v5, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->M:Lgoi;

    .line 3022
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v6

    .line 2138
    invoke-virtual/range {v0 .. v6}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V

    .line 1134
    return-void

    .line 2138
    :cond_0
    const-string/jumbo v4, "false"

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1151
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1146
    return-void
.end method
