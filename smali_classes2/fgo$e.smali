.class final Lfgo$e;
.super Lfgo$h;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;)V
    .locals 4

    .prologue
    .line 705
    iput-object p1, p0, Lfgo$e;->a:Lfgo;

    .line 706
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    new-instance v1, Lfgo$e$1;

    invoke-direct {v1, p1}, Lfgo$e$1;-><init>(Lfgo;)V

    .line 720
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-static {p1}, Lfgo;->c(Lfgo;)Ljava/lang/String;

    move-result-object v3

    .line 706
    invoke-direct {p0, v0, v1, v2, v3}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;)V

    .line 721
    return-void
.end method
