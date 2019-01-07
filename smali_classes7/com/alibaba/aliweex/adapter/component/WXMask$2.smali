.class Lcom/alibaba/aliweex/adapter/component/WXMask$2;
.super Ljava/lang/Object;
.source "WXMask.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 211
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$2;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$2;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-static {v0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->access$200(Lcom/alibaba/aliweex/adapter/component/WXMask;)V

    .line 215
    return-void
.end method
