.class final Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;
.super Ljava/lang/Object;
.source "DtSegmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(ILjava/lang/String;IZ)Lcom/alibaba/android/dingtalkui/widget/segment/SegmentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;->b:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    iput p2, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;->a:I

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
    .line 131
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;->b:Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;

    iget v1, p0, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView$1;->a:I

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;->a(Lcom/alibaba/android/dingtalkui/widget/segment/DtSegmentView;I)V

    .line 132
    return-void
.end method
