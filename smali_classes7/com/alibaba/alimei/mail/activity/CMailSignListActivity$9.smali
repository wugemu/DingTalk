.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$9;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    .line 217
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$9;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v0, 0x1

    .line 220
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$9;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iput-boolean v0, v1, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a:Z

    .line 221
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$9;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iget v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->c:I

    if-ne v1, p3, :cond_0

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
