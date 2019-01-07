.class public final Laya$b;
.super Laya$a;
.source "DingMeetingMinutesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Laya$a;-><init>(Landroid/view/View;)V

    .line 104
    sget v0, Laxp$f;->edit_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    iput-object v0, p0, Laya$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    .line 105
    sget v0, Laxp$f;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    iput-object v0, p0, Laya$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    .line 106
    iget-object v0, p0, Laya$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 108
    iget-object v0, p0, Laya$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;

    new-instance v1, Laya$b$1;

    invoke-direct {v1, p0}, Laya$b$1;-><init>(Laya$b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout;->setTouchCallBack(Lcom/alibaba/android/dingtalkbase/widgets/views/TouchDetectionLinearLayout$a;)V

    .line 132
    return-void
.end method

.method static synthetic a(Laya$b;)Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;
    .locals 1
    .param p0, "x0"    # Laya$b;

    .prologue
    .line 97
    iget-object v0, p0, Laya$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 3
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isLast"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 137
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 139
    .local v0, "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    iget-object v1, p0, Laya$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/emoji/EmojiconTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0    # "content":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    :cond_0
    return-void
.end method
