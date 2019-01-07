.class public abstract Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.super Landroid/widget/LinearLayout;
.source "BaseAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;,
        Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;,
        Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    }
.end annotation


# instance fields
.field protected f:Landroid/app/Activity;

.field protected g:Landroid/view/View;

.field protected h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

.field protected i:J

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->l:I

    move-object v0, p1

    .line 35
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->f:Landroid/app/Activity;

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->c(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->l:I

    move-object v0, p1

    .line 41
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->f:Landroid/app/Activity;

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->c(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->l:I

    move-object v0, p1

    .line 47
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->f:Landroid/app/Activity;

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->c(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->a(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->b(Landroid/content/Context;)V

    .line 64
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method public abstract a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V
.end method

.method public b()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method public c()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected abstract getLayoutId()I
.end method

.method public setAttachBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    :cond_0
    return-void
.end method

.method public setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 74
    return-void
.end method

.method public setChooseMode(I)V
    .locals 0
    .param p1, "chooseMode"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->l:I

    .line 31
    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->k:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setDingId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dingId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->j:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public abstract setParentListView(Landroid/widget/ListView;)V
.end method

.method public setSendId(J)V
    .locals 1
    .param p1, "sendId"    # J

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->i:J

    .line 89
    return-void
.end method
