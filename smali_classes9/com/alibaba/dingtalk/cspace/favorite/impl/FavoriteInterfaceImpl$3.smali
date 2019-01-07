.class final Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;
.super Ljava/lang/Object;
.source "FavoriteInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->b:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    check-cast p1, Ljava/util/List;

    .line 1207
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->b:Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;->a(Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl;Landroid/content/Context;)Lcma;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lgar;->a(Ljava/util/List;Lcma;Landroid/content/Context;)V

    :goto_0
    return-void

    .line 1210
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->favorite_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/impl/FavoriteInterfaceImpl$3;->a:Landroid/content/Context;

    sget v1, Lfzs$h;->favorite_fail:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 222
    return-void
.end method
