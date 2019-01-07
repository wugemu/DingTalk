.class public final Lgdr;
.super Ljava/lang/Object;
.source "SpaceLikePresenter.java"

# interfaces
.implements Lgdq$a;


# instance fields
.field final a:Lgdq$b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILgdq$b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "commentedObjectType"    # I
    .param p5, "view"    # Lgdq$b;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lgdr;->e:I

    .line 41
    iput-object p1, p0, Lgdr;->d:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lgdr;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lgdr;->c:Ljava/lang/String;

    .line 44
    iput p4, p0, Lgdr;->e:I

    .line 45
    iput-object p5, p0, Lgdr;->a:Lgdq$b;

    .line 47
    iget-object v0, p0, Lgdr;->a:Lgdq$b;

    invoke-interface {v0, p0}, Lgdq$b;->setPresenter(Lcjd;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lgdr;->a:Lgdq$b;

    invoke-interface {v0}, Lgdq$b;->b()V

    .line 55
    new-instance v7, Lgdr$1;

    invoke-direct {v7, p0}, Lgdr$1;-><init>(Lgdr;)V

    .line 91
    .local v7, "callback":Lcma;, "Lcma<Lgqv;>;"
    iget-object v0, p0, Lgdr;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgdr;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v0, p0, Lgdr;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v7, v2, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "callback":Lcma;, "Lcma<Lgqv;>;"
    check-cast v7, Lcma;

    .line 95
    .restart local v7    # "callback":Lcma;, "Lcma<Lgqv;>;"
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lgdr;->b:Ljava/lang/String;

    iget v2, p0, Lgdr;->e:I

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2535
    if-eqz v7, :cond_1

    .line 2539
    new-instance v6, Lgon$16;

    invoke-direct {v6, v0, v7}, Lgon$16;-><init>(Lgon;Lcma;)V

    .line 2551
    iget-object v0, v0, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;->listLike(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 96
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
