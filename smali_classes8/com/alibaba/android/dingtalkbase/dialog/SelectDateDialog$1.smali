.class final Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;
.super Ljava/lang/Object;
.source "SelectDateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->c:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->c:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelection(I)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->c:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$1;->c:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->b(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wheelview/WheelView;->setSelection(I)V

    .line 288
    return-void
.end method
