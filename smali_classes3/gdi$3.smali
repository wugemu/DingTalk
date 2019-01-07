.class final Lgdi$3;
.super Ljava/lang/Object;
.source "AclMemberViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdi;

.field final synthetic b:Lgnu;

.field final synthetic c:Lgdi;


# direct methods
.method constructor <init>(Lgdi;Lgdi;Lgnu;)V
    .locals 0
    .param p1, "this$0"    # Lgdi;

    .prologue
    .line 198
    iput-object p1, p0, Lgdi$3;->c:Lgdi;

    iput-object p2, p0, Lgdi$3;->a:Lgdi;

    iput-object p3, p0, Lgdi$3;->b:Lgnu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 240
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgdi$3$1;

    invoke-direct {v1, p0}, Lgdi$3$1;-><init>(Lgdi$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 198
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1201
    if-nez p1, :cond_1

    .line 1202
    iget-object v0, p0, Lgdi$3;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lgdi$3;->c:Lgdi;

    sget v1, Lfzs$h;->dt_cspace_acl_member_conversation_info_none:I

    .line 2050
    invoke-static {v1}, Lgdi;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 1202
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lgdi$3;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lgdi$3;->a:Lgdi;

    iget-object v0, v0, Lgdi;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1215
    iget-object v1, p0, Lgdi$3;->a:Lgdi;

    iget-object v1, v1, Lgdi;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_2
    invoke-static {p1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1219
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v1

    .line 1220
    if-eqz v1, :cond_3

    .line 1222
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1223
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1224
    iget-object v2, p0, Lgdi$3;->a:Lgdi;

    iget-object v2, v2, Lgdi;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    :cond_3
    :goto_1
    iget-object v1, p0, Lgdi$3;->b:Lgnu;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    .line 2207
    iput-object v2, v1, Lgnu;->b:Ljava/lang/String;

    .line 1232
    iget-object v1, p0, Lgdi$3;->b:Lgnu;

    .line 2215
    iput-object v0, v1, Lgnu;->c:Ljava/lang/String;

    .line 1233
    iget-object v0, p0, Lgdi$3;->b:Lgnu;

    .line 2255
    iput-boolean v7, v0, Lgnu;->h:Z

    .line 1234
    iget-object v0, p0, Lgdi$3;->b:Lgnu;

    .line 2263
    iput-boolean v7, v0, Lgnu;->i:Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
