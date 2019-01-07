.class public final Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;
.super Ljava/lang/Object;
.source "ConnectionLoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->b(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;I)I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->c(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView$2;->a:Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;->a(Lcom/alibaba/android/user/connection/ui/ConnectionLoadingView;I)I

    goto :goto_0
.end method
