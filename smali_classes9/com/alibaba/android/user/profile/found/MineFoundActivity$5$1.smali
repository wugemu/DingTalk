.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;
.super Ljava/lang/Object;
.source "MineFoundActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

.field final synthetic b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

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
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 909
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 915
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "pref_key_recommend_info_first_show_"

    aput-object v3, v2, v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "showKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    if-eqz v2, :cond_4

    invoke-static {v1, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 917
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->p(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 919
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->q(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    .line 920
    .local v0, "cellVisibility":I
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->type:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 921
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 922
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->s(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 923
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 924
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lezg$l;->red_dot_new:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 944
    .end local v0    # "cellVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->b(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V

    .line 945
    return-void

    .line 912
    .end local v1    # "showKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "MineFoundActivity"

    const-string/jumbo v3, "infoObj nil"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    const-string/jumbo v3, "https://h5.dingtalk.com/invite/invite.html"

    invoke-static {v2, v3}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->c(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 925
    .restart local v0    # "cellVisibility":I
    .restart local v1    # "showKey":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->type:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 926
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 927
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->s(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 928
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    .line 929
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->r(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->s(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    if-nez v0, :cond_3

    .line 935
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2, v8}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto/16 :goto_1

    .line 937
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto/16 :goto_1

    .line 941
    .end local v0    # "cellVisibility":I
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->p(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 942
    iget-object v2, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5$1;->b:Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;

    iget-object v2, v2, Lcom/alibaba/android/user/profile/found/MineFoundActivity$5;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v2, v6}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->i(Lcom/alibaba/android/user/profile/found/MineFoundActivity;Z)Z

    goto/16 :goto_1
.end method
