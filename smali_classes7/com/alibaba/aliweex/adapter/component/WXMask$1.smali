.class Lcom/alibaba/aliweex/adapter/component/WXMask$1;
.super Ljava/lang/Object;
.source "WXMask.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/aliweex/adapter/component/WXMask;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;


# direct methods
.method constructor <init>(Lcom/alibaba/aliweex/adapter/component/WXMask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/aliweex/adapter/component/WXMask;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$1;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$1;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->access$000(Lcom/alibaba/aliweex/adapter/component/WXMask;Z)V

    .line 186
    return-void
.end method
