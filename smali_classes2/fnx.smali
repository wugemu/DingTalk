.class public final Lfnx;
.super Ljava/lang/Object;
.source "ExternalSharePresenter.java"

# interfaces
.implements Lfnv$a;


# instance fields
.field a:Lfnv$b;

.field private b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfnv$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lfnv$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object v0, p0, Lfnx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 30
    invoke-static {p2}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfnv$b;

    iput-object v0, p0, Lfnx;->a:Lfnv$b;

    .line 31
    iget-object v0, p0, Lfnx;->a:Lfnv$b;

    invoke-interface {v0, p0}, Lfnv$b;->setPresenter(Lcjd;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lfnx;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lfnx;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 19
    .line 4077
    if-eqz p1, :cond_0

    .line 4078
    iget-object v0, p0, Lfnx;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4081
    :cond_0
    if-eqz p2, :cond_1

    .line 4082
    iget-object v0, p0, Lfnx;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4085
    :cond_1
    iget-object v0, p0, Lfnx;->a:Lfnv$b;

    iget-object v1, p0, Lfnx;->c:Ljava/util/List;

    iget-object v2, p0, Lfnx;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lfnv$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lfnx;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lfnx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    invoke-static {}, Lfnw;->a()Lfnw;

    move-result-object v0

    iget-object v1, p0, Lfnx;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v2}, Lfnw;->a(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    .line 47
    iget-object v0, p0, Lfnx;->a:Lfnv$b;

    iget-object v1, p0, Lfnx;->c:Ljava/util/List;

    iget-object v2, p0, Lfnx;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lfnv$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 48
    return-void
.end method

.method public final a(J)V
    .locals 1
    .param p1, "orgId"    # J

    .prologue
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lfnx;->e:Ljava/lang/Long;

    .line 96
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "orgId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "selectUsers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p3, "selectOrgDepts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-static {p1}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lfnx;->e:Ljava/lang/Long;

    .line 37
    invoke-static {p2}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lfnx;->c:Ljava/util/List;

    .line 38
    invoke-static {p3}, Lciv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lfnx;->d:Ljava/util/List;

    .line 39
    return-void
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 52
    new-instance v0, Lfnx$1;

    invoke-direct {v0, p0}, Lfnx$1;-><init>(Lfnx;)V

    .line 72
    .local v0, "shareListener":Lfnw$a;
    const-class v1, Lfnw$a;

    iget-object v2, p0, Lfnx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "shareListener":Lfnw$a;
    check-cast v0, Lfnw$a;

    .line 73
    .restart local v0    # "shareListener":Lfnw$a;
    invoke-static {}, Lfnw;->a()Lfnw;

    move-result-object v2

    iget-object v3, p0, Lfnx;->e:Ljava/lang/Long;

    .line 1156
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should call in Main Thread!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3044
    :cond_0
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2054
    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    if-nez v0, :cond_5

    .line 2055
    :cond_1
    if-eqz v0, :cond_2

    .line 2056
    invoke-interface {v0, v8}, Lfnw$a;->b(Ljava/util/List;)V

    .line 4044
    :cond_2
    :goto_0
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3105
    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    if-nez v0, :cond_7

    .line 3106
    :cond_3
    if-eqz v0, :cond_4

    .line 3107
    invoke-interface {v0, v8}, Lfnw$a;->a(Ljava/util/List;)V

    .line 3115
    :cond_4
    :goto_1
    return-void

    .line 2061
    :cond_5
    iget-object v1, v2, Lfnw;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2062
    if-eqz v1, :cond_6

    .line 2063
    invoke-interface {v0, v1}, Lfnw$a;->b(Ljava/util/List;)V

    goto :goto_0

    .line 2067
    :cond_6
    const-string/jumbo v4, "ExternalShareManager"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lfnw$1;

    invoke-direct {v5, v2, v3, v1, v0}, Lfnw$1;-><init>(Lfnw;Ljava/lang/Long;Ljava/util/List;Lfnw$a;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3112
    :cond_7
    iget-object v1, v2, Lfnw;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3113
    if-eqz v1, :cond_8

    .line 3114
    invoke-interface {v0, v1}, Lfnw$a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 3118
    :cond_8
    const-string/jumbo v1, "ExternalShareManager"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v4, Lfnw$3;

    invoke-direct {v4, v2, v3, v0}, Lfnw$3;-><init>(Lfnw;Ljava/lang/Long;Lfnw$a;)V

    invoke-interface {v1, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 90
    invoke-static {}, Lfnw;->a()Lfnw;

    move-result-object v0

    iget-object v1, p0, Lfnx;->e:Ljava/lang/Long;

    iget-object v2, p0, Lfnx;->c:Ljava/util/List;

    iget-object v3, p0, Lfnx;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lfnw;->a(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lfnx;->a:Lfnv$b;

    .line 111
    iput-object v0, p0, Lfnx;->b:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 112
    return-void
.end method
