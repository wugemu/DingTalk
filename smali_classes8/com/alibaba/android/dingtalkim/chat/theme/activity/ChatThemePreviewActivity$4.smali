.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;
.super Ljava/lang/Object;
.source "ChatThemePreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

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
    .line 292
    check-cast p1, Ljava/lang/Boolean;

    .line 1295
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->e(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    .line 1297
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->dismissLoadingDialog()V

    .line 1299
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "resetChatTheme failed"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$4;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->dismissLoadingDialog()V

    .line 315
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "resetChatTheme failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 309
    return-void
.end method
