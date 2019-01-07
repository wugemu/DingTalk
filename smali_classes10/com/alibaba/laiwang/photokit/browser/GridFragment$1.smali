.class final Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/GridFragment;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<[",
        "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/laiwang/photokit/browser/GridFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/GridFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->c:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput-boolean p3, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 85
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    check-cast p1, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1077
    if-eqz p1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->c:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->b:Z

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->a(Lcom/alibaba/laiwang/photokit/browser/GridFragment;[Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;->c:Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->b()V

    .line 74
    :cond_0
    return-void
.end method
