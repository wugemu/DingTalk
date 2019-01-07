.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;
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
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->c:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->a:[Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->c:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    iget v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->b:I

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$9;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;ILjava/lang/String;)V

    .line 1152
    :cond_0
    return-void
.end method
