.class final Lfgo$a;
.super Lfgo$l;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;)V
    .locals 3

    .prologue
    .line 634
    iput-object p1, p0, Lfgo$a;->a:Lfgo;

    invoke-direct {p0}, Lfgo$l;-><init>()V

    .line 635
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    sget v1, Lezg$j;->item_friend_request_header:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgo$a;->i:Landroid/view/View;

    .line 636
    iget-object v0, p0, Lfgo$a;->i:Landroid/view/View;

    sget v1, Lezg$h;->item_friend_request_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->org_apply:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 637
    iget-object v0, p0, Lfgo$a;->i:Landroid/view/View;

    sget v1, Lezg$h;->item_friend_request_header_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_group_request_notice_desc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 638
    return-void
.end method


# virtual methods
.method public final a(ILfgm;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "data"    # Lfgm;

    .prologue
    .line 643
    return-void
.end method
