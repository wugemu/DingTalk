.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;
.super Ljava/lang/Object;
.source "AnnounceEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Z)Z

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->supportInvalidateOptionsMenu()V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Z)Z

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 114
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;->a(Lcom/alibaba/android/dingtalkim/activities/AnnounceEditActivity;Z)Z

    .line 119
    return-void
.end method
