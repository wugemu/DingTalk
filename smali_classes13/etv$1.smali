.class final Letv$1;
.super Ljava/lang/Object;
.source "MiniAppSearchItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Letv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

.field final synthetic b:Letv;


# direct methods
.method constructor <init>(Letv;Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;)V
    .locals 0
    .param p1, "this$0"    # Letv;

    .prologue
    .line 68
    iput-object p1, p0, Letv$1;->b:Letv;

    iput-object p2, p0, Letv$1;->a:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Letv$1;->a:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    iget-object v2, v2, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->a:Lcom/alibaba/android/search/model/LightAppModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/LightAppModel;->getJumpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Letv$1;->b:Letv;

    invoke-static {v2}, Letv;->a(Letv;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 74
    return-void
.end method
