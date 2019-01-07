.class final Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;
.super Ljava/lang/Object;
.source "SearchCustomerFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;
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
        "Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 164
    check-cast p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    iget-wide v2, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->nextCursor:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;J)J

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->f(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setCanScrollLoadMore(Z)V

    .line 1170
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->a:Z

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Lfma;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfma;->e(Ljava/util/List;)V

    .line 1175
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->h(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V

    .line 164
    return-void

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->g(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Lfma;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfma;->a(Ljava/util/List;)V

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
    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->e(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment$3;->b:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->h(Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;)V

    .line 187
    invoke-static {p1, p2}, Lcms;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 181
    return-void
.end method
