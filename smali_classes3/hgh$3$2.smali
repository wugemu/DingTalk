.class final Lhgh$3$2;
.super Ljava/lang/Object;
.source "KaoQinViewImpl.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgh$3;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgh$3;


# direct methods
.method constructor <init>(Lhgh$3;)V
    .locals 0
    .param p1, "this$1"    # Lhgh$3;

    .prologue
    .line 391
    iput-object p1, p0, Lhgh$3$2;->a:Lhgh$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 394
    iget-object v0, p0, Lhgh$3$2;->a:Lhgh$3;

    iget-object v0, v0, Lhgh$3;->i:Lhgh;

    invoke-static {}, Lhgh;->c()I

    move-result v1

    invoke-static {v0, v1}, Lhgh;->a(Lhgh;I)I

    .line 395
    return-void
.end method
