.class final Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow$1;
.super Ljava/lang/Object;
.source "AnnounceGuidePopUpWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow$1;->a:Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow$1;->a:Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->dismiss()V

    .line 34
    return-void
.end method
