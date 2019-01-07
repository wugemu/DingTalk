.class final Lctv$a;
.super Ljava/lang/Object;
.source "AbsUserMsgHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:J

.field d:Z

.field final synthetic e:Lctv;


# direct methods
.method constructor <init>(Lctv;)V
    .locals 1
    .param p1, "this$0"    # Lctv;

    .prologue
    .line 541
    iput-object p1, p0, Lctv$a;->e:Lctv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctv$a;->d:Z

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 610
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 541
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 541
    check-cast p1, Lckl;

    .line 1564
    iget-boolean v0, p0, Lctv$a;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lctv$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lctv$a;->e:Lctv;

    iget-object v0, v0, Lctv;->l:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1567
    :cond_1
    iget-object v0, p0, Lctv$a;->a:Ljava/lang/String;

    .line 2055
    iget-object v1, p1, Lckl;->a:Ljava/lang/String;

    .line 1567
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lctv$a;->b:J

    .line 2059
    iget-wide v2, p1, Lckl;->b:J

    .line 1568
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lctv$a;->c:J

    .line 2063
    iget-wide v2, p1, Lckl;->c:J

    .line 1569
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1571
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lctv$a;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 1574
    iget-object v1, p0, Lctv$a;->e:Lctv;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lctv;->a(Lctv;Ljava/lang/String;)V

    .line 1576
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->k:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1577
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-boolean v1, v1, Lctv;->T:Z

    if-eqz v1, :cond_3

    .line 1578
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1584
    :goto_1
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1585
    if-eqz v0, :cond_5

    .line 1587
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-wide v2, v1, Lctv;->V:J

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-boolean v1, v1, Lctv;->T:Z

    if-eqz v1, :cond_4

    .line 1588
    iget-object v0, p0, Lctv$a;->e:Lctv;

    iget-object v0, v0, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1589
    iget-object v0, p0, Lctv$a;->e:Lctv;

    iget-object v0, v0, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Lctk$e;->icon_burn_chat_avatar_small:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1597
    :goto_2
    iget-object v0, p0, Lctv$a;->e:Lctv;

    iget-object v0, v0, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_2

    .line 1598
    iget-object v0, p0, Lctv$a;->e:Lctv;

    iget-object v0, v0, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 5039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1598
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1602
    :cond_2
    iget-object v0, p0, Lctv$a;->e:Lctv;

    invoke-virtual {v0}, Lctv;->h()V

    goto/16 :goto_0

    .line 1580
    :cond_3
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->l:Landroid/widget/TextView;

    .line 3039
    iget-object v2, p1, Lckl;->d:Ljava/lang/String;

    .line 1580
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1591
    :cond_4
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1592
    iget-object v1, p0, Lctv$a;->e:Lctv;

    iget-object v1, v1, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1595
    :cond_5
    iget-object v0, p0, Lctv$a;->e:Lctv;

    iget-object v0, v0, Lctv;->i:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 4039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1595
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
