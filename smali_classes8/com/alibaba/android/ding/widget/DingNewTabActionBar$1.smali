.class Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;
.super Ljava/util/ArrayList;
.source "DingNewTabActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lbks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 3
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;->this$0:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v0, Lbks;

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    sget v2, Laxp$i;->dt_ding_filter_new_calendar:I

    invoke-direct {v0, v1, v2}, Lbks;-><init>(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lbks;

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    sget v2, Laxp$i;->dt_ding_filter_ding:I

    invoke-direct {v0, v1, v2}, Lbks;-><init>(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v0, Lbks;

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    sget v2, Laxp$i;->ding_filter_deadline:I

    invoke-direct {v0, v1, v2}, Lbks;-><init>(Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$1;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method
