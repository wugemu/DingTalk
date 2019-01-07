.class final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;
.super Ljava/lang/Object;
.source "MailCommonProtocolUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Laer;

.field final synthetic c:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Laer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->c:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->b:Laer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 282
    packed-switch p2, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->b:Laer;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->b:Laer;

    const-string/jumbo v1, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP"

    invoke-virtual {v0, v1}, Laer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->b:Laer;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l$1;->b:Laer;

    invoke-virtual {v0}, Laer;->d()V

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
