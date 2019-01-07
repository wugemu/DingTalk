.class final Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$4;
.super Ljava/lang/Object;
.source "CMailDistributeLimitOrgEmailsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "es"    # Landroid/text/Editable;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailDistributeLimitOrgEmailsActivity;)V

    .line 90
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 80
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 85
    return-void
.end method
