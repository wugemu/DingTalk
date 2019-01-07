.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;
.super Ljava/lang/Object;
.source "DocScanFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->b(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    move-result-object v0

    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->EDGE_DETECTING:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    sget-object v1, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;->PREVIEW:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;)Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$ShootingState;

    .line 415
    :cond_0
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a()V

    .line 426
    const-string/jumbo v0, "DocScanFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "EDGE_DETECTING onException : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " msg: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 409
    .line 1419
    invoke-direct {p0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a()V

    .line 1420
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->f(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->c(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)[F

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->d(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$3;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->e(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a([FIII)V

    .line 409
    return-void
.end method
