.class final Lgdw$3;
.super Ljava/lang/Object;
.source "DentryListPresenter.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdw;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgoa;

.field final synthetic b:Lgdw;


# direct methods
.method constructor <init>(Lgdw;Lgoa;)V
    .locals 0
    .param p1, "this$0"    # Lgdw;

    .prologue
    .line 487
    iput-object p1, p0, Lgdw$3;->b:Lgdw;

    iput-object p2, p0, Lgdw$3;->a:Lgoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;)V
    .locals 3
    .param p1, "category"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 490
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    move-result-object v1

    iget-object v0, p0, Lgdw$3;->b:Lgdw;

    iget-object v0, v0, Lgdw;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lgdw$3;->a:Lgoa;

    invoke-virtual {v1, v0, p1, v2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;Lgoa;)V

    .line 491
    return-void
.end method
