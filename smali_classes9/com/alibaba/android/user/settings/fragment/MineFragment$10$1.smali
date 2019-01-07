.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

.field final synthetic b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment$10;Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

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

    .line 1296
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1302
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "pref_key_recommend_info_first_show_"

    aput-object v2, v1, v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, "showKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    if-eqz v1, :cond_3

    invoke-static {v0, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1304
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->q(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1306
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->type:J

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1308
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1309
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)V

    .line 1310
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lezg$l;->red_dot_new:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1325
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->e(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V

    .line 1326
    return-void

    .line 1299
    .end local v0    # "showKey":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "MineFragment"

    const-string/jumbo v2, "infoObj nil"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    const-string/jumbo v2, "https://h5.dingtalk.com/invite/invite.html"

    invoke-static {v1, v2}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->c(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1311
    .restart local v0    # "showKey":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->type:J

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1312
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1314
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)V

    .line 1315
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/RedDotObject;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1317
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->r(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->s(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1319
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1, v8}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)V

    goto :goto_1

    .line 1322
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->q(Lcom/alibaba/android/user/settings/fragment/MineFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1323
    iget-object v1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$10$1;->b:Lcom/alibaba/android/user/settings/fragment/MineFragment$10;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/fragment/MineFragment$10;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->g(Lcom/alibaba/android/user/settings/fragment/MineFragment;Z)V

    goto/16 :goto_1
.end method
