.class final Lgav$1;
.super Ljava/lang/Object;
.source "MessageTransfer2FavoriteManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgcj;

.field final synthetic b:Lgav;


# direct methods
.method constructor <init>(Lgav;Lgcj;)V
    .locals 0
    .param p1, "this$0"    # Lgav;

    .prologue
    .line 66
    iput-object p1, p0, Lgav$1;->b:Lgav;

    iput-object p2, p0, Lgav$1;->a:Lgcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    .line 1069
    iget-object v0, p0, Lgav$1;->a:Lgcj;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lgav$1;->a:Lgcj;

    invoke-virtual {v0}, Lgcj;->b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    iget-object v1, p0, Lgav$1;->b:Lgav;

    .line 2019
    iget-object v1, v1, Lgav;->a:Ljava/util/List;

    .line 1072
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_0
    iget-object v0, p0, Lgav$1;->b:Lgav;

    invoke-virtual {v0}, Lgav;->a()V

    .line 66
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    iget-object v1, p0, Lgav$1;->a:Lgcj;

    invoke-virtual {v1}, Lgcj;->b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 86
    .local v0, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    iget-object v1, p0, Lgav$1;->b:Lgav;

    .line 1019
    iget-object v1, v1, Lgav;->a:Ljava/util/List;

    .line 86
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lgav$1;->b:Lgav;

    invoke-virtual {v1}, Lgav;->a()V

    .line 88
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 81
    return-void
.end method
