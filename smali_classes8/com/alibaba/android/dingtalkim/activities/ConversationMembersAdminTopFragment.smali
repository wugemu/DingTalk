.class public Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;
.super Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
.source "ConversationMembersAdminTopFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;I)Ldqw;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v1, 0x0

    .line 25
    .line 2065
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2070
    :goto_0
    return-object v0

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    invoke-virtual {v0, p1}, Lcwe;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 2069
    if-eqz v0, :cond_1

    instance-of v2, v0, Ldqw;

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 2070
    goto :goto_0

    .line 2072
    :cond_2
    check-cast v0, Ldqw;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "displayResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    const/4 v0, 0x1

    .line 90
    if-nez p1, :cond_1

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/ArrayList;)I

    move-result v0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->j:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    const/4 v6, 0x1

    .line 78
    :try_start_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->j:I

    if-ne v1, v6, :cond_0

    new-instance v1, Lctn;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->h:Ldqw;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->i:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lctn;-><init>(Ldqw;Ljava/util/List;)V

    :goto_0
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    :goto_1
    return-void

    .line 78
    :cond_0
    new-instance v1, Lctp;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->h:Ldqw;

    invoke-direct {v1, v2}, Lctp;-><init>(Ldqw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "member sort error:"

    aput-object v5, v3, v4

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, " cid:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 83
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;->g:Lcwe;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersAdminTopFragment;)V

    .line 1083
    iput-object v1, v0, Lcwe;->u:Lcwe$b;

    .line 62
    return-void
.end method
