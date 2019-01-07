.class final Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;
.super Ljava/lang/Object;
.source "SpaceLinkShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;->a:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;)Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;->b:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;)Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;->a:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;->a(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    .line 107
    :cond_0
    return-void
.end method
