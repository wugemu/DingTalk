.class final Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;
.super Ljava/lang/Object;
.source "AbsHActionLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a(Landroid/view/View;Lafn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafn;

.field final synthetic b:Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;Lafn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;->b:Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;->a:Lafn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;->b:Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a(Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;)Lafo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;->b:Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;->a(Lcom/alibaba/alimei/mail/widget/AbsHActionLayout;)Lafo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/AbsHActionLayout$1;->a:Lafn;

    invoke-interface {v0, v1, p1}, Lafo;->a(Lafn;Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method
