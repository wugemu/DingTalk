.class final Lcom/alibaba/android/user/external/list/ExternalListFragment$13;
.super Ljava/lang/Object;
.source "ExternalListFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/list/ExternalListFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ExternalListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ExternalListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ExternalListFragment;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$13;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3
    .param p1, "lastPosition"    # I
    .param p2, "nowPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 500
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$13;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->i(Lcom/alibaba/android/user/external/list/ExternalListFragment;)[Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    move-result-object v1

    aget-object v0, v1, p2

    .line 501
    .local v0, "scope":Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;
    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->MINE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    const-string/jumbo v1, "contact_exter_list_changelist_incharge"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 512
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ExternalListFragment$13;->a:Lcom/alibaba/android/user/external/list/ExternalListFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/external/list/ExternalListFragment;->a(Lcom/alibaba/android/user/external/list/ExternalListFragment;I)V

    .line 513
    return-void

    .line 503
    :cond_1
    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SHARE_ME:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    const-string/jumbo v1, "contact_exter_list_changelist_share"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_2
    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->SUB:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    const-string/jumbo v1, "contact_exter_list_changelist_branch"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_3
    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->ALL:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    const-string/jumbo v1, "contact_exter_list_changelist_company"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_4
    sget-object v1, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->FREE:Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/external/list/ExternalListFragment$Scope;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    const-string/jumbo v1, "contact_exter_list_changelist_undistribute"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
