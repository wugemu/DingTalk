.class final Lfiv$2$1;
.super Ljava/lang/Object;
.source "CommonContactPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfiv$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfiv$2;


# direct methods
.method constructor <init>(Lfiv$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lfiv$2;

    .prologue
    .line 95
    iput-object p1, p0, Lfiv$2$1;->b:Lfiv$2;

    iput-object p2, p0, Lfiv$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 98
    iget-object v2, p0, Lfiv$2$1;->a:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfiv$2$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 99
    iget-object v2, p0, Lfiv$2$1;->b:Lfiv$2;

    iget-object v2, v2, Lfiv$2;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .line 100
    .local v0, "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    if-eqz v0, :cond_0

    .line 103
    iget-object v3, p0, Lfiv$2$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 104
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_1

    .line 107
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 108
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 1022
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v4

    .line 108
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    goto :goto_0

    .line 113
    .end local v0    # "contactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v2

    invoke-virtual {v2}, Lfmz;->d()Lfmo;

    move-result-object v2

    iget-object v3, p0, Lfiv$2$1;->b:Lfiv$2;

    iget-object v3, v3, Lfiv$2;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Lfmo;->a(Ljava/util/List;)I

    .line 114
    const-string/jumbo v2, "_pref_key_sync_common_contact"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method
