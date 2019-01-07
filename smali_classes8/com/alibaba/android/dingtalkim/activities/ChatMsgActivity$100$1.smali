.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a(Ljava/lang/String;)V
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
        "Ldux;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    .prologue
    .line 3232
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3232
    check-cast p1, Ldux;

    .line 4235
    if-eqz p1, :cond_0

    .line 4239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Z)Z

    .line 4240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p1, Ldux;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, p1, Ldux;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4244
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    .line 4246
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->S(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4247
    iget-object v0, p1, Ldux;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->a:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcpt;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 4252
    :goto_0
    invoke-virtual {v1, v0}, Lcok;->a(Ljava/lang/String;)Z

    move-result v1

    .line 4254
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    if-eqz v1, :cond_2

    const/high16 v1, 0x41f00000    # 30.0f

    :goto_1
    invoke-static {v3, v0, v1}, Ldpu;->a(Landroid/content/Context;Ljava/lang/String;F)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v4, v5, v5, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    .line 3232
    :cond_0
    return-void

    .line 4249
    :cond_1
    iget-object v0, p1, Ldux;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->a:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4254
    :cond_2
    const/high16 v1, 0x41c00000    # 24.0f

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$100;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/text/SpannableString;)V

    .line 3260
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3265
    return-void
.end method
