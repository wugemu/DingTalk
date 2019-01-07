.class public final Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;
.super Lbzd;
.source "DingTabLayoutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;Ljava/util/List;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->b:Ljava/util/List;

    iput-wide p4, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->c:J

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->d:Lcom/alibaba/android/ding/widget/DingTabLayoutView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->b:Ljava/util/List;

    iget-wide v4, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$6;->c:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/alibaba/android/ding/widget/DingTabLayoutView;->a(Lcom/alibaba/android/ding/widget/DingTabLayoutView;Ljava/lang/String;Ljava/util/List;J)V

    .line 390
    return-void
.end method
