.class final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;
.super Ljava/lang/Object;
.source "MailCommonProtocolUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Laer;

.field final synthetic c:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Laer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;->c:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;->b:Laer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 201
    packed-switch p2, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;->b:Laer;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a$1;->b:Laer;

    invoke-virtual {v0}, Laer;->b()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
