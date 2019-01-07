.class public final Lgop$16;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lgop$16;->a:Ljava/lang/String;

    iput-object p2, p0, Lgop$16;->b:Lcma;

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
    .line 211
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 212
    .local v0, "service":Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;
    iget-object v1, p0, Lgop$16;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Lgop$16$1;

    invoke-direct {v3, p0}, Lgop$16$1;-><init>(Lgop$16;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->dismiss(Ljava/lang/String;Ljava/lang/Boolean;Liyv;)V

    .line 229
    return-void
.end method
