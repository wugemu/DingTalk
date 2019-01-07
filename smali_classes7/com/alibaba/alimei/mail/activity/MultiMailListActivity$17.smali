.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1112
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    .line 1113
    .local v0, "folderApi":Lcom/alibaba/alimei/sdk/api/FolderApi;
    if-eqz v0, :cond_1

    .line 1114
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;)V

    .line 1131
    .local v1, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderByType(ILxv;)V

    .line 1135
    .end local v1    # "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1136
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$17;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 1138
    :cond_0
    return-void

    .line 1133
    :cond_1
    const-string/jumbo v2, "MultiMailListActivity"

    const-string/jumbo v3, "query outbox folder fail for foderApi is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
