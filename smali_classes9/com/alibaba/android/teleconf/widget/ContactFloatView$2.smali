.class public final Lcom/alibaba/android/teleconf/widget/ContactFloatView$2;
.super Ljava/lang/Object;
.source "ContactFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/ContactFloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/ContactFloatView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/ContactFloatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$2;->a:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ContactFloatView$2;->a:Lcom/alibaba/android/teleconf/widget/ContactFloatView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/ContactFloatView;->b()V

    .line 161
    return-void
.end method
