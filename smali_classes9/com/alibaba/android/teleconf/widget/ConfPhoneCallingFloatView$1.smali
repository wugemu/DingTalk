.class public final Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView$1;
.super Ljava/lang/Object;
.source "ConfPhoneCallingFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView$1;->a:Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ConfPhoneCallingFloatView;->b()V

    .line 59
    return-void
.end method
