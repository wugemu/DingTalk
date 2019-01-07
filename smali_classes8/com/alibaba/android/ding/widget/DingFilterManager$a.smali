.class public final Lcom/alibaba/android/ding/widget/DingFilterManager$a;
.super Ljava/lang/Object;
.source "DingFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public b:I

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingFilterManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V
    .locals 0
    .param p2, "dingTabIndex"    # Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    .param p3, "desResId"    # I

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->c:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->a:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 315
    iput p3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;->b:I

    .line 316
    return-void
.end method
