.class final Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;
.super Ljava/lang/Object;
.source "PostCommentActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 215
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 219
    .local v1, "len":I
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;I)I

    .line 222
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_0

    .line 223
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-static {v2, v1}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;I)I

    .line 229
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;->a:Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 207
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 211
    return-void
.end method
