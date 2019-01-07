.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->doAction(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 917
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->access$2700(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    packed-switch p2, :pswitch_data_0

    .line 952
    :goto_0
    return-void

    .line 920
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->sharePackage:Ljava/lang/String;

    const-string/jumbo v3, "share success"

    invoke-static {v1, v2, v4, v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 932
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 948
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 934
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->sharePackage:Ljava/lang/String;

    const-string/jumbo v3, "share success"

    invoke-static {v1, v2, v4, v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->access$2800(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Landroid/app/Activity;)V

    .line 939
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 940
    :catch_1
    move-exception v0

    .line 941
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 945
    .end local v0    # "e":Ljava/lang/Throwable;
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback$1;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;->access$3000(Lcom/alibaba/android/dingtalkim/models/ShareDelegate$ShareSDKSendSuccessCallback;Landroid/app/Activity;)V

    goto :goto_2

    .line 918
    .line 932
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
