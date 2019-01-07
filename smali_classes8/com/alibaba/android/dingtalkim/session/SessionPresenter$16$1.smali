.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1486
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1486
    if-nez v1, :cond_0

    .line 1487
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->a:Ljava/util/List;

    const/4 v3, 0x0

    .line 3116
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;Z)V

    .line 1491
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1491
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 1491
    invoke-static {v2}, Ldza;->a(Ljava/util/List;)I

    move-result v2

    invoke-interface {v1, v2}, Ldyy$b;->a(I)V

    .line 1493
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1494
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;)V

    .line 1530
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 1530
    if-eqz v1, :cond_1

    .line 1531
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    .line 1531
    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    check-cast v0, Lcma;

    .line 1533
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 1533
    if-eqz v1, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->d:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 1534
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$16;->c:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    .line 1537
    .end local v0    # "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_2
    return-void
.end method
