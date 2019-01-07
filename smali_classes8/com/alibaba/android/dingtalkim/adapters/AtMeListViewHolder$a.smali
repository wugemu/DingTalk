.class public final Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;
.super Ljava/lang/Object;
.source "AtMeListViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Z

.field final synthetic e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->d:Z

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 182
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    check-cast p1, Lckl;

    .line 1163
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->d:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->a:Ljava/lang/String;

    .line 2055
    iget-object v1, p1, Lckl;->a:Ljava/lang/String;

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->b:J

    .line 2059
    iget-wide v2, p1, Lckl;->b:J

    .line 1167
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->c:J

    .line 2063
    iget-wide v2, p1, Lckl;->c:J

    .line 1168
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->a(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    .line 3039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1170
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->b(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder$a;->e:Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;->b(Lcom/alibaba/android/dingtalkim/adapters/AtMeListViewHolder;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    .line 4039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1173
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
