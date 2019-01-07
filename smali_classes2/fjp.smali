.class public Lfjp;
.super Ljava/lang/Object;
.source "LocalContactPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lfrz;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lfir;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lfjp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfjp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfjp;->b:Ljava/util/List;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lfjp;->c:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfjp;->f:Z

    return-void
.end method

.method static synthetic a(Lfjp;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lfjp;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 62
    iput-object p1, p0, Lfjp;->c:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lfjp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfjp;

    .prologue
    .line 62
    iget-object v0, p0, Lfjp;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lfjp;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lfjp;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 62
    iput-object p1, p0, Lfjp;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lfjp;Landroid/app/Activity;)V
    .locals 4
    .param p0, "x0"    # Lfjp;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 1209
    iget-object v0, p0, Lfjp;->e:Ljava/util/List;

    iget-object v2, p0, Lfjp;->c:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lflw;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 1210
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    invoke-direct {p0}, Lfjp;->c()V

    .line 1212
    iget-object v0, p0, Lfjp;->d:Lfir;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v2, p0, Lfjp;->d:Lfir;

    iget-object v0, p0, Lfjp;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfjp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    .line 1215
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1213
    goto :goto_0

    .line 1218
    :cond_2
    new-instance v1, Lfjp$2;

    invoke-direct {v1, p0}, Lfjp$2;-><init>(Lfjp;)V

    .line 1242
    if-eqz p1, :cond_3

    .line 1243
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    invoke-interface {v0, v1, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1247
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lfjp;Z)Z
    .locals 1
    .param p0, "x0"    # Lfjp;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfjp;->f:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lfjp;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lfjp;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lfjp;

    .prologue
    .line 62
    iget-object v0, p0, Lfjp;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lfjp;)Lfir;
    .locals 1
    .param p0, "x0"    # Lfjp;

    .prologue
    .line 62
    iget-object v0, p0, Lfjp;->d:Lfir;

    return-object v0
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 188
    iget-object v2, p0, Lfjp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 189
    iget-object v2, p0, Lfjp;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfjp;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lfjp;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 193
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    iget-object v3, p0, Lfjp;->c:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    iget-object v3, p0, Lfjp;->c:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfrz;

    .line 195
    .local v1, "profileObject":Lfrz;
    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lfrz;->h:Z

    if-eqz v3, :cond_3

    .line 196
    iget-object v3, p0, Lfjp;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_3
    iget-object v3, p0, Lfjp;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_2

    .line 203
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v1    # "profileObject":Lfrz;
    :cond_4
    iget-object v2, p0, Lfjp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    .line 204
    iget-object v2, p0, Lfjp;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static synthetic d(Lfjp;)V
    .locals 0
    .param p0, "x0"    # Lfjp;

    .prologue
    .line 62
    invoke-direct {p0}, Lfjp;->c()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lfjp;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjp;->e:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    iget-boolean v1, p0, Lfjp;->f:Z

    if-eqz v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lfjp;->f:Z

    .line 99
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 100
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "start query contact from database, time0:"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 102
    instance-of v1, p1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 103
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v2, Lezg$l;->dt_local_contact_loading_text:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 105
    :cond_1
    sget-object v1, Lfjp;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfjp$1;

    invoke-direct {v2, p0, v0, p1}, Lfjp$1;-><init>(Lfjp;Lcom/alibaba/doraemon/performance/DDStringBuilder;Landroid/app/Activity;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
