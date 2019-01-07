.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;
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
    .line 1057
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
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

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "spaceInfos":Ljava/util/List;, "Ljava/util/List<Lgic;>;"
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1060
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v1}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgic;

    .line 1065
    .local v0, "spaceModel":Lgic;
    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-object v2, v0, Lgic;->d:Ljava/lang/Long;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lgic;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->c(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)J

    .line 1070
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    iget-object v2, v0, Lgic;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lgic;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_2
    invoke-static {v1, v4, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;J)J

    .line 1071
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->w(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->w(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    sget v3, Lfzs$h;->dt_space_capacity:I

    .line 1073
    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .line 1074
    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->x(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)J

    move-result-wide v4

    .line 2046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 1074
    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity$17;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;

    .line 1075
    invoke-static {v4}, Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;->y(Lcom/alibaba/dingtalk/cspace/activity/SpaceMain2Activity;)J

    move-result-wide v4

    .line 3046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 1075
    aput-object v4, v3, v7

    .line 1073
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-wide v2, v4

    .line 1069
    goto :goto_1
.end method
