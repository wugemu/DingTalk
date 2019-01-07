.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;
.super Ljava/lang/Object;
.source "FavoriteSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;->b:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;->a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity;)Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteSearchActivity$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspace/favorite/view/FavoriteSearchView;->setAndSearch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "FavoriteSearchActivity"

    const-string/jumbo v3, "FavoriteSearchActivity.setAndSearch"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    .line 88
    invoke-static {v3, v4, v5, v0}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
