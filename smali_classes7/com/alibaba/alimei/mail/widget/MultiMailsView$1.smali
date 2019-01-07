.class final Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;
.super Ljava/lang/Object;
.source "MultiMailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MultiMailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/widget/MultiMailsView;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/MultiMailsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/MultiMailsView;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;->a:Lcom/alibaba/alimei/mail/widget/MultiMailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1515
    const-string/jumbo v0, "mail_index_add_account_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacg;->b(Landroid/content/Context;)V

    .line 255
    return-void
.end method
