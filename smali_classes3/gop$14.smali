.class public final Lgop$14;
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
    .line 145
    iput-object p1, p0, Lgop$14;->a:Ljava/lang/String;

    iput-object p2, p0, Lgop$14;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 148
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 149
    .local v0, "service":Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;
    iget-object v1, p0, Lgop$14;->a:Ljava/lang/String;

    new-instance v2, Lgop$14$1;

    invoke-direct {v2, p0}, Lgop$14$1;-><init>(Lgop$14;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->quit(Ljava/lang/String;Liyv;)V

    .line 166
    return-void
.end method
