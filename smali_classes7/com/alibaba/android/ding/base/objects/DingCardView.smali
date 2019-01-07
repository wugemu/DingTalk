.class public abstract Lcom/alibaba/android/ding/base/objects/DingCardView;
.super Landroid/widget/RelativeLayout;
.source "DingCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/base/objects/DingCardView$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;Lcom/alibaba/android/ding/base/objects/DingCardView$a;)V
    .locals 0
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "dingCardContent"    # Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    .param p3, "dingCardCallback"    # Lcom/alibaba/android/ding/base/objects/DingCardView$a;

    .prologue
    .line 41
    return-void
.end method

.method public abstract b()V
.end method
