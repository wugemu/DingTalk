.class final Lfgo$b;
.super Lfgo$l;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;)V
    .locals 3

    .prologue
    .line 665
    iput-object p1, p0, Lfgo$b;->a:Lfgo;

    invoke-direct {p0}, Lfgo$l;-><init>()V

    .line 666
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    sget v1, Lezg$j;->item_friend_request_more:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lfgo$b;->i:Landroid/view/View;

    .line 667
    iget-object v0, p0, Lfgo$b;->i:Landroid/view/View;

    new-instance v1, Lfgo$b$1;

    invoke-direct {v1, p0, p1}, Lfgo$b$1;-><init>(Lfgo$b;Lfgo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    return-void
.end method


# virtual methods
.method public final a(ILfgm;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "data"    # Lfgm;

    .prologue
    .line 679
    return-void
.end method