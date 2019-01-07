.class public final Lgmk;
.super Lgly;
.source "SpaceMenuCreateFileHandler.java"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lgmk$1;

    invoke-direct {v0}, Lgmk$1;-><init>()V

    sput-object v0, Lgmk;->a:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Lgmk$2;

    invoke-direct {v0}, Lgmk$2;-><init>()V

    sput-object v0, Lgmk;->b:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lgly;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lgmb;Ljava/lang/Object;Lgqm;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramModel"    # Lgmb;
    .param p3, "willChange"    # Ljava/lang/Object;
    .param p4, "menuObject"    # Lgqm;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    sget-object v1, Lgmk;->b:Landroid/util/SparseArray;

    iget v2, p4, Lgqm;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "clickKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    if-eqz v1, :cond_1

    .line 45
    check-cast p1, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;

    .end local p1    # "context":Landroid/content/Context;
    sget-object v1, Lgmk;->a:Landroid/util/SparseArray;

    iget v2, p4, Lgqm;->a:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceBaseActivity;->a(Ljava/lang/String;)V

    .line 47
    :cond_1
    return-void
.end method
