.class final Lgop$11;
.super Ljava/lang/Object;
.source "SpaceShareRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgop;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/Long;

.field final synthetic f:Ljava/lang/Long;

.field final synthetic g:Lcma;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;ZZLjava/lang/Long;Ljava/lang/Long;Lcma;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lgop$11;->a:Ljava/lang/String;

    iput-object p2, p0, Lgop$11;->b:Ljava/lang/Long;

    iput-boolean p3, p0, Lgop$11;->c:Z

    iput-boolean p4, p0, Lgop$11;->d:Z

    iput-object p5, p0, Lgop$11;->e:Ljava/lang/Long;

    iput-object p6, p0, Lgop$11;->f:Ljava/lang/Long;

    iput-object p7, p0, Lgop$11;->g:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 107
    const-class v2, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 109
    .local v1, "service":Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;
    new-instance v0, Lgim;

    invoke-direct {v0}, Lgim;-><init>()V

    .line 110
    .local v0, "paramModel":Lgim;
    iget-object v2, p0, Lgop$11;->a:Ljava/lang/String;

    iput-object v2, v0, Lgim;->b:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lgop$11;->b:Ljava/lang/Long;

    iput-object v2, v0, Lgim;->a:Ljava/lang/Long;

    .line 112
    iget-boolean v2, p0, Lgop$11;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lgim;->d:Ljava/lang/Boolean;

    .line 113
    iget-boolean v2, p0, Lgop$11;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lgim;->g:Ljava/lang/Boolean;

    .line 114
    iget-object v2, p0, Lgop$11;->e:Ljava/lang/Long;

    iput-object v2, v0, Lgim;->e:Ljava/lang/Long;

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lgim;->f:Ljava/util/List;

    .line 117
    iget-object v2, v0, Lgim;->f:Ljava/util/List;

    iget-object v3, p0, Lgop$11;->f:Ljava/lang/Long;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lgop$11$1;

    invoke-direct {v2, p0}, Lgop$11$1;-><init>(Lgop$11;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->create(Lgim;Liyv;)V

    .line 136
    return-void
.end method
