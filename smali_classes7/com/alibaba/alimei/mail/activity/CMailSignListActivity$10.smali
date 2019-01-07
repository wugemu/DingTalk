.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$10;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;I)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$10;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iput p1, v0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->c:I

    .line 234
    return-void
.end method
