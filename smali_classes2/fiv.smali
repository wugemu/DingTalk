.class public Lfiv;
.super Ljava/lang/Object;
.source "CommonContactPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lfir;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfiv;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lfiv;

    .prologue
    .line 41
    iget-object v0, p0, Lfiv;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lfiv;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lfiv;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    iput-object p1, p0, Lfiv;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lfiv;)Lfir;
    .locals 1
    .param p0, "x0"    # Lfiv;

    .prologue
    .line 41
    iget-object v0, p0, Lfiv;->b:Lfir;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;>;"
    const-string/jumbo v3, "_pref_key_sync_common_contact"

    invoke-static {v3}, Lcpk;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .line 84
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    if-nez v4, :cond_0

    .line 85
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    const-string/jumbo v3, "_pref_key_sync_common_contact"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 134
    .end local v2    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    return-void

    .line 92
    .restart local v2    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_3
    new-instance v0, Lfiv$2;

    invoke-direct {v0, p0, p2}, Lfiv$2;-><init>(Lfiv;Ljava/util/List;)V

    .line 129
    .local v0, "listener":Lcma;
    if-eqz p1, :cond_4

    .line 130
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    invoke-interface {v3, v0, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 132
    .restart local v0    # "listener":Lcma;
    :cond_4
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lfac;->a(Ljava/util/List;Lcma;)V

    goto :goto_1
.end method
