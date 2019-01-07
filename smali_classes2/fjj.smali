.class public final Lfjj;
.super Ljava/lang/Object;
.source "UserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lfir;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lfjj;->a:Lfir;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfjj$1;

    invoke-direct {v1, p0}, Lfjj$1;-><init>(Lfjj;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 49
    .local p1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iput-object p1, p0, Lfjj;->b:Ljava/util/List;

    .line 50
    iget-object v1, p0, Lfjj;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lfjj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 52
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    .line 56
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    goto :goto_0

    .line 66
    .end local v0    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    return-void
.end method
