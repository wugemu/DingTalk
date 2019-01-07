.class final Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;
.super Ljava/lang/Object;
.source "TowerSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;->a:Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->d(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfgw;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1458
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1461
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    .line 1462
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v6

    .line 1463
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    .line 1464
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1465
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1466
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1467
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1468
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "^"

    const-string/jumbo v8, ""

    .line 1469
    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1470
    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1471
    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 1472
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1473
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1477
    :cond_4
    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    invoke-virtual {v0, v3}, Lfgw;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method
