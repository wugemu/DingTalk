.class final Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;
.super Ljava/lang/Object;
.source "ContactHomeFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h()V
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 550
    check-cast p1, Ljava/util/List;

    .line 1554
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1559
    if-eqz p1, :cond_0

    .line 1560
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->h(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1563
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$7;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    .line 550
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 573
    const-string/jumbo v0, "ContactHomeFragment"

    const-string/jumbo v1, "getConcern:%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 569
    return-void
.end method
