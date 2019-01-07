.class public Lcom/alibaba/android/user/contact/homepage/Composite;
.super Lcom/alibaba/android/user/contact/homepage/Component;
.source "Composite.java"


# instance fields
.field private mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/Component;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpand:Z

.field private mPrefKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Component;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    .line 36
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/homepage/Composite;->initExpand(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized addChild(Lcom/alibaba/android/user/contact/homepage/Component;)V
    .locals 1
    .param p1, "child"    # Lcom/alibaba/android/user/contact/homepage/Component;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChild(I)Lcom/alibaba/android/user/contact/homepage/Component;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/Component;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "count":I
    iget-object v2, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/homepage/Component;

    .line 87
    .local v0, "component":Lcom/alibaba/android/user/contact/homepage/Component;
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/Component;->getUnreadCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 88
    goto :goto_0

    .line 89
    .end local v0    # "component":Lcom/alibaba/android/user/contact/homepage/Component;
    :cond_0
    return v1
.end method

.method public initExpand(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 65
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "uid":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string/jumbo v2, "_pref_key_contact_expand_"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mPrefKey:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mPrefKey:Ljava/lang/String;

    invoke-static {v1, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mIsExpand:Z

    .line 68
    return-void
.end method

.method public isExpand()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mIsExpand:Z

    return v0
.end method

.method public declared-synchronized removeChild(Lcom/alibaba/android/user/contact/homepage/Component;)V
    .locals 1
    .param p1, "child"    # Lcom/alibaba/android/user/contact/homepage/Component;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setExpand(Z)V
    .locals 2
    .param p1, "expand"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mIsExpand:Z

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mPrefKey:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/homepage/Composite;->mIsExpand:Z

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method
