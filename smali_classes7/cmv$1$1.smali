.class final Lcmv$1$1;
.super Ljava/lang/Object;
.source "DDPopupWindowManager.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmv$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcmv$1;


# direct methods
.method constructor <init>(Lcmv$1;)V
    .locals 0
    .param p1, "this$1"    # Lcmv$1;

    .prologue
    .line 91
    iput-object p1, p0, Lcmv$1$1;->a:Lcmv$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcmv$1$1;->a:Lcmv$1;

    iget-object v0, v0, Lcmv$1;->a:Lcmv;

    const/4 v1, 0x0

    .line 1026
    iput-object v1, v0, Lcmv;->a:Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject;

    .line 95
    return-void
.end method
