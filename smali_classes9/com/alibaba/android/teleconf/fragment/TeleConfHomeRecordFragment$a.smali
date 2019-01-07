.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/atomic/AtomicInteger;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    const/4 v2, 0x0

    .line 2992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a:Ljava/util/List;

    .line 2897
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2901
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->d:Z

    .line 2993
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->c:Ljava/lang/ref/WeakReference;

    .line 3141
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "conf_show_extern_contact"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2994
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->d:Z

    .line 2995
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 2895
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    .prologue
    .line 2895
    .line 3998
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a(ZI)V

    .line 2895
    return-void
.end method


# virtual methods
.method a(ZI)V
    .locals 10
    .param p1, "isCheckAll"    # Z
    .param p2, "checkSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3002
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->c:Ljava/lang/ref/WeakReference;

    if-nez v7, :cond_1

    .line 3030
    :cond_0
    return-void

    .line 3005
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .line 3006
    .local v1, "fragment":Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3010
    const/4 v2, 0x0

    .line 3011
    .local v2, "i":I
    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->l(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;

    .line 3012
    .local v5, "teleConfRecordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    if-eqz v5, :cond_2

    iget-object v8, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;->InfoItem:Lcom/alibaba/android/teleconf/data/TeleConfRecordObject$InfoItemType;

    if-ne v8, v9, :cond_2

    .line 3013
    if-nez p1, :cond_3

    if-eq v2, p2, :cond_7

    .line 3016
    :cond_3
    iget-object v3, v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;->h:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 3017
    .local v3, "record":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v3, :cond_5

    .line 3018
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCall()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3020
    :cond_4
    iget-boolean v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->d:Z

    if-eqz v8, :cond_6

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v0, 0x1

    .line 3021
    .local v0, "checkContact":Z
    :goto_1
    iget-object v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a:Ljava/util/List;

    new-instance v9, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    invoke-direct {v9, p0, v3, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3023
    .end local v0    # "checkContact":Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3020
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 3026
    .end local v3    # "record":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v5    # "teleConfRecordObject":Lcom/alibaba/android/teleconf/data/TeleConfRecordObject;
    :cond_7
    iget-object v7, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 3027
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 3028
    .local v6, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v6, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
