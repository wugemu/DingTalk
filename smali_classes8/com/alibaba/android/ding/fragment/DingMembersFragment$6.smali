.class final Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;
.super Ljava/lang/Object;
.source "DingMembersFragment.java"

# interfaces
.implements Lbhp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    sget v2, Laxp$i;->ding_members_no_at:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 384
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 387
    :cond_0
    if-eqz p1, :cond_2

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 389
    .local v0, "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 390
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->c(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/util/List;)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    sget v3, Laxp$i;->ding_members_no_at:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 396
    .end local v0    # "memberUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;->a:Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    sget v3, Laxp$i;->ding_members_no_at:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
