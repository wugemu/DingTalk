.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$2;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$2;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$2;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->G()V

    .line 1410
    const-string/jumbo v0, "ding_create_cancel_autosave"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$2;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->finish()V

    .line 1394
    return-void
.end method
