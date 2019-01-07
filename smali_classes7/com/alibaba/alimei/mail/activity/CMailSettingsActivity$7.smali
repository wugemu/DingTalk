.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$7;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$7;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;I)V

    .line 1082
    return-void
.end method
