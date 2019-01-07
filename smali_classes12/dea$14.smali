.class final Ldea$14;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldea;


# direct methods
.method constructor <init>(Ldea;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 588
    iput-object p1, p0, Ldea$14;->b:Ldea;

    iput-object p2, p0, Ldea$14;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 591
    iget-object v2, p0, Ldea$14;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 592
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_0

    .line 596
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;-><init>()V

    .line 597
    .local v0, "namecardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->uid:J

    .line 598
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->name:Ljava/lang/String;

    .line 599
    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 600
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->phone:Ljava/lang/String;

    .line 602
    :cond_1
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;->avatarMediaId:Ljava/lang/String;

    .line 603
    iget-object v3, p0, Ldea$14;->b:Ldea;

    .line 1095
    invoke-virtual {v3}, Ldea;->a()Ldiz;

    move-result-object v3

    .line 603
    invoke-virtual {v3, v0}, Ldiz;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 605
    .end local v0    # "namecardDo":Lcom/alibaba/android/dingtalkbase/models/dos/namecard/NamecardDo;
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    return-void
.end method
