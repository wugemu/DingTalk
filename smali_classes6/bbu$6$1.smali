.class final Lbbu$6$1;
.super Ljava/lang/Object;
.source "DingPopWindowCenter.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbu$6;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbu$6;


# direct methods
.method constructor <init>(Lbbu$6;)V
    .locals 0
    .param p1, "this$1"    # Lbbu$6;

    .prologue
    .line 147
    iput-object p1, p0, Lbbu$6$1;->a:Lbbu$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 150
    iget-object v0, p0, Lbbu$6$1;->a:Lbbu$6;

    iget-object v0, v0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbu$6$1;->a:Lbbu$6;

    iget-object v1, v1, Lbbu$6;->c:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->r(Lckm$a;)V

    .line 151
    iget-object v0, p0, Lbbu$6$1;->a:Lbbu$6;

    iget-object v0, v0, Lbbu$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget-object v1, p0, Lbbu$6$1;->a:Lbbu$6;

    iget-object v1, v1, Lbbu$6;->d:Lckm$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->p(Lckm$a;)V

    .line 152
    return-void
.end method
