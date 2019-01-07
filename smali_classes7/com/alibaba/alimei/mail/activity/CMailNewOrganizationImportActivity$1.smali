.class final Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$1;
.super Ljava/lang/Object;
.source "CMailNewOrganizationImportActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailNewOrganizationImportActivity;

    invoke-static {v0, p1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 64
    :cond_0
    return-void
.end method
