.class final Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;
.super Ljava/lang/Object;
.source "FilterCustomerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "db_key_crm_tags_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcmu;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 131
    .local v2, "localList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/crm/model/CrmTagObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const/4 v1, 0x1

    .line 134
    .local v1, "hasShow":Z
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$1;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 145
    :goto_0
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;-><init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;Z)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    .line 178
    invoke-virtual {v6}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 145
    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 179
    .local v0, "callback":Lcma;
    invoke-static {}, Lfml;->a()Lfmk;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-static {v4}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v0}, Lfmk;->a(JLcma;)V

    .line 180
    return-void

    .line 142
    .end local v0    # "callback":Lcma;
    .end local v1    # "hasShow":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "hasShow":Z
    goto :goto_0
.end method
