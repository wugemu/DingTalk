.class final Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$2;
.super Ljava/lang/Object;
.source "DtSimpleTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$2;->a:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$2;->a:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->c(I)V

    .line 151
    return-void
.end method
