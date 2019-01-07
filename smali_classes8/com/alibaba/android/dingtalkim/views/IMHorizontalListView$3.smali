.class final Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$3;
.super Ljava/lang/Object;
.source "IMHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$3;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView$3;->a:Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/IMHorizontalListView;->requestLayout()V

    .line 622
    return-void
.end method
