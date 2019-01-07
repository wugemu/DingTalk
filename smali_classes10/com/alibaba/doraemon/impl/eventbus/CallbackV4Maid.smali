.class public Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;
.super Ljava/lang/Object;
.source "CallbackV4Maid.java"

# interfaces
.implements Lcom/alibaba/doraemon/eventbus/CancelableCallback;
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String;


# instance fields
.field private mActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/doraemon/impl/eventbus/ActionKey;",
            "Lcom/alibaba/doraemon/impl/eventbus/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Ljava/lang/Object;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mHashCode:I

.field private mIsCanceled:Z

.field private mIsStoped:Z

.field private mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mActions:Ljava/util/Map;

    .line 39
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    .line 45
    if-eqz p1, :cond_2

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mHashCode:I

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    sget-object v2, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    invoke-direct {v1}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    .line 50
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->addMaid(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;Z)V

    .line 51
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    sget-object v3, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 52
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    invoke-virtual {v1}, Lcn;->b()Z

    goto :goto_0

    .line 54
    :cond_3
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    sget-object v2, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 55
    .local v0, "lifeFragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    .end local v0    # "lifeFragment":Landroid/support/v4/app/Fragment;
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    .line 57
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->addMaid(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->onStopped()V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->onResume()V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->onDestroy()V

    return-void
.end method

.method private handleResumeActions()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mActions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    iget-object v4, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mActions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 129
    .local v1, "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 130
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/eventbus/Action;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .local v0, "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 136
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 137
    iget-object v4, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 146
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v3

    .line 148
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_4
    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 149
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 155
    .end local v0    # "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    .end local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 140
    .restart local v0    # "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    .restart local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4

    .line 143
    :cond_0
    iget-object v4, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    iget-object v6, v0, Lcom/alibaba/doraemon/impl/eventbus/Action;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 151
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "action":Lcom/alibaba/doraemon/impl/eventbus/Action;
    .end local v1    # "callbacks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/doraemon/impl/eventbus/Action;>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void
.end method

.method private handleUnBind()V
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;->removeMaid(Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;)V

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mLifeCycleFragment:Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid$LifeCycleV4Fragment;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mFragment:Landroid/support/v4/app/Fragment;

    .line 174
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->handleUnBind()V

    .line 164
    return-void
.end method

.method private onResume()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mIsStoped:Z

    .line 122
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->handleResumeActions()V

    .line 123
    return-void
.end method

.method private onStopped()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mIsStoped:Z

    .line 160
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Lcom/alibaba/doraemon/utils/CommonUtils;->throwExceptionNotMainThreadNoneRelease()V

    .line 181
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mIsCanceled:Z

    .line 185
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->handleUnBind()V

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "methodName":Ljava/lang/String;
    const-string/jumbo v3, "equals"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_2

    array-length v3, p3

    if-lez v3, :cond_2

    .line 69
    aget-object v2, p3, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    aget-object v3, p3, v4

    invoke-static {v3}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 117
    :cond_0
    :goto_0
    return-object v2

    .line 72
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 76
    const-string/jumbo v3, "hashCode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    iget v2, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mHashCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/doraemon/eventbus/CallbackUnbinder;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "unbindEventBulter"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->handleUnBind()V

    goto :goto_0

    .line 88
    :cond_4
    :try_start_0
    const-string/jumbo v3, "hashCode"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "toString"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 89
    :cond_5
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "t":Ljava/lang/Throwable;
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 93
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 96
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_7
    monitor-enter p0

    .line 101
    :try_start_1
    iget-boolean v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mIsStoped:Z

    if-eqz v3, :cond_8

    .line 102
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mActions:Ljava/util/Map;

    new-instance v4, Lcom/alibaba/doraemon/impl/eventbus/ActionKey;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/doraemon/impl/eventbus/ActionKey;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/alibaba/doraemon/impl/eventbus/Action;

    invoke-direct {v5, p2, p3}, Lcom/alibaba/doraemon/impl/eventbus/Action;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    monitor-exit p0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mDelegate:Ljava/lang/Object;

    invoke-virtual {p2, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 109
    :catch_1
    move-exception v1

    .line 110
    .restart local v1    # "t":Ljava/lang/Throwable;
    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 114
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/eventbus/CallbackV4Maid;->mIsCanceled:Z

    return v0
.end method
