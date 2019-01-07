.class final Lacp$16;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp;


# direct methods
.method constructor <init>(Lacp;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 814
    iput-object p1, p0, Lacp$16;->a:Lacp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 817
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 818
    .local v0, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->h()V

    .line 819
    return-void
.end method
