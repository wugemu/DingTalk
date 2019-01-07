.class final Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;
.super Ljava/lang/Object;
.source "AttachmentMailLinkView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 79
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    .line 82
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    iget v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->l:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    iget-object v2, v2, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->e:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    const-class v3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v2, v3}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 87
    .local v0, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    .line 89
    .local v1, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView$1;->a:Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/attachment/AttachmentMailLinkView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V

    goto :goto_0
.end method
