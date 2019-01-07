.class final Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;
.super Ljava/lang/Object;
.source "AbstractButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setStyle(Ledd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ledd;

.field final synthetic b:Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;Ledd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;->b:Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;->a:Ledd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 136
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;->b:Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 137
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;->a:Ledd;

    invoke-virtual {v1}, Ledd;->d()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;->a:Ledd;

    invoke-virtual {v1}, Ledd;->e()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton$1;->b:Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method
