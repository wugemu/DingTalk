.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$18;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$18;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 0
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 1736
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1719
    check-cast p1, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;

    .line 2722
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$18;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2725
    if-eqz p1, :cond_0

    .line 2727
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/model/ImageCheckCodeModel;->getImgBase64()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2728
    invoke-static {v0}, Lcnx;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2729
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$18;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->u(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1719
    :cond_0
    return-void
.end method
