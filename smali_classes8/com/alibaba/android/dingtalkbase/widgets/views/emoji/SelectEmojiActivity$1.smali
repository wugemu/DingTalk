.class final Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$1;
.super Landroid/widget/BaseAdapter;
.source "SelectEmojiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 219
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 220
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 228
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 234
    if-nez p2, :cond_1

    .line 235
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    sget v4, Lcig$h;->layout_select_emoji_item:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 236
    sget v3, Lcig$f;->img:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 237
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    :goto_0
    if-eqz v1, :cond_0

    .line 242
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v3

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 243
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v3

    aget v0, v3, p1

    .line 244
    .local v0, "code":I
    invoke-static {v0}, Lcsy;->a(I)I

    move-result v2

    .line 245
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 246
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .end local v0    # "code":I
    .end local v2    # "resId":I
    :cond_0
    return-object p2

    .line 239
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .restart local v1    # "imageView":Landroid/widget/ImageView;
    goto :goto_0
.end method
