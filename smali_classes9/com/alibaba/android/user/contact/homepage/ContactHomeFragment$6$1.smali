.class final Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;
.super Ljava/lang/Object;
.source "ContactHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;Ljava/util/List;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->b:J

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
    .line 532
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 536
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->f(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->g(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;)V

    .line 540
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->c:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6;->a:Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment$6$1;->b:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;->a(Lcom/alibaba/android/user/contact/homepage/ContactHomeFragment;J)V

    goto :goto_0
.end method
