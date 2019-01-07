.class final Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;
.super Ljava/lang/Object;
.source "ShareTextSendForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->preparseBeforeShare(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V
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
        "Lgwo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;ZLjava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    check-cast p1, Lgwo;

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$202(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Z)Z

    .line 1175
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->a:Z

    if-eqz v0, :cond_3

    .line 1177
    if-eqz p1, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p1, Lgwo;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$302(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 1179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$402(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$502(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1189
    iget-object v0, p1, Lgwo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p1, Lgwo;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$702(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$700(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    const-string/jumbo v1, "https://static.dingtalk.com/media/lALPBbCc1cHuh2xgYA_96_96.png"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$702(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->c:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 171
    return-void

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$302(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$402(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$502(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$202(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Z)Z

    .line 212
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->a:Z

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$302(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$502(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$402(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->d:Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    const-string/jumbo v1, "https://static.dingtalk.com/media/lALPBbCc1cHuh2xgYA_96_96.png"

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->access$702(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;->c:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 206
    return-void
.end method
