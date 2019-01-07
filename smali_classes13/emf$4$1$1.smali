.class final Lemf$4$1$1;
.super Ljava/lang/Object;
.source "ShortCutUtils.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemf$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lemf$4$1;


# direct methods
.method constructor <init>(Lemf$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lemf$4$1;

    .prologue
    .line 269
    iput-object p1, p0, Lemf$4$1$1;->a:Lemf$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_0

    .line 274
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    iget-object v3, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v3, v3, Lemf$4$1;->b:Lemf$4;

    iget-object v3, v3, Lemf$4;->a:Landroid/app/Activity;

    iget-object v4, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v4, v4, Lemf$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 275
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 276
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/16 v2, 0x1f4

    iput v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 277
    iput-object p1, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v2, v2, Lemf$4$1;->b:Lemf$4;

    iget-object v2, v2, Lemf$4;->c:Lemf;

    iget-object v3, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v3, v3, Lemf$4$1;->b:Lemf$4;

    iget-object v3, v3, Lemf$4;->a:Landroid/app/Activity;

    iget-object v4, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v4, v4, Lemf$4$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2, v3, v4, v1}, Lemf;->a(Lemf;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    :cond_0
    :goto_0
    iget-object v2, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v2, v2, Lemf$4$1;->b:Lemf$4;

    iget-object v2, v2, Lemf$4;->c:Lemf;

    invoke-static {v2}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v2, v2, Lemf$4$1;->b:Lemf$4;

    iget-object v2, v2, Lemf$4;->c:Lemf;

    invoke-static {v2}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    iget-object v2, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v2, v2, Lemf$4$1;->b:Lemf$4;

    iget-object v2, v2, Lemf$4;->c:Lemf;

    invoke-static {v2}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 286
    :cond_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 299
    :goto_0
    iget-object v0, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v0, v0, Lemf$4$1;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v0, v0, Lemf$4$1;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lemf$4$1$1;->a:Lemf$4$1;

    iget-object v0, v0, Lemf$4$1;->b:Lemf$4;

    iget-object v0, v0, Lemf$4;->c:Lemf;

    invoke-static {v0}, Lemf;->a(Lemf;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 303
    :cond_0
    return-void

    .line 297
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 290
    return-void
.end method
