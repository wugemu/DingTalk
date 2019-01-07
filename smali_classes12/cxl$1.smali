.class final Lcxl$1;
.super Ljava/lang/Object;
.source "SessionTimeItemHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Lcxl;


# direct methods
.method constructor <init>(Lcxl;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$0"    # Lcxl;

    .prologue
    .line 63
    iput-object p1, p0, Lcxl$1;->b:Lcxl;

    iput-object p2, p0, Lcxl$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v0, p0, Lcxl$1;->b:Lcxl;

    const/4 v1, 0x1

    iget-object v2, p0, Lcxl$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {v0, v1, v2}, Lcxl;->a(Lcxl;ZLcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 67
    return-void
.end method
