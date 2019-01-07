.class final Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;
.super Ljava/lang/Object;
.source "FilterCustomerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;

    iput-object p2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/user/crm/model/CrmTagObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "db_key_crm_tags_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2$1;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;

    iget-object v2, v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1$2;->b:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;

    iget-object v2, v2, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment$1;->a:Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;

    invoke-static {v2}, Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;->a(Lcom/alibaba/android/user/crm/fragment/FilterCustomerFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 164
    return-void
.end method
