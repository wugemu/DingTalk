.class final Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;
.super Ljava/lang/Object;
.source "BrowserFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->onCreate(Landroid/os/Bundle;)V
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

.field final synthetic b:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;->b:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 170
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    check-cast p1, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1162
    if-eqz p1, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;->b:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-static {v0, p1, v1}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->a(Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;[Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment$1;->b:Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/BrowserFragment;->h()V

    .line 159
    :cond_0
    return-void
.end method
