.class final Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;
.super Ljava/lang/Object;
.source "MyCustomerFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->c(Z)Lcma;
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

.field final synthetic b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 246
    check-cast p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;

    .line 1249
    if-eqz p1, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    iget-wide v2, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->nextCursor:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;J)J

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->g(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setCanScrollLoadMore(Z)V

    .line 1253
    iget-boolean v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->a:Z

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lfma;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfma;->e(Ljava/util/List;)V

    .line 1263
    :goto_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1264
    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1265
    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1269
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->j(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1270
    iget-boolean v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->hasMore:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Z)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1271
    invoke-static {}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    iget v0, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->count:I

    if-lez v0, :cond_4

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    sget v2, Lezg$l;->dt_user_crm_my_customer_count:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1281
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    .line 246
    return-void

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->i(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lfmb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->i(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lfmb;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->extObject:Lfmj;

    invoke-interface {v0, v1}, Lfmb;->a(Lfmj;)V

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Lfma;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/user/crm/model/CrmCustomerObjectList;->modelList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfma;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 1267
    :cond_3
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1278
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->k(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->f(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment$4;->b:Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->l(Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;)V

    .line 293
    invoke-static {p1, p2}, Lcms;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/alibaba/android/user/crm/fragment/MyCustomerFragment;->h()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fail for code %s,reason:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 287
    return-void
.end method
