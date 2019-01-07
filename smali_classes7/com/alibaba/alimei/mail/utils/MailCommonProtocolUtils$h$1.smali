.class final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;
.super Ljava/lang/Object;
.source "MailCommonProtocolUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Laer;

.field final synthetic c:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Laer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->c:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

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
    .line 74
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

    const-string/jumbo v1, "https://alimarket.m.taobao.com/markets/dingtalk/openIMAP_qq"

    invoke-virtual {v0, v1}, Laer;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

    invoke-virtual {v0}, Laer;->a()V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h$1;->b:Laer;

    invoke-virtual {v0}, Laer;->d()V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
