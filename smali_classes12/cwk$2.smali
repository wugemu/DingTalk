.class final Lcwk$2;
.super Ljava/lang/Object;
.source "MiniAppMarkdownViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwk;


# direct methods
.method constructor <init>(Lcwk;)V
    .locals 0
    .param p1, "this$0"    # Lcwk;

    .prologue
    .line 98
    iput-object p1, p0, Lcwk$2;->a:Lcwk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 101
    iget-object v2, p0, Lcwk$2;->a:Lcwk;

    iget-object v2, v2, Lcwk;->X:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2}, Ldkc;->K(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    move-result-object v1

    .line 102
    .local v1, "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppLink:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcwk$2;->a:Lcwk;

    .line 1188
    iget-object v3, v3, Lcwk;->Y:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcwk$2;->a:Lcwk;

    .line 1203
    iget v2, v2, Lcwk;->Z:I

    .line 106
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 107
    const-string/jumbo v2, "ding_content_type"

    const/16 v3, 0x3ef

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    iget-object v3, p0, Lcwk$2;->a:Lcwk;

    iget-object v3, v3, Lcwk;->d:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 117
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 110
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    iget-object v2, p0, Lcwk$2;->a:Lcwk;

    .line 2203
    iget v2, v2, Lcwk;->Z:I

    .line 110
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 111
    const-string/jumbo v2, "ding_content_type"

    const/16 v3, 0x3f0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
