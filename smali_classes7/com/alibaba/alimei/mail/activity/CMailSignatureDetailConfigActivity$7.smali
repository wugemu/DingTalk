.class final Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$7;
.super Ljava/lang/Object;
.source "CMailSignatureDetailConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 725
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 726
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignatureDetailConfigActivity;->finish()V

    .line 727
    return-void
.end method
