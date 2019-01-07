.class final Lhez$1;
.super Ljava/lang/Object;
.source "MiniAppListSearchHeaderViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhez;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhez;


# direct methods
.method constructor <init>(Lhez;)V
    .locals 0
    .param p1, "this$0"    # Lhez;

    .prologue
    .line 37
    iput-object p1, p0, Lhez$1;->a:Lhez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->f(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void
.end method
