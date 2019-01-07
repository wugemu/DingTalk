.class final Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;
.super Ljava/lang/Object;
.source "CombinedPraiseView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 366
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->c:Lcom/alibaba/wukong/im/Message;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b$1;->a:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->b:Landroid/widget/ImageView;

    .line 1376
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v0, :cond_1

    .line 1377
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 1378
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v2

    .line 1380
    if-eqz v2, :cond_3

    .line 1381
    const-string/jumbo v3, "thumb"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 1383
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2078
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 1385
    iget-object v2, v5, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-static {v2, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    .line 2099
    iput v2, v6, Lhcg$a;->a:I

    .line 1387
    const/4 v2, 0x0

    .line 2109
    iput-boolean v2, v6, Lhcg$a;->c:Z

    .line 1388
    const/4 v2, 0x0

    .line 3104
    iput-boolean v2, v6, Lhcg$a;->b:Z

    .line 1389
    const-string/jumbo v2, "IM"

    .line 1390
    invoke-static {v4}, Liaf;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v10

    invoke-static {v2, v9, v0, v10}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1389
    invoke-static {v6, v0}, Ldkc;->a(Lhcg$a;Ljava/util/Map;)V

    .line 1391
    iget-object v0, v5, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v5, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->b(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView$b;->e:Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;->c(Lcom/alibaba/android/dingtalkim/views/CombinedPraiseView;)Landroid/widget/AbsListView;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lhcg;->a(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 371
    :cond_1
    :goto_1
    return-void

    .line 1393
    :cond_2
    sget v0, Lctk$e;->praise_thumb_default:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 368
    :catch_0
    move-exception v7

    .line 369
    .local v7, "t":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PraiseDisplayViewHolder refresh exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4022
    const-string/jumbo v1, "im"

    invoke-static {v8, v0, v1}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    move-object v3, v8

    goto :goto_0
.end method
