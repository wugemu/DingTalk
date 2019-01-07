.class final Lfgo$j$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$j;-><init>(Lfgo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo;

.field final synthetic b:Lfgo$j;


# direct methods
.method constructor <init>(Lfgo$j;Lfgo;)V
    .locals 0
    .param p1, "this$1"    # Lfgo$j;

    .prologue
    .line 787
    iput-object p1, p0, Lfgo$j$1;->b:Lfgo$j;

    iput-object p2, p0, Lfgo$j$1;->a:Lfgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 790
    const-string/jumbo v1, "friend_recommend_add_excolleague_view_all"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lfgo$j$1;->b:Lfgo$j;

    iget-object v1, v1, Lfgo$j;->a:Lfgo;

    invoke-static {v1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string/jumbo v0, "https://h5.dingtalk.com/staff-recall/friend.html"

    .line 795
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lfgo$j$1;->b:Lfgo$j;

    iget-object v2, v2, Lfgo$j;->a:Lfgo;

    invoke-static {v2}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
