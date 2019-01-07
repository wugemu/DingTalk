.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;
.super Ljava/lang/Object;
.source "FavoriteListBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;->b:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->dismiss()V

    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->a()V

    .line 125
    :cond_0
    return-void
.end method
