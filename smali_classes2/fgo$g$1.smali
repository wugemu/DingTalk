.class final Lfgo$g$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$g;-><init>(Lfgo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo;

.field final synthetic b:Lfgo$g;


# direct methods
.method constructor <init>(Lfgo$g;Lfgo;)V
    .locals 0
    .param p1, "this$1"    # Lfgo$g;

    .prologue
    .line 650
    iput-object p1, p0, Lfgo$g$1;->b:Lfgo$g;

    iput-object p2, p0, Lfgo$g$1;->a:Lfgo;

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
    .line 653
    iget-object v0, p0, Lfgo$g$1;->b:Lfgo$g;

    iget-object v0, v0, Lfgo$g;->a:Lfgo;

    invoke-static {v0}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lfgo$g$1;->b:Lfgo$g;

    iget-object v2, v2, Lfgo$g;->a:Lfgo;

    invoke-static {v2}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->startActivity(Landroid/content/Intent;)V

    .line 654
    return-void
.end method
