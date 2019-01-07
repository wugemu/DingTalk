.class final Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;
.super Ljava/lang/Object;
.source "ChannelShareQrcodeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    iput-object p2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 318
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    iget-object v1, v1, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->b()V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;

    iget-object v2, v2, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b;->b:Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;

    sget v3, Lezg$l;->save_to_phone:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelShareQrcodeActivity$b$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "toastText":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 323
    .end local v0    # "toastText":Ljava/lang/String;
    :cond_0
    return-void
.end method
