.class final Lcwt$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "QuickReplyMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcwt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

.field b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    iput-object p1, p0, Lcwt$a;->b:Landroid/view/View;

    .line 91
    sget v0, Lctk$f;->message_item_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    iput-object v0, p0, Lcwt$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    .line 92
    return-void
.end method
