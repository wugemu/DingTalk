.class final Lcwv$3;
.super Ljava/lang/Object;
.source "RemindCardItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwv;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwv;


# direct methods
.method constructor <init>(Lcwv;)V
    .locals 0
    .param p1, "this$0"    # Lcwv;

    .prologue
    .line 261
    iput-object p1, p0, Lcwv$3;->a:Lcwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    iget-object v2, p0, Lcwv$3;->a:Lcwv;

    invoke-static {v2}, Lcwv;->e(Lcwv;)Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcwv$3;->a:Lcwv;

    invoke-static {v2}, Lcwv;->e(Lcwv;)Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 268
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v3, p0, Lcwv$3;->a:Lcwv;

    iget-object v3, v3, Lcwv;->d:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 271
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
