.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V

    .line 1126
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1101
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1101
    check-cast p1, Ljava/util/List;

    .line 2104
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2105
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2116
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$13$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V

    .line 1101
    return-void
.end method
