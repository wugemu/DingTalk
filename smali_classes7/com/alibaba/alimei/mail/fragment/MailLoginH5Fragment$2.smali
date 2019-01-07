.class final Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$2;
.super Ljava/lang/Object;
.source "MailLoginH5Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailLoginH5Fragment;->c(Z)V

    .line 238
    return-void
.end method
