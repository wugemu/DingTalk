.class final Lfgo$j;
.super Lfgo$l;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;)V
    .locals 3

    .prologue
    .line 785
    iput-object p1, p0, Lfgo$j;->a:Lfgo;

    invoke-direct {p0}, Lfgo$l;-><init>()V

    .line 786
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    sget v1, Lezg$j;->item_friend_request_more:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgo$j;->i:Landroid/view/View;

    .line 787
    iget-object v0, p0, Lfgo$j;->i:Landroid/view/View;

    new-instance v1, Lfgo$j$1;

    invoke-direct {v1, p0, p1}, Lfgo$j$1;-><init>(Lfgo$j;Lfgo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 798
    return-void
.end method


# virtual methods
.method public final a(ILfgm;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "data"    # Lfgm;

    .prologue
    .line 803
    return-void
.end method
