.class public final Lbks;
.super Ljava/lang/Object;
.source "DingNewTabModel.java"


# instance fields
.field public a:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V
    .locals 0
    .param p1, "dingTabIndex"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .param p2, "desResId"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbks;->a:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 16
    iput p2, p0, Lbks;->b:I

    .line 17
    return-void
.end method
