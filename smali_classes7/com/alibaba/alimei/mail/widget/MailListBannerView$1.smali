.class public final Lcom/alibaba/alimei/mail/widget/MailListBannerView$1;
.super Ljava/lang/Object;
.source "MailListBannerView.java"

# interfaces
.implements Lafa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MailListBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/MailListBannerView;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/widget/MailListBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$1;->a:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lafl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "adses":Ljava/util/List;, "Ljava/util/List<Lafl;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailListBannerView$1;->a:Lcom/alibaba/alimei/mail/widget/MailListBannerView;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/widget/MailListBannerView;->a(Lcom/alibaba/alimei/mail/widget/MailListBannerView;Ljava/util/List;)V

    .line 143
    return-void
.end method
