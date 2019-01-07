.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 398
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->J:Z

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;Z)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$20;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->h(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
