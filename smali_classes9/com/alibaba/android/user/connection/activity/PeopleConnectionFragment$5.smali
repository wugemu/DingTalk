.class final Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5;
.super Ljava/lang/Object;
.source "PeopleConnectionFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5;->a:Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Z)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isCollapsed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 373
    sget v4, Lezg$h;->ll_tag:I

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 374
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 389
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "tag":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 379
    .local v0, "currentItemPosition":I
    invoke-static {}, Lfcc;->a()I

    move-result v2

    .line 380
    .local v2, "scrollPosition":I
    invoke-static {}, Lfcc;->b()I

    move-result v1

    .line 381
    .local v1, "offset":I
    if-lt v2, v0, :cond_0

    if-gez v1, :cond_0

    .line 382
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5$1;-><init>(Lcom/alibaba/android/user/connection/activity/PeopleConnectionFragment$5;I)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 0
    .param p1, "isCollapsed"    # Z
    .param p2, "visibility"    # I

    .prologue
    .line 394
    return-void
.end method
