.class final Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$2;
.super Ljava/lang/Object;
.source "MailSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment$2;->a:Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->j(Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 214
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
