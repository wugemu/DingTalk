.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Levq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "recordItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    const/4 v6, 0x0

    .line 1035
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->y(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 1041
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->z(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1042
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 1043
    .local v2, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isVideoUserCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1046
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v5, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->c(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;)Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    move-result-object v1

    .line 1047
    .local v1, "destRunningRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v1, :cond_2

    .line 1048
    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->A(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1052
    .end local v1    # "destRunningRecord":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    .end local v2    # "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->B(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, p1, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/Map;Ljava/util/List;Z)V

    .line 1053
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$11;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-direct {v0, v3, v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;B)V

    .line 1055
    .local v0, "checkExternalContact":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 3895
    invoke-virtual {v0, v6, v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a(ZI)V

    goto :goto_0
.end method
