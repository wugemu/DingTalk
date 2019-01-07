.class final Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;
.super Ljava/lang/Object;
.source "ContactSearchFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    iput-wide p2, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 453
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1457
    if-eqz p1, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 2430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1461
    if-eqz v0, :cond_3

    .line 1463
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 3430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1463
    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->copyUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1464
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 4430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1464
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 5430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1464
    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->copyFromUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1465
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 6430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1465
    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 7430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1466
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 8430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1466
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 1467
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 9430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1467
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 10430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1467
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1468
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 11430
    iget-object v1, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1468
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 12430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1468
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 13430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1468
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1469
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 15430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1469
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 16430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1469
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1470
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 17430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1470
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 18430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1470
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    iget-object v2, v2, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1482
    :cond_0
    :goto_1
    const-string/jumbo v0, "getprof end:%d,duration:%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->a:J

    .line 31120
    const-wide/32 v6, 0x6a01e35

    sub-long/2addr v4, v6

    .line 1482
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->b:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 32050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->d:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment;->c()V

    .line 453
    :cond_1
    return-void

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 14430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1468
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_0

    .line 1472
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 19430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->b:Lcom/alibaba/android/search/model/LocalContactModel;

    .line 1472
    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 20430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->b:Lcom/alibaba/android/search/model/LocalContactModel;

    .line 1473
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/LocalContactModel;->setMediaId(Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 21430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1474
    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->copyFromUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 1475
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 22430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1475
    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 23430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1476
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 24430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1476
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 1477
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 25430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1477
    iget-object v1, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 26430
    iget-object v1, v1, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1477
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 1478
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 27430
    iget-object v1, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1478
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 28430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1478
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 29430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1478
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    :goto_2
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a$1;->c:Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;

    .line 30430
    iget-object v0, v0, Lcom/alibaba/android/search/old/fragment/ContactSearchFragment$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1478
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 494
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 489
    return-void
.end method
