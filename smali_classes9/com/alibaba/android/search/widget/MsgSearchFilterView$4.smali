.class final Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;
.super Ljava/lang/Object;
.source "MsgSearchFilterView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/MsgSearchFilterView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    .line 326
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 314
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 315
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterView;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterView$4;->a:Lcom/alibaba/android/search/widget/MsgSearchFilterView;

    invoke-static {v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    .line 319
    :cond_0
    return-void
.end method
