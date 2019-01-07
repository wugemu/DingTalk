.class public final Lheb$2;
.super Ljava/lang/Object;
.source "PhotoDelegate.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lheb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lheb;


# direct methods
.method public constructor <init>(Lheb;)V
    .locals 0
    .param p1, "this$0"    # Lheb;

    .prologue
    .line 110
    iput-object p1, p0, Lheb$2;->a:Lheb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 112
    const/4 v7, 0x1

    .line 113
    .local v7, "isInterupt":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    .line 114
    .local v8, "itemId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "imageUrl":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 180
    const/4 v7, 0x0

    .line 183
    :goto_0
    return v7

    .line 117
    :pswitch_0
    new-instance v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v3}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 118
    .local v3, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-wide/16 v0, 0x0

    iput-wide v0, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 119
    iput-object v6, v3, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 121
    new-array v2, v10, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 122
    .local v2, "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    aput-object v3, v2, v4

    .line 124
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "showRemove"

    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const-string/jumbo v0, "hide_list_button"

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lheb$2;->a:Lheb;

    invoke-static {v1}, Lheb;->a(Lheb;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 131
    .end local v2    # "photoObjects":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v3    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v0, p0, Lheb$2;->a:Lheb;

    .line 1040
    iget-object v0, v0, Lheb;->b:Landroid/graphics/Bitmap;

    .line 131
    if-eqz v0, :cond_0

    iget-object v0, p0, Lheb$2;->a:Lheb;

    .line 2040
    iget-object v0, v0, Lheb;->b:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "PhotoDelegate"

    const-string/jumbo v4, " ID_SAVEIMAGE mSaveBitmap not null and saveImageToPhone directly"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lheb$2;->a:Lheb;

    invoke-static {v0, v6}, Lheb;->a(Lheb;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "PhotoDelegate"

    const-string/jumbo v4, " ID_SAVEIMAGE to getResponse before saveImageToPhone"

    invoke-static {v0, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lheb$2;->a:Lheb;

    invoke-static {v0}, Lheb;->b(Lheb;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lheb$2;->a:Lheb;

    invoke-static {v0}, Lheb;->c(Lheb;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v1, Lhdn$k;->dt_processing_please_wait:I

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v1, v10, v11}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialogDelay(IJ)V

    .line 142
    :cond_1
    iget-object v0, p0, Lheb$2;->a:Lheb;

    new-instance v0, Lheb$2$1;

    invoke-direct {v0, p0, v6}, Lheb$2$1;-><init>(Lheb$2;Ljava/lang/String;)V

    .line 3040
    invoke-static {v6, v0}, Lheb;->a(Ljava/lang/String;Lhpj;)Lcom/uc/webview/export/WebResourceResponse;

    goto/16 :goto_0

    .line 172
    :pswitch_2
    iget-object v0, p0, Lheb$2;->a:Lheb;

    .line 4040
    iget-object v0, v0, Lheb;->c:Ljava/lang/Object;

    .line 172
    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lheb$2;->a:Lheb;

    .line 5040
    iget-object v9, v0, Lheb;->c:Ljava/lang/Object;

    .line 174
    .local v9, "maResult":Ljava/lang/Object;
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    move-result-object v0

    iget-object v1, p0, Lheb$2;->a:Lheb;

    invoke-static {v1}, Lheb;->h(Lheb;)Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v9, v10, v4}, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;->a(Landroid/app/Activity;Ljava/lang/Object;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    goto/16 :goto_0

    .line 176
    .end local v9    # "maResult":Ljava/lang/Object;
    :cond_2
    sget v0, Lhdn$k;->dt_lightapp_webview_identifyQRCode_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
