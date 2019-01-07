.class final Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;
.super Ljava/lang/Object;
.source "EncryptVoicePlayerView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 298
    check-cast p1, Ljava/lang/String;

    .line 1302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;Ljava/lang/String;)Ljava/lang/String;

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->q(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V

    :goto_0
    return-void

    .line 1306
    :cond_0
    const-string/jumbo v0, "crypto"

    const/4 v1, 0x0

    const-string/jumbo v2, "encrypt voice download file is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 318
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 319
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "encrypt voice download file failed "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 320
    const-string/jumbo v1, "crypto"

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 314
    return-void
.end method
