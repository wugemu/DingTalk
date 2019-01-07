.class final Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$1;
.super Ljava/lang/Object;
.source "BorderStyleSelectorView.java"

# interfaces
.implements Lbrq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$1;->a:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 71
    if-eqz p2, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView$1;->a:Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;->a(Lcom/alibaba/android/dingtalk/doc/ui/widget/BorderStyleSelectorView;I)V

    .line 74
    :cond_0
    return-void
.end method
