.class final Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$1;
.super Ljava/lang/Object;
.source "TeleConfViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V

    .line 60
    return-void
.end method
