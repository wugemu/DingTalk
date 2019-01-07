.class final Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;
.super Ljava/lang/Object;
.source "MailListBannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MailListBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/alimei/mail/widget/MailListBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/MailListBannerView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;->b:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;->b:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->b(Lcom/alibaba/alimei/mail/widget/MailListBannerView;Ljava/util/List;)V

    .line 166
    return-void
.end method
