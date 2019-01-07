.class final Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$1;
.super Ljava/lang/Object;
.source "BlueGuidePopUpWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$1;->a:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$1;->a:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->dismiss()V

    .line 31
    return-void
.end method
