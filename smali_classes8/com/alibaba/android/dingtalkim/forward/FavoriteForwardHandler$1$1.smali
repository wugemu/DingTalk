.class final Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;
.super Ljava/lang/Object;
.source "FavoriteForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->a:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->sendText(Ldiz;)V

    .line 75
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1$1;->a:Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler$1;->a:Ldiz;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/FavoriteForwardHandler;->sendText(Ldiz;)V

    .line 85
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 80
    return-void
.end method
