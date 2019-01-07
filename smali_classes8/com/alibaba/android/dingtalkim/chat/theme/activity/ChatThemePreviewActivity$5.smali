.class final Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;
.super Ljava/lang/Object;
.source "ChatThemePreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->j()V
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
    .line 329
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 329
    check-cast p1, Ljava/lang/Boolean;

    .line 1332
    invoke-static {p1}, Ligb;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->c(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;->themeId:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->a(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;J)J

    .line 1334
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->e(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)V

    .line 1335
    invoke-static {}, Ldfr;->a()Ldfr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->c(Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;)Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldfr;->a(Lcom/alibaba/android/dingtalkim/chat/theme/idl/object/ChatThemeItemObject;)V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->dismissLoadingDialog()V

    .line 1338
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "setChatTheme failed"

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
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity$5;->a:Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/theme/activity/ChatThemePreviewActivity;->dismissLoadingDialog()V

    .line 354
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "setChatTheme failed, code="

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

    .line 358
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 348
    return-void
.end method
