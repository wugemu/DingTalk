.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Landroid/view/View;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$20;->a:Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$a;->onClick(Landroid/content/DialogInterface;I)V

    .line 532
    :cond_0
    return-void
.end method
