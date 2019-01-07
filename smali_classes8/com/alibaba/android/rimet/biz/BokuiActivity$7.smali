.class final Lcom/alibaba/android/rimet/biz/BokuiActivity$7;
.super Ljava/lang/Object;
.source "BokuiActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/BokuiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/BokuiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/BokuiActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/BokuiActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$7;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "click":Z
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/BokuiActivity$7;->a:Lcom/alibaba/android/rimet/biz/BokuiActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/biz/BokuiActivity;->finish()V

    .line 190
    :cond_0
    return v0
.end method
