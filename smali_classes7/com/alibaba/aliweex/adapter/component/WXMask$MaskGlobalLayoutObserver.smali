.class Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;
.super Ljava/lang/Object;
.source "WXMask.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/aliweex/adapter/component/WXMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MaskGlobalLayoutObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;


# direct methods
.method private constructor <init>(Lcom/alibaba/aliweex/adapter/component/WXMask;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/aliweex/adapter/component/WXMask;Lcom/alibaba/aliweex/adapter/component/WXMask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/aliweex/adapter/component/WXMask;
    .param p2, "x1"    # Lcom/alibaba/aliweex/adapter/component/WXMask$1;

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;-><init>(Lcom/alibaba/aliweex/adapter/component/WXMask;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$MaskGlobalLayoutObserver;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-static {v0}, Lcom/alibaba/aliweex/adapter/component/WXMask;->access$200(Lcom/alibaba/aliweex/adapter/component/WXMask;)V

    .line 383
    return-void
.end method
