.class public final Lgop$15;
.super Ljava/lang/Object;
.source "SpaceShareRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:I

.field final synthetic c:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/Long;ILcma;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lgop$15;->a:Ljava/lang/Long;

    iput p2, p0, Lgop$15;->b:I

    iput-object p3, p0, Lgop$15;->c:Lcma;

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
    .line 178
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 180
    .local v0, "service":Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;
    iget-object v1, p0, Lgop$15;->a:Ljava/lang/Long;

    iget v2, p0, Lgop$15;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lgop$15$1;

    invoke-direct {v3, p0}, Lgop$15$1;-><init>(Lgop$15;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->listFolers(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V

    .line 200
    return-void
.end method
