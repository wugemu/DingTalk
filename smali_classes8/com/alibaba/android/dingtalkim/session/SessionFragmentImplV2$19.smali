.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$19;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(ZLandroid/widget/TextView;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 951
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$19;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$19;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->w(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->dismiss()V

    .line 955
    return-void
.end method
