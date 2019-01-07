.class final Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$2;
.super Ljava/lang/Object;
.source "SelectEmojiActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 253
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v5, 0x2708

    .line 256
    if-ltz p3, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v3

    array-length v3, v3

    if-ge p3, v3, :cond_0

    .line 257
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->a()[I

    move-result-object v3

    aget v0, v3, p3

    .line 260
    .local v0, "code":I
    if-ne v0, v5, :cond_1

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const v5, 0xfe0f

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "emojiText":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "emoji"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->setResult(ILandroid/content/Intent;)V

    .line 268
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/SelectEmojiActivity;->finish()V

    .line 270
    .end local v0    # "code":I
    .end local v1    # "emojiText":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 263
    .restart local v0    # "code":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .restart local v1    # "emojiText":Ljava/lang/String;
    goto :goto_0
.end method
