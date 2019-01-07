.class final Lfgo$k$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Lfgo$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$k;-><init>(Lfgo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method constructor <init>(Lfgo;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lfgo$k$1;->a:Lfgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 769
    iget-object v0, p0, Lfgo$k$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lfgo$k$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lflt;->a(I)V

    .line 772
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;I)V
    .locals 1
    .param p1, "friendRequestObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lfgo$k$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lfgo$k$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lflt;->a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V

    .line 779
    :cond_0
    return-void
.end method
