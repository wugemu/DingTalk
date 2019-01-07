.class final Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;
.super Ljava/lang/Object;
.source "MsgSearchFilterFlatView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    iput-object p2, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 402
    packed-switch p2, :pswitch_data_0

    .line 416
    const-string/jumbo v0, ""

    .line 420
    .local v0, "hint":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v1, v0}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {v1}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->b(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;)Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/search/base/IMsgSearchFilterView$c;->a()V

    .line 425
    :cond_0
    return-void

    .line 404
    .end local v0    # "hint":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->c()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;J)J

    .line 405
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->a:Landroid/app/Activity;

    sget v2, Lemt$g;->dt_search_msg_within_one_week:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    .restart local v0    # "hint":Ljava/lang/String;
    goto :goto_0

    .line 408
    .end local v0    # "hint":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->d()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;J)J

    .line 409
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->a:Landroid/app/Activity;

    sget v2, Lemt$g;->dt_search_msg_within_one_month:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0    # "hint":Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v0    # "hint":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->b:Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;

    invoke-static {}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->e()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;->a(Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView;J)J

    .line 413
    iget-object v1, p0, Lcom/alibaba/android/search/widget/MsgSearchFilterFlatView$4;->a:Landroid/app/Activity;

    sget v2, Lemt$g;->dt_search_msg_within_three_month:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .restart local v0    # "hint":Ljava/lang/String;
    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
