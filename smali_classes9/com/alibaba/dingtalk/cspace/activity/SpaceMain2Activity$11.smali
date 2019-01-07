.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;
.super Ljava/lang/Object;
.source "SpaceMain2Activity.java"

# interfaces
.implements Lglg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgic;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 834
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v2}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 840
    .local v0, "spaceUpdateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lgic;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgic;

    .line 841
    .local v1, "updateInfo":Lgic;
    iget-object v3, v1, Lgic;->a:Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 842
    iget-object v3, v1, Lgic;->a:Ljava/lang/Long;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_2
    iget-object v3, v1, Lgic;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 845
    invoke-static {v4, v5, v1}, Lgpr;->a(JLgic;)V

    goto :goto_1

    .line 848
    .end local v1    # "updateInfo":Lgic;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 849
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    move-result-object v2

    .line 1130
    iput-object v0, v2, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a:Ljava/util/HashMap;

    .line 850
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$11;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->p(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
