.class final Lcxk$1$1;
.super Ljava/lang/Object;
.source "SessionTextItemHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxk$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcxk$1;


# direct methods
.method constructor <init>(Lcxk$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcxk$1;

    .prologue
    .line 379
    iput-object p1, p0, Lcxk$1$1;->b:Lcxk$1;

    iput-object p2, p0, Lcxk$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 382
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v6

    iget-object v5, p0, Lcxk$1$1;->b:Lcxk$1;

    iget-object v5, v5, Lcxk$1;->d:Lcxk;

    iget-object v5, v5, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 413
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    iget-object v5, p0, Lcxk$1$1;->b:Lcxk$1;

    iget-object v5, v5, Lcxk$1;->b:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .local v1, "nickBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v5, p0, Lcxk$1$1;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 387
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 388
    iget-object v5, p0, Lcxk$1$1;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 389
    .local v3, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v3, :cond_1

    .line 387
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, "nickName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 396
    :cond_2
    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_3

    .line 397
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 399
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u3001"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 403
    .end local v2    # "nickName":Ljava/lang/String;
    .end local v3    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcxk$1$1$1;

    invoke-direct {v6, p0, v1}, Lcxk$1$1$1;-><init>(Lcxk$1$1;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
