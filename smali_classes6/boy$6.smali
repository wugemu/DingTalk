.class final Lboy$6;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Lcqt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lboy;


# direct methods
.method constructor <init>(Lboy;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 342
    iput-object p1, p0, Lboy$6;->a:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 345
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 349
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v2, p0, Lboy$6;->a:Lboy;

    .line 1483
    iget-object v0, v2, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getSendMessageEditText()Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    iget-object v0, v2, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1486
    iget-object v1, v2, Lboy;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    sget v4, Lbpu$d;->tag_item_data:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 1487
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v4, :cond_0

    .line 1488
    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1489
    if-nez v1, :cond_2

    .line 1594
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V

    .line 1495
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lboy;->d()V

    .line 350
    :cond_1
    return-void

    .line 1491
    :cond_2
    instance-of v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-eqz v4, :cond_0

    .line 1492
    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-virtual {v2, v0, v3, v1}, Lboy;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V

    goto :goto_0
.end method
