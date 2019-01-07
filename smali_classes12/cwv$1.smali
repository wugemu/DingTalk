.class final Lcwv$1;
.super Ljava/lang/Object;
.source "RemindCardItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcwv;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcwv;


# direct methods
.method constructor <init>(Lcwv;)V
    .locals 0
    .param p1, "this$0"    # Lcwv;

    .prologue
    .line 225
    iput-object p1, p0, Lcwv$1;->a:Lcwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->b(Lcwv;)Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 229
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 231
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->c(Lcwv;)Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 232
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->c(Lcwv;)Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/views/ImgBtnContainerView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1054
    .local v1, "topicId":I
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v5

    .line 233
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ldiy;->a(J)V

    .line 234
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    const-string/jumbo v6, "gifbutton"

    invoke-static {v5, v6}, Lcwv;->a(Lcwv;Ljava/lang/String;)V

    .line 253
    .end local v1    # "topicId":I
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->a(Lcwv;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v5

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 238
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    invoke-static {v5}, Lcwv;->b(Lcwv;)Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 239
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 240
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v3, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;

    .line 242
    .local v2, "user":Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 243
    .local v0, "identityModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v6, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->uid:J

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 244
    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->name:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 245
    iget-object v6, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;->avatar:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 246
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2054
    .end local v0    # "identityModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "user":Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel$User;
    :cond_2
    invoke-static {}, Ldiy$a;->a()Ldiy;

    move-result-object v5

    .line 3041
    iget-object v6, v5, Ldiy;->a:Ldix;

    if-eqz v6, :cond_3

    .line 3042
    iget-object v5, v5, Ldiy;->a:Ldix;

    invoke-interface {v5, v3}, Ldix;->c(Ljava/util/List;)V

    .line 249
    :cond_3
    iget-object v5, p0, Lcwv$1;->a:Lcwv;

    const-string/jumbo v6, "text_bless"

    invoke-static {v5, v6}, Lcwv;->a(Lcwv;Ljava/lang/String;)V

    goto :goto_0
.end method
