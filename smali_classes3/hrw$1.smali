.class public final Lhrw$1;
.super Ljava/lang/Object;
.source "PopupDropListManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhrw;


# direct methods
.method public constructor <init>(Lhrw;)V
    .locals 0
    .param p1, "this$0"    # Lhrw;

    .prologue
    .line 66
    iput-object p1, p0, Lhrw$1;->a:Lhrw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lhrw$1;->a:Lhrw;

    invoke-static {v0}, Lhrw;->a(Lhrw;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lhrw$1;->a:Lhrw;

    invoke-static {v0}, Lhrw;->a(Lhrw;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 72
    :cond_0
    return-void
.end method
