.class public final Lgmc;
.super Ljava/lang/Object;
.source "SpaceMenuWrapper.java"

# interfaces
.implements Lgqj;


# instance fields
.field a:Lgmb;

.field b:Landroid/content/Context;

.field c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

.field d:Lgly;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "spaceMenuBottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lgmc;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lgmc;->a:Lgmb;

    .line 51
    iput-object p3, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 53
    iget-object v0, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setOnMenuClickListener(Lgqj;)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 123
    iget-object v0, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Z)V

    .line 125
    iget-object v0, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->c()V

    goto :goto_0
.end method

.method public final a(Lgqm;)V
    .locals 5
    .param p1, "menuObject"    # Lgqm;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 60
    invoke-static {p1}, Lglz;->a(Lgqm;)Lgly;

    move-result-object v1

    iput-object v1, p0, Lgmc;->d:Lgly;

    .line 62
    iget-object v1, p0, Lgmc;->d:Lgly;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgmc;->a:Lgmb;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v1, p0, Lgmc;->a:Lgmb;

    iget-object v1, v1, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v1, :cond_2

    .line 67
    iget-object v1, p0, Lgmc;->d:Lgly;

    iget-object v2, p0, Lgmc;->b:Landroid/content/Context;

    iget-object v3, p0, Lgmc;->a:Lgmb;

    iget-object v4, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v1, v2, v3, v4, p1}, Lgly;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;Lgqm;)V

    goto :goto_0

    .line 74
    :cond_2
    :try_start_0
    iget-object v1, p0, Lgmc;->a:Lgmb;

    iget-object v1, v1, Lgmb;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    iget-object v1, p0, Lgmc;->a:Lgmb;

    iget-object v1, v1, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->e(Ljava/lang/String;)Z

    .line 113
    iget-object v1, p0, Lgmc;->d:Lgly;

    iget-object v2, p0, Lgmc;->b:Landroid/content/Context;

    iget-object v3, p0, Lgmc;->a:Lgmb;

    iget-object v4, p0, Lgmc;->c:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v1, v2, v3, v4, p1}, Lgly;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;Lgqm;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method
