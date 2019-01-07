.class Lcom/alibaba/android/ding/widget/DingFilterManager$1;
.super Ljava/util/ArrayList;
.source "DingFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/alibaba/android/ding/widget/DingFilterManager$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingFilterManager;)V
    .locals 4
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingFilterManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget v3, Laxp$i;->dt_ding_filter_new_calendar:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$a;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget v3, Laxp$i;->dt_ding_filter_ding:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$a;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget v3, Laxp$i;->ding_filter_deadline:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$a;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->MEETING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget v3, Laxp$i;->ding_filter_calendar:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$a;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->FOCUS:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget v3, Laxp$i;->ding_filter_focus:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$a;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$a;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->this$0:Lcom/alibaba/android/ding/widget/DingFilterManager;

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DELETED:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget v3, Laxp$i;->ding_filter_deleted:I

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$a;-><init>(Lcom/alibaba/android/ding/widget/DingFilterManager;Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;I)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/ding/widget/DingFilterManager$1;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
