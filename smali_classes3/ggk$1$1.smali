.class final Lggk$1$1;
.super Ljava/lang/Object;
.source "ImagesRecentViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lggk$1;->onClick(Landroid/view/View;)V
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

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic c:Lggk$1;


# direct methods
.method constructor <init>(Lggk$1;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$1"    # Lggk$1;

    .prologue
    .line 105
    iput-object p1, p0, Lggk$1$1;->c:Lggk$1;

    iput-object p2, p0, Lggk$1$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    iput-object p3, p0, Lggk$1$1;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lggk$1$1;->c:Lggk$1;

    iget-object v0, v0, Lggk$1;->a:Lggk;

    .line 1044
    iget-object v0, v0, Lggk;->f:Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;

    .line 118
    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/functions/recent/SpaceRecentPhotoObjectsFetcher;->mPhotoObjects:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lggk$1$1;->c:Lggk$1;

    iget-object v0, v0, Lggk$1;->a:Lggk;

    iget-object v0, v0, Lggk;->c:Landroid/os/Handler;

    new-instance v1, Lggk$1$1$1;

    invoke-direct {v1, p0}, Lggk$1$1$1;-><init>(Lggk$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Lggk$1$1;->a()V

    .line 113
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    .line 1108
    invoke-direct {p0}, Lggk$1$1;->a()V

    .line 105
    return-void
.end method
